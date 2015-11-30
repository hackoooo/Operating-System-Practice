;这个宏用来填充gdt描述符的，每个描述符8个字节，64位。
;参数1:段基址，32位
;参数2:段大小limit,传32位，只用其低20位。
;参数3:段属性，16位，只用高4位与低8位，中间4位为0。
%macro Descriptor 3
        dw %2 & 0FFFFh
        dw %1 & 0FFFFh
        db (%1 >> 16) & 0FFh
        dw ((%2 >> 8) & 0F00h) | (%3 & 0F0FFh)
        db (%1 >> 24) & 0FFh
%endmacro

;段属性的常量，具体参考《Orange's 一个操作系统的实现》
DA_32   equ     4000h
DA_LIMIT_4K	EQU	8000h	; 段界限粒度为 4K 字节

DA_DPL0 equ     00h
DA_DPL1 equ     20h
DA_DPL2 equ     40h
DA_DPL3 equ     60h

DA_DR   equ     90h
DA_DRW  equ     92h
DA_DRWA equ     93h
DA_C    equ     98h
DA_CR   equ     9ah
DA_CCO  equ     9ch
DA_CCOR equ     9eh

DA_LDT  equ     82h
DA_TaskGate     equ     85h
DA_386TSS       equ     89h
DA_386CGate     equ     8ch
DA_386IGate     equ     8eh
DA_386TGate     equ     8fh
;----------------------------------------------------------------------------
; 选择子类型值说明
; 其中:
;       SA_  : Selector Attribute

SA_RPL0		EQU	0	; ┓
SA_RPL1		EQU	1	; ┣ RPL
SA_RPL2		EQU	2	; ┃
SA_RPL3		EQU	3	; ┛

SA_TIG		EQU	0	; ┓TI
SA_TIL		EQU	4	; ┛
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
; 分页机制使用的常量说明
;----------------------------------------------------------------------------
PG_P		EQU	1	; 页存在属性位
PG_RWR		EQU	0	; R/W 属性位值, 读/执行
PG_RWW		EQU	2	; R/W 属性位值, 读/写/执行
PG_USS		EQU	0	; U/S 属性位值, 系统级
PG_USU		EQU	4	; U/S 属性位值, 用户级
;----------------------------------------------------------------------------

; 门
; usage: Gate Selector, Offset, DCount, Attr
;        Selector:  dw
;        Offset:    dd
;        DCount:    db
;        Attr:      db
%macro Gate 4
	dw	(%2 & 0FFFFh)				; 偏移 1				(2 字节)
	dw	%1					; 选择子				(2 字节)
	dw	(%3 & 1Fh) | ((%4 << 8) & 0FF00h)	; 属性					(2 字节)
	dw	((%2 >> 16) & 0FFFFh)			; 偏移 2				(2 字节)
%endmacro ; 共 8 字节


;初始化数据段描述符
; usage: InitDescriptor Label,Descriptor
%macro InitDataDescriptor 2
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax, %1
	mov	word [%2 + 2], ax
	shr	eax, 16
	mov	byte [%2 + 4], al
	mov	byte [%2 + 7], ah
%endmacro
;初始化代码段描述符
; usage: InitDescriptor Label,Descriptor
%macro InitCodeDescriptor 2
	xor	eax, eax
	mov	ax, cs
	shl	eax, 4
	add	eax, %1
	mov	word [%2 + 2], ax
	shr	eax, 16
	mov	byte [%2 + 4], al
	mov	byte [%2 + 7], ah
%endmacro
