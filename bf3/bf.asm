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
	mov al,2		;读取的扇区数
	mov ah,2 		;13h的功能号（2表示读扇区）,es:bx指向
					;接收从扇区读入数据的内存区
	int 13h
	jc COPY         ;读取失败，CF表示为1，重试读取	

	jmp LABEL_BEGIN ;把程序读到内存区后，跳转到新的执行点
	
	;补全512字节
	times 510-($-$$) db 0
	dw 0xaa55

%include "inc.asm"

COPY_CODE_START:

;全局描述符GDT，在切换到保护模式前，需先设置好相应的描述符。
[SECTION .gdt]
LABEL_GDT:         Descriptor 0,        0,      0
LABEL_DESC_CODE32: Descriptor 0,SegCode32Len - 1, DA_C + DA_32
LABEL_DESC_VIDEO:  Descriptor 0b8000h,  0ffffh,DA_DRW

GdtLen  equ $ - LABEL_GDT
GdtPtr  dw GdtLen - 1
        dd 0

SelectorCode32  equ     LABEL_DESC_CODE32 - LABEL_GDT
SelectorVideo   equ     LABEL_DESC_VIDEO - LABEL_GDT

;这段16位的代码段，目的是实现从实模式到保护模式的切换。
[SECTION .s16]
[BITS 16]
LABEL_BEGIN:
        mov ax,cs
        mov ds,ax
        mov es,ax
        mov ss,ax
        mov sp,0100h
	
		;设置好进入保护模式后立刻要执行的代码段的描述符
        xor eax,eax
        mov ax,cs
        shl eax,4
        add eax,LABEL_SEG_CODE32
        mov word [LABEL_DESC_CODE32 + 2],ax
        shr eax,16
        mov byte [LABEL_DESC_CODE32 + 4],al
        mov byte [LABEL_DESC_CODE32 + 7],ah

		;设置GDT
        xor eax,eax
        mov ax,ds
        shl eax,4
        add eax,LABEL_GDT
        mov dword [GdtPtr + 2],eax
		
		;加载gdt
        lgdt [GdtPtr]

        cli
		
		;打开A20地址线,扩大寻址空间
        in al,92h
        or al,00000010b
        out 92h,al

		;从实模式切换到保护模式
        mov eax,cr0
        or eax,1
        mov cr0,eax

		;跳转到32位的保护模式的代码
        jmp dword SelectorCode32:0

;这段代码的功能，只是在屏幕右边的中间位置显示一个黑底红色的字母'P'
[SECTION .s32]
[BITS 32]
LABEL_SEG_CODE32:
        mov ax,SelectorVideo
        mov gs,ax

        mov edi,(80 * 11 + 79) *2
        mov ah,0ch
        mov al,'P'
	mov [gs:edi],ax

        jmp $

SegCode32Len equ $ - LABEL_SEG_CODE32	
