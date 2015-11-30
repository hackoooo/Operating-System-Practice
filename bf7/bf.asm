org 07c00h
	[BITS 16]

START:
	mov ax,cs
	mov ds,ax
	mov es,ax

	;拷贝软盘中的代码到内存区
COPY:
	mov bx,	COPY_CODE_START	;07c00h + 512(0100h) == 07e00h
	mov dl,0		;驱动器号，软驱从0开始：0：软驱A,1：软驱B
				    ;磁盘从80h开始，80h:C盘，81h:D盘
	mov dh,0		;磁头号，对于软盘即面号，一个面用一个磁头来读写
	mov ch,0		;磁道号
	mov cl,2		;扇区号
	mov al,0x0a		;读取的扇区数
	mov ah,2 		;13h的功能号（2表示读扇区）,es:bx指向
					;接收从扇区读入数据的内存区
	int 13h
	jc COPY         ;读取失败，CF表示为1，重试读取	

	jmp LABEL_BEGIN ;把程序读到内存区后，跳转到新的执行点
	
	;补全512字节
	times 510-($-$$) db 0
	dw 0xaa55

COPY_CODE_START:

%include "inc.asm"


PageDirBase0		equ	200000h	; 页目录开始地址:	2M
PageTblBase0		equ	201000h	; 页表开始地址:		2M +  4K
PageDirBase1		equ	210000h	; 页目录开始地址:	2M + 64K
PageTblBase1		equ	211000h	; 页表开始地址:		2M + 64K + 4K

LinearAddrDemo	equ	00401000h
ProcFoo		equ	00401000h
ProcBar		equ	00501000h
ProcPagingDemo	equ	00301000h

[SECTION .gdt]
; GDT
;                            段基址,        段界限 , 属性
LABEL_GDT:         Descriptor    0,              0, 0         ; 空描述符
LABEL_DESC_NORMAL: Descriptor    0,         0ffffh, DA_DRW    ; Normal 描述符
LABEL_DESC_CODE32: Descriptor    0, SegCode32Len-1, DA_C+DA_32; 非一致代码段, 32
LABEL_DESC_CODE_DEST: Descriptor 0,SegCodeDestLen-1, DA_C+DA_32; 非一致代码段,32
LABEL_DESC_DATA:   Descriptor    0,      DataLen-1, DA_DRW+DA_DPL1    ; Data
LABEL_DESC_STACK:  Descriptor    0,     TopOfStack, DA_DRWA+DA_32; Stack, 32 位
LABEL_DESC_VIDEO:  Descriptor  0B8000h,     0ffffh, DA_DRW+DA_DPL3    ; 显存首地址

LABEL_DESC_CODE_RING3: Descriptor 0, SegCodeRing3Len-1, DA_C+DA_32+DA_DPL3
LABEL_DESC_STACK3:     Descriptor 0,       TopOfStack3, DA_DRWA+DA_32+DA_DPL3
LABEL_DESC_TSS:        Descriptor 0,          TSSLen-1, DA_386TSS	   ;TSS



; 门                               目标选择子,偏移,DCount, 属性
;LABEL_CALL_GATE_TEST: Gate SelectorCodeDest,   0,     0, DA_386CGate+DA_DPL0
LABEL_CALL_GATE_TEST:	Gate		  SelectorCodeDest,          0,      0, DA_386CGate + DA_DPL3

;分页
LABEL_DESC_FLAT_C:  Descriptor 0,        0fffffh, DA_CR|DA_32|DA_LIMIT_4K; 0~4G
LABEL_DESC_FLAT_RW: Descriptor 0,        0fffffh, DA_DRW|DA_LIMIT_4K     ; 0~4G

LABEL_DESC_CODE_DATA:   Descriptor    0,      CodeDataLen-1, DA_DRW    ; 代码拷贝

; GDT 结束

GdtLen		equ	$ - LABEL_GDT	; GDT长度
GdtPtr		dw	GdtLen - 1	; GDT界限
		dd	0		; GDT基地址

; GDT 选择子
SelectorNormal		equ	LABEL_DESC_NORMAL	- LABEL_GDT
SelectorCode32		equ	LABEL_DESC_CODE32	- LABEL_GDT
SelectorCodeDest	equ	LABEL_DESC_CODE_DEST	- LABEL_GDT
SelectorData		equ	LABEL_DESC_DATA		- LABEL_GDT
SelectorStack		equ	LABEL_DESC_STACK	- LABEL_GDT
SelectorVideo		equ	LABEL_DESC_VIDEO	- LABEL_GDT
SelectorCallGateTest	equ	LABEL_CALL_GATE_TEST	- LABEL_GDT

SelectorCodeRing3	equ	LABEL_DESC_CODE_RING3	- LABEL_GDT + SA_RPL3
SelectorStack3		equ	LABEL_DESC_STACK3	- LABEL_GDT + SA_RPL3
SelectorTSS		equ	LABEL_DESC_TSS		- LABEL_GDT

SelectorFlatC		equ	LABEL_DESC_FLAT_C	- LABEL_GDT
SelectorFlatRW		equ	LABEL_DESC_FLAT_RW	- LABEL_GDT
SelectorCodeData	equ	LABEL_DESC_CODE_DATA	- LABEL_GDT

; END of [SECTION .gdt]

[SECTION .data1]	 ; 数据段
ALIGN	32
[BITS	32]
LABEL_DATA:
; 字符串
PMMessage:		db	"In Protect Mode now. ^-^", 0	; 在保护模式中显示
OffsetPMMessage		equ	PMMessage - $$

_szPMMessage:			db	"In Protect Mode now. ^-^ =_= - -", 0Ah, 0Ah, 0	; 进入保护模式后显示此字符串
_szMemChkTitle:			db	"BaseAddrL BaseAddrH LengthLow LengthHigh   Type", 0Ah, 0	; 进入保护模式后显示此字符串
_szRAMSize			db	"RAM size:", 0
_szReturn			db	0Ah, 0
; 变量
_wSPValueInRealMode		dw	0
_dwMCRNumber:			dd	0	; Memory Check Result
_dwDispPos:			dd	(80 * 6 + 0) * 2	; 屏幕第 6 行, 第 0 列。
_dwMemSize:			dd	0
_ARDStruct:			; Address Range Descriptor Structure
	_dwBaseAddrLow:		dd	0
	_dwBaseAddrHigh:	dd	0
	_dwLengthLow:		dd	0
	_dwLengthHigh:		dd	0
	_dwType:		dd	0
_PageTableNumber		dd	0

_MemChkBuf:	times	256	db	0

; 保护模式下使用这些符号
szPMMessage		equ	_szPMMessage	- $$
szMemChkTitle		equ	_szMemChkTitle	- $$
szRAMSize		equ	_szRAMSize	- $$
szReturn		equ	_szReturn	- $$
dwDispPos		equ	_dwDispPos	- $$
dwMemSize		equ	_dwMemSize	- $$
dwMCRNumber		equ	_dwMCRNumber	- $$;多少块内存描述
ARDStruct		equ	_ARDStruct	- $$
	dwBaseAddrLow	equ	_dwBaseAddrLow	- $$
	dwBaseAddrHigh	equ	_dwBaseAddrHigh	- $$
	dwLengthLow	equ	_dwLengthLow	- $$
	dwLengthHigh	equ	_dwLengthHigh	- $$
	dwType		equ	_dwType		- $$
PageTableNumber		equ	_PageTableNumber- $$
MemChkBuf		equ	_MemChkBuf	- $$

DataLen			equ	$ - LABEL_DATA
; END of [SECTION .data1]

[SECTION .data2]	 ; 数据段
ALIGN	32
[BITS	32]
LABEL_CODE_DATA: 

PagingDemoProc:
OffsetPagingDemoProc	equ	PagingDemoProc - $$
	mov	eax, LinearAddrDemo
	call	eax
	retf
LenPagingDemoAll	equ	$ - PagingDemoProc

foo:
OffsetFoo		equ	foo - $$
	mov	ah, 0Ch			; 0000: 黑底    1100: 红字
	mov	al, 'F'
	mov	[gs:((80 * 17 + 0) * 2)], ax	; 屏幕第 17 行, 第 0 列。
	mov	al, 'o'
	mov	[gs:((80 * 17 + 1) * 2)], ax	; 屏幕第 17 行, 第 1 列。
	mov	[gs:((80 * 17 + 2) * 2)], ax	; 屏幕第 17 行, 第 2 列。
	ret
LenFoo			equ	$ - foo

bar:
OffsetBar		equ	bar - $$
	mov	ah, 0Ch			; 0000: 黑底    1100: 红字
	mov	al, 'B'
	mov	[gs:((80 * 18 + 0) * 2)], ax	; 屏幕第 18 行, 第 0 列。
	mov	al, 'a'
	mov	[gs:((80 * 18 + 1) * 2)], ax	; 屏幕第 18 行, 第 1 列。
	mov	al, 'r'
	mov	[gs:((80 * 18 + 2) * 2)], ax	; 屏幕第 18 行, 第 2 列。
	ret
LenBar			equ	$ - bar

CodeDataLen			equ	$ - LABEL_CODE_DATA
; END of [SECTION .data2]

; 全局堆栈段
[SECTION .gs]
ALIGN	32
[BITS	32]
LABEL_STACK:
	times 512 db 0

TopOfStack	equ	$ - LABEL_STACK - 1

; END of [SECTION .gs]

; 堆栈段ring3
[SECTION .s3]
ALIGN	32
[BITS	32]
LABEL_STACK3:
	times 512 db 0
TopOfStack3	equ	$ - LABEL_STACK3 - 1
; END of [SECTION .s3]


; TSS ---------------------------------------------------------------------------------------------
[SECTION .tss]
ALIGN	32
[BITS	32]
LABEL_TSS:
		DD	0			; Back
		DD	TopOfStack		; 0 级堆栈
		DD	SelectorStack		; 
		DD	0			; 1 级堆栈
		DD	0			; 
		DD	0			; 2 级堆栈
		DD	0			; 
		DD	0			; CR3
		DD	0			; EIP
		DD	0			; EFLAGS
		DD	0			; EAX
		DD	0			; ECX
		DD	0			; EDX
		DD	0			; EBX
		DD	0			; ESP
		DD	0			; EBP
		DD	0			; ESI
		DD	0			; EDI
		DD	0			; ES
		DD	0			; CS
		DD	0			; SS
		DD	0			; DS
		DD	0			; FS
		DD	0			; GS
		DD	0			; LDT
		DW	0			; 调试陷阱标志
		DW	$ - LABEL_TSS + 2	; I/O位图基址
		DB	0ffh			; I/O位图结束标志
TSSLen		equ	$ - LABEL_TSS
; TSS ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


[SECTION .s16]
[BITS	16]
LABEL_BEGIN:
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax


	; 得到内存数
	mov	ebx, 0
	mov	di, _MemChkBuf
	.loop:
	mov	eax, 0E820h
	mov	ecx, 20
	mov	edx, 0534D4150h
	int	15h
	jc	LABEL_MEM_CHK_FAIL
	add	di, 20
	inc	dword [_dwMCRNumber]
	cmp	ebx, 0
	jne	.loop
	jmp	LABEL_MEM_CHK_OK
	LABEL_MEM_CHK_FAIL:
		mov	dword [_dwMCRNumber], 0
	LABEL_MEM_CHK_OK:

	; 初始化 32 位代码段描述符
	InitCodeDescriptor LABEL_SEG_CODE32,LABEL_DESC_CODE32

	; 初始化数据段描述符
	InitDataDescriptor LABEL_DATA,LABEL_DESC_DATA

	; 初始化堆栈段描述符
	InitDataDescriptor LABEL_STACK,LABEL_DESC_STACK

	; 初始化堆栈段描述符(ring3)
	InitDataDescriptor LABEL_STACK3,LABEL_DESC_STACK3

	; 初始化Ring3描述符
	InitDataDescriptor LABEL_CODE_RING3,LABEL_DESC_CODE_RING3

	; 初始化 TSS 描述符
	InitDataDescriptor LABEL_TSS,LABEL_DESC_TSS

	; 初始化测试调用门的代码段描述符
	InitCodeDescriptor LABEL_SEG_CODE_DEST,LABEL_DESC_CODE_DEST

	; 初始化数据段描述符
	InitDataDescriptor LABEL_CODE_DATA,LABEL_DESC_CODE_DATA

	; 为加载 GDTR 作准备
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax, LABEL_GDT		; eax <- gdt 基地址
	mov	dword [GdtPtr + 2], eax	; [GdtPtr + 2] <- gdt 基地址

	; 加载 GDTR
	lgdt	[GdtPtr]

	; 关中断
	cli

	; 打开地址线A20
	in	al, 92h
	or	al, 00000010b
	out	92h, al

	; 准备切换到保护模式
	mov	eax, cr0
	or	eax, 1
	mov	cr0, eax

	; 真正进入保护模式
	jmp	dword SelectorCode32:0	; 执行这一句会把 SelectorCode32 装入 cs, 并跳转到 Code32Selector:0  处


[SECTION .s32]; 32 位代码段. 由实模式跳入.
[BITS	32]

LABEL_SEG_CODE32:
	mov	ax, SelectorData
	mov	ds, ax			; 数据段选择子
	mov	es, ax
	mov	ax, SelectorVideo
	mov	gs, ax			; 视频段选择子

	mov	ax, SelectorStack
	mov	ss, ax			; 堆栈段选择子

	mov	esp, TopOfStack


	; 下面显示一个字符串
	mov	ah, 0Ch			; 0000: 黑底    1100: 红字
	xor	esi, esi
	xor	edi, edi
	mov	esi, OffsetPMMessage	; 源数据偏移
	mov	edi, (80 * 10 + 0) * 2	; 目的数据偏移。屏幕第 10 行, 第 0 列。
	cld
.1:
	lodsb
	test	al, al
	jz	.2
	mov	[gs:edi], ax
	add	edi, 2
	jmp	.1
.2:	; 显示完毕

	;清屏
	push edi
	mov edi,0
	mov cx,4000
	mov al,0
	cld
.clear: 
	mov [gs:edi],ax
	add edi, 2
	loop .clear
	pop edi

	; 下面显示一个字符串
	push	szPMMessage
	call	DispStr
	add	esp, 4
	
	push	szMemChkTitle
	call	DispStr
	add	esp, 4

	call	DispReturn


	call	DispMemSize		; 显示内存信息


	call	PagingDemo		; 演示改变页目录的效果

	; Load TSS
	mov	ax, SelectorTSS
	ltr	ax	; 在任务内发生特权级变换时要切换堆栈，而内层堆栈的指针存放在当前任务的TSS中，所以要设置任务状态段寄存器 TR。

	push	SelectorStack3
	push	TopOfStack3
	push	SelectorCodeRing3
	push	0
	retf		; Ring0 -> Ring3，历史性转移！将打印数字 '3'。

	; 测试调用门（无特权级变换），将打印字母 'C'
	;call	SelectorCallGateTest:0
	;call	SelectorCodeDest:0
	;jmp $


; 启动分页机制 --------------------------------------------------------------
SetupPaging:
	; 根据内存大小计算应初始化多少PDE以及多少页表
	xor	edx, edx
	mov	eax, [dwMemSize]
	mov	ebx, 400000h	; 400000h = 4M = 4096 * 1024, 一个页表对应的内存大小
	div	ebx
	mov	ecx, eax	; 此时 ecx 为页表的个数，也即 PDE 应该的个数
	test	edx, edx
	jz	.no_remainder
	inc	ecx		; 如果余数不为 0 就需增加一个页表
.no_remainder:
	mov	[PageTableNumber], ecx	; 暂存页表个数

	; 为简化处理, 所有线性地址对应相等的物理地址. 并且不考虑内存空洞.

	; 首先初始化页目录
	mov	ax, SelectorFlatRW
	mov	es, ax
	mov	edi, PageDirBase0	; 此段首地址为 PageDirBase0
	xor	eax, eax
	mov	eax, PageTblBase0 | PG_P  | PG_USU | PG_RWW
.1:
	stosd
	add	eax, 4096		; 为了简化, 所有页表在内存中是连续的.
	loop	.1

	; 再初始化所有页表
	mov	eax, [PageTableNumber]	; 页表个数
	mov	ebx, 1024		; 每个页表 1024 个 PTE
	mul	ebx
	mov	ecx, eax		; PTE个数 = 页表个数 * 1024
	mov	edi, PageTblBase0	; 此段首地址为 PageTblBase0
	xor	eax, eax
	mov	eax, PG_P  | PG_USU | PG_RWW
.2:
	stosd
	add	eax, 4096		; 每一页指向 4K 的空间
	loop	.2

	mov	eax, PageDirBase0
	mov	cr3, eax
	mov	eax, cr0
	or	eax, 80000000h
	mov	cr0, eax
	jmp	short .3
.3:
	nop

	ret
; 分页机制启动完毕 ----------------------------------------------------------


; 测试分页机制 --------------------------------------------------------------
PagingDemo:
	mov	ax, SelectorCodeData
	mov	ds, ax
	mov	ax, SelectorFlatRW
	mov	es, ax

	push	LenFoo
	push	OffsetFoo
	push	ProcFoo
	call	MemCpy
	add	esp, 12

	push	LenBar
	push	OffsetBar
	push	ProcBar
	call	MemCpy
	add	esp, 12

	push	LenPagingDemoAll
	push	OffsetPagingDemoProc
	push	ProcPagingDemo
	call	MemCpy
	add	esp, 12

	mov	ax, SelectorData
	mov	ds, ax			; 数据段选择子
	mov	es, ax

	call	SetupPaging		; 启动分页

	call	SelectorFlatC:ProcPagingDemo
	call	PSwitch			; 切换页目录，改变地址映射关系
	call	SelectorFlatC:ProcPagingDemo

	ret
; ---------------------------------------------------------------------------


; 切换页表 ------------------------------------------------------------------
PSwitch:
	; 初始化页目录
	mov	ax, SelectorFlatRW
	mov	es, ax
	mov	edi, PageDirBase1	; 此段首地址为 PageDirBase1
	xor	eax, eax
	mov	eax, PageTblBase1 | PG_P  | PG_USU | PG_RWW
	mov	ecx, [PageTableNumber]
.1:
	stosd
	add	eax, 4096		; 为了简化, 所有页表在内存中是连续的.
	loop	.1

	; 再初始化所有页表
	mov	eax, [PageTableNumber]	; 页表个数
	mov	ebx, 1024		; 每个页表 1024 个 PTE
	mul	ebx
	mov	ecx, eax		; PTE个数 = 页表个数 * 1024
	mov	edi, PageTblBase1	; 此段首地址为 PageTblBase1
	xor	eax, eax
	mov	eax, PG_P  | PG_USU | PG_RWW
.2:
	stosd
	add	eax, 4096		; 每一页指向 4K 的空间
	loop	.2

	; 在此假设内存是大于 8M 的
	mov	eax, LinearAddrDemo
	shr	eax, 22
	mov	ebx, 4096
	mul	ebx
	mov	ecx, eax
	mov	eax, LinearAddrDemo
	shr	eax, 12
	and	eax, 03FFh	; 1111111111b (10 bits)
	mov	ebx, 4
	mul	ebx
	add	eax, ecx
	add	eax, PageTblBase1
	mov	dword [es:eax], ProcBar | PG_P | PG_USU | PG_RWW

	mov	eax, PageDirBase1
	mov	cr3, eax
	jmp	short .3
.3:
	nop

	ret
; ---------------------------------------------------------------------------




; 显示内存信息 --------------------------------------------------------------
DispMemSize:
	push	esi
	push	edi
	push	ecx

	mov	esi, MemChkBuf
	mov	ecx, [dwMCRNumber]	;for(int i=0;i<[MCRNumber];i++) // 每次得到一个ARDS(Address Range Descriptor Structure)结构
.loop:					;{
	mov	edx, 5			;	for(int j=0;j<5;j++)	// 每次得到一个ARDS中的成员，共5个成员
	mov	edi, ARDStruct		;	{			// 依次显示：BaseAddrLow，BaseAddrHigh，LengthLow，LengthHigh，Type
.1:					;
	push	dword [esi]		;
	call	DispInt			;		DispInt(MemChkBuf[j*4]); // 显示一个成员
	pop	eax			;
	stosd				;		ARDStruct[j*4] = MemChkBuf[j*4];
	add	esi, 4			;
	dec	edx			;
	cmp	edx, 0			;
	jnz	.1			;	}
	call	DispReturn		;	printf("\n");
	cmp	dword [dwType], 1	;	if(Type == AddressRangeMemory) // AddressRangeMemory : 1, AddressRangeReserved : 2
	jne	.2			;	{
	mov	eax, [dwBaseAddrLow]	;
	add	eax, [dwLengthLow]	;
	cmp	eax, [dwMemSize]	;		if(BaseAddrLow + LengthLow > MemSize)
	jb	.2			;
	mov	[dwMemSize], eax	;			MemSize = BaseAddrLow + LengthLow;
.2:					;	}
	loop	.loop			;}
					;
	call	DispReturn		;printf("\n");
	push	szRAMSize		;
	call	DispStr			;printf("RAM size:");
	add	esp, 4			;
					;
	push	dword [dwMemSize]	;
	call	DispInt			;DispInt(MemSize);
	add	esp, 4			;

	pop	ecx
	pop	edi
	pop	esi
	ret
; ---------------------------------------------------------------------------

%include "lib.inc"

SegCode32Len	equ	$ - LABEL_SEG_CODE32
; END of [SECTION .s32]

[SECTION .sdest]; 调用门目标段
[BITS	32]

LABEL_SEG_CODE_DEST:
;mov	ax, SelectorVideo
;mov	gs, ax			; 视频段选择子(目的)
;
;mov	edi, (80 * 12 + 0) * 2	; 屏幕第 12 行, 第 0 列。
;mov	ah, 0Ch			; 0000: 黑底    1100: 红字
;mov	al, 'C'
;mov	[gs:edi], ax

	retf

SegCodeDestLen	equ	$ - LABEL_SEG_CODE_DEST
; END of [SECTION .sdest]



; CodeRing3
[SECTION .ring3]
ALIGN	32
[BITS	32]
LABEL_CODE_RING3:
;mov	ax, SelectorVideo
;mov	gs, ax			; 视频段选择子(目的)
;
;mov	edi, (80 * 14 + 0) * 2	; 屏幕第 14 行, 第 0 列。
;mov	ah, 0Ch			; 0000: 黑底    1100: 红字
;mov	al, '3'
;mov	[gs:edi], ax

	call	SelectorCallGateTest:0	; 测试调用门（有特权级变换），将打印字母 'C'。
	jmp	$
SegCodeRing3Len	equ	$ - LABEL_CODE_RING3
; END of [SECTION .ring3]
