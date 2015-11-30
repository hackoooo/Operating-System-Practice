00030400  BCA0280300        mov esp,0x328a0
00030405  C70548AD04000000  mov dword [dword 0x4ad48],0x0
         -0000
0003040F  0F01054CAD0400    sgdt [dword 0x4ad4c]
00030416  E8FC010000        call dword 0x30617
0003041B  0F01154CAD0400    lgdt [dword 0x4ad4c]
00030422  0F011DA0280300    lidt [dword 0x328a0]
00030429  EA300403000800    jmp dword 0x8:0x30430
00030430  31C0              xor eax,eax
00030432  66B82000          mov ax,0x20
00030436  0F00D8            ltr ax
00030439  E967020000        jmp dword 0x306a5
0003043E  90                nop
0003043F  90                nop
00030440  83EC04            sub esp,byte +0x4
00030443  60                pushad
00030444  1E                push ds
00030445  06                push es
00030446  0FA0              push fs
00030448  0FA8              push gs
0003044A  668CD2            mov dx,ss
0003044D  8EDA              mov ds,edx
0003044F  8EC2              mov es,edx
00030451  65FE0500000000    inc byte [dword gs:0x0]
00030458  B020              mov al,0x20
0003045A  E620              out 0x20,al
0003045C  FF05C0A80400      inc dword [dword 0x4a8c0]
00030462  833DC0A8040000    cmp dword [dword 0x4a8c0],byte +0x0
00030469  750C              jnz 0x30477
0003046B  BCA0280300        mov esp,0x328a0
00030470  6889040300        push dword 0x30489
00030475  EB05              jmp short 0x3047c
00030477  689D040300        push dword 0x3049d
0003047C  FB                sti
0003047D  6A00              push byte +0x0
0003047F  E838040000        call dword 0x308bc
00030484  83C404            add esp,byte +0x4
00030487  FA                cli
00030488  C3                ret
00030489  8B2560B50400      mov esp,[dword 0x4b560]
0003048F  0F00542448        lldt [esp+0x48]
00030494  8D442448          lea eax,[esp+0x48]
00030498  A3E4AC0400        mov [0x4ace4],eax
0003049D  FF0DC0A80400      dec dword [dword 0x4a8c0]
000304A3  0FA9              pop gs
000304A5  0FA1              pop fs
000304A7  07                pop es
000304A8  1F                pop ds
000304A9  61                popad
000304AA  83C404            add esp,byte +0x4
000304AD  CF                iretd
000304AE  90                nop
000304AF  90                nop
000304B0  6A01              push byte +0x1
000304B2  E823050000        call dword 0x309da
000304B7  83C404            add esp,byte +0x4
000304BA  F4                hlt
000304BB  90                nop
000304BC  90                nop
000304BD  90                nop
000304BE  90                nop
000304BF  90                nop
000304C0  6A02              push byte +0x2
000304C2  E813050000        call dword 0x309da
000304C7  83C404            add esp,byte +0x4
000304CA  F4                hlt
000304CB  90                nop
000304CC  90                nop
000304CD  90                nop
000304CE  90                nop
000304CF  90                nop
000304D0  6A03              push byte +0x3
000304D2  E803050000        call dword 0x309da
000304D7  83C404            add esp,byte +0x4
000304DA  F4                hlt
000304DB  90                nop
000304DC  90                nop
000304DD  90                nop
000304DE  90                nop
000304DF  90                nop
000304E0  6A04              push byte +0x4
000304E2  E8F3040000        call dword 0x309da
000304E7  83C404            add esp,byte +0x4
000304EA  F4                hlt
000304EB  90                nop
000304EC  90                nop
000304ED  90                nop
000304EE  90                nop
000304EF  90                nop
000304F0  6A05              push byte +0x5
000304F2  E8E3040000        call dword 0x309da
000304F7  83C404            add esp,byte +0x4
000304FA  F4                hlt
000304FB  90                nop
000304FC  90                nop
000304FD  90                nop
000304FE  90                nop
000304FF  90                nop
00030500  6A06              push byte +0x6
00030502  E8D3040000        call dword 0x309da
00030507  83C404            add esp,byte +0x4
0003050A  F4                hlt
0003050B  90                nop
0003050C  90                nop
0003050D  90                nop
0003050E  90                nop
0003050F  90                nop
00030510  6A07              push byte +0x7
00030512  E8C3040000        call dword 0x309da
00030517  83C404            add esp,byte +0x4
0003051A  F4                hlt
0003051B  90                nop
0003051C  90                nop
0003051D  90                nop
0003051E  90                nop
0003051F  90                nop
00030520  6A08              push byte +0x8
00030522  E8B3040000        call dword 0x309da
00030527  83C404            add esp,byte +0x4
0003052A  F4                hlt
0003052B  90                nop
0003052C  90                nop
0003052D  90                nop
0003052E  90                nop
0003052F  90                nop
00030530  6A09              push byte +0x9
00030532  E8A3040000        call dword 0x309da
00030537  83C404            add esp,byte +0x4
0003053A  F4                hlt
0003053B  90                nop
0003053C  90                nop
0003053D  90                nop
0003053E  90                nop
0003053F  90                nop
00030540  6A0A              push byte +0xa
00030542  E893040000        call dword 0x309da
00030547  83C404            add esp,byte +0x4
0003054A  F4                hlt
0003054B  90                nop
0003054C  90                nop
0003054D  90                nop
0003054E  90                nop
0003054F  90                nop
00030550  6A0B              push byte +0xb
00030552  E883040000        call dword 0x309da
00030557  83C404            add esp,byte +0x4
0003055A  F4                hlt
0003055B  90                nop
0003055C  90                nop
0003055D  90                nop
0003055E  90                nop
0003055F  90                nop
00030560  6A0C              push byte +0xc
00030562  E873040000        call dword 0x309da
00030567  83C404            add esp,byte +0x4
0003056A  F4                hlt
0003056B  90                nop
0003056C  90                nop
0003056D  90                nop
0003056E  90                nop
0003056F  90                nop
00030570  6A0D              push byte +0xd
00030572  E863040000        call dword 0x309da
00030577  83C404            add esp,byte +0x4
0003057A  F4                hlt
0003057B  90                nop
0003057C  90                nop
0003057D  90                nop
0003057E  90                nop
0003057F  90                nop
00030580  6A0E              push byte +0xe
00030582  E853040000        call dword 0x309da
00030587  83C404            add esp,byte +0x4
0003058A  F4                hlt
0003058B  90                nop
0003058C  90                nop
0003058D  90                nop
0003058E  90                nop
0003058F  90                nop
00030590  6A0F              push byte +0xf
00030592  E843040000        call dword 0x309da
00030597  83C404            add esp,byte +0x4
0003059A  F4                hlt
0003059B  6AFF              push byte -0x1
0003059D  6A00              push byte +0x0
0003059F  EB4E              jmp short 0x305ef
000305A1  6AFF              push byte -0x1
000305A3  6A01              push byte +0x1
000305A5  EB48              jmp short 0x305ef
000305A7  6AFF              push byte -0x1
000305A9  6A02              push byte +0x2
000305AB  EB42              jmp short 0x305ef
000305AD  6AFF              push byte -0x1
000305AF  6A03              push byte +0x3
000305B1  EB3C              jmp short 0x305ef
000305B3  6AFF              push byte -0x1
000305B5  6A04              push byte +0x4
000305B7  EB36              jmp short 0x305ef
000305B9  6AFF              push byte -0x1
000305BB  6A05              push byte +0x5
000305BD  EB30              jmp short 0x305ef
000305BF  6AFF              push byte -0x1
000305C1  6A06              push byte +0x6
000305C3  EB2A              jmp short 0x305ef
000305C5  6AFF              push byte -0x1
000305C7  6A07              push byte +0x7
000305C9  EB24              jmp short 0x305ef
000305CB  6A08              push byte +0x8
000305CD  EB20              jmp short 0x305ef
000305CF  6AFF              push byte -0x1
000305D1  6A09              push byte +0x9
000305D3  EB1A              jmp short 0x305ef
000305D5  6A0A              push byte +0xa
000305D7  EB16              jmp short 0x305ef
000305D9  6A0B              push byte +0xb
000305DB  EB12              jmp short 0x305ef
000305DD  6A0C              push byte +0xc
000305DF  EB0E              jmp short 0x305ef
000305E1  6A0D              push byte +0xd
000305E3  EB0A              jmp short 0x305ef
000305E5  6A0E              push byte +0xe
000305E7  EB06              jmp short 0x305ef
000305E9  6AFF              push byte -0x1
000305EB  6A10              push byte +0x10
000305ED  EB00              jmp short 0x305ef
000305EF  E8AE0A0000        call dword 0x310a2
000305F4  83C408            add esp,byte +0x8
000305F7  F4                hlt
000305F8  8B2560B50400      mov esp,[dword 0x4b560]
000305FE  0F00542448        lldt [esp+0x48]
00030603  8D442448          lea eax,[esp+0x48]
00030607  A3E4AC0400        mov [0x4ace4],eax
0003060C  0FA9              pop gs
0003060E  0FA1              pop fs
00030610  07                pop es
00030611  1F                pop ds
00030612  61                popad
00030613  83C404            add esp,byte +0x4
00030616  CF                iretd
00030617  55                push ebp
00030618  89E5              mov ebp,esp
0003061A  83EC28            sub esp,byte +0x28
0003061D  C7042400140300    mov dword [esp],0x31400
00030624  E8A70B0000        call dword 0x311d0
00030629  B84CAD0400        mov eax,0x4ad4c
0003062E  0FB700            movzx eax,word [eax]
00030631  0FB7C0            movzx eax,ax
00030634  8D5001            lea edx,[eax+0x1]
00030637  B84EAD0400        mov eax,0x4ad4e
0003063C  8B00              mov eax,[eax]
0003063E  89542408          mov [esp+0x8],edx
00030642  89442404          mov [esp+0x4],eax
00030646  C70424E0A80400    mov dword [esp],0x4a8e0
0003064D  E82E0D0000        call dword 0x31380
00030652  C745F44CAD0400    mov dword [ebp-0xc],0x4ad4c
00030659  C745F04EAD0400    mov dword [ebp-0x10],0x4ad4e
00030660  8B45F4            mov eax,[ebp-0xc]
00030663  66C700FF03        mov word [eax],0x3ff
00030668  BAE0A80400        mov edx,0x4a8e0
0003066D  8B45F0            mov eax,[ebp-0x10]
00030670  8910              mov [eax],edx
00030672  C745ECA0280300    mov dword [ebp-0x14],0x328a0
00030679  C745E8A2280300    mov dword [ebp-0x18],0x328a2
00030680  8B45EC            mov eax,[ebp-0x14]
00030683  66C700FF07        mov word [eax],0x7ff
00030688  BA60AD0400        mov edx,0x4ad60
0003068D  8B45E8            mov eax,[ebp-0x18]
00030690  8910              mov [eax],edx
00030692  E86E030000        call dword 0x30a05
00030697  C704242A140300    mov dword [esp],0x3142a
0003069E  E82D0B0000        call dword 0x311d0
000306A3  C9                leave
000306A4  C3                ret
000306A5  55                push ebp
000306A6  89E5              mov ebp,esp
000306A8  83EC38            sub esp,byte +0x38
000306AB  C7042448140300    mov dword [esp],0x31448
000306B2  E8190B0000        call dword 0x311d0
000306B7  C745F420200300    mov dword [ebp-0xc],0x32020
000306BE  C745F080B50400    mov dword [ebp-0x10],0x4b580
000306C5  C745ECC0A80400    mov dword [ebp-0x14],0x4a8c0
000306CC  66C745EA2800      mov word [ebp-0x16],0x28
000306D2  C745E400000000    mov dword [ebp-0x1c],0x0
000306D9  E9ED000000        jmp dword 0x307cb
000306DE  8B45F4            mov eax,[ebp-0xc]
000306E1  8D5008            lea edx,[eax+0x8]
000306E4  8B45F0            mov eax,[ebp-0x10]
000306E7  83C060            add eax,byte +0x60
000306EA  89542404          mov [esp+0x4],edx
000306EE  890424            mov [esp],eax
000306F1  E8D40C0000        call dword 0x313ca
000306F6  8B55E4            mov edx,[ebp-0x1c]
000306F9  8B45F0            mov eax,[ebp-0x10]
000306FC  89505C            mov [eax+0x5c],edx
000306FF  8B45F0            mov eax,[ebp-0x10]
00030702  0FB755EA          movzx edx,word [ebp-0x16]
00030706  66895048          mov [eax+0x48],dx
0003070A  8B45F0            mov eax,[ebp-0x10]
0003070D  83C04A            add eax,byte +0x4a
00030710  C744240808000000  mov dword [esp+0x8],0x8
00030718  C7442404E8A80400  mov dword [esp+0x4],0x4a8e8
00030720  890424            mov [esp],eax
00030723  E8580C0000        call dword 0x31380
00030728  8B45F0            mov eax,[ebp-0x10]
0003072B  C6404FB8          mov byte [eax+0x4f],0xb8
0003072F  8B45F0            mov eax,[ebp-0x10]
00030732  83C052            add eax,byte +0x52
00030735  C744240808000000  mov dword [esp+0x8],0x8
0003073D  C7442404F0A80400  mov dword [esp+0x4],0x4a8f0
00030745  890424            mov [esp],eax
00030748  E8330C0000        call dword 0x31380
0003074D  8B45F0            mov eax,[ebp-0x10]
00030750  C64057B2          mov byte [eax+0x57],0xb2
00030754  8B45F0            mov eax,[ebp-0x10]
00030757  C7403805000000    mov dword [eax+0x38],0x5
0003075E  8B45F0            mov eax,[ebp-0x10]
00030761  C7400C0D000000    mov dword [eax+0xc],0xd
00030768  8B45F0            mov eax,[ebp-0x10]
0003076B  C740080D000000    mov dword [eax+0x8],0xd
00030772  8B45F0            mov eax,[ebp-0x10]
00030775  C740040D000000    mov dword [eax+0x4],0xd
0003077C  8B45F0            mov eax,[ebp-0x10]
0003077F  C740440D000000    mov dword [eax+0x44],0xd
00030786  8B45F0            mov eax,[ebp-0x10]
00030789  C70019000000      mov dword [eax],0x19
0003078F  8B45F4            mov eax,[ebp-0xc]
00030792  8B00              mov eax,[eax]
00030794  89C2              mov edx,eax
00030796  8B45F0            mov eax,[ebp-0x10]
00030799  895034            mov [eax+0x34],edx
0003079C  8B55EC            mov edx,[ebp-0x14]
0003079F  8B45F0            mov eax,[ebp-0x10]
000307A2  895040            mov [eax+0x40],edx
000307A5  8B45F0            mov eax,[ebp-0x10]
000307A8  C7403C02120000    mov dword [eax+0x3c],0x1202
000307AF  8B45F4            mov eax,[ebp-0xc]
000307B2  8B4004            mov eax,[eax+0x4]
000307B5  F7D8              neg eax
000307B7  0145EC            add [ebp-0x14],eax
000307BA  8345F070          add dword [ebp-0x10],byte +0x70
000307BE  8345F428          add dword [ebp-0xc],byte +0x28
000307C2  668345EA08        add word [ebp-0x16],byte +0x8
000307C7  8345E401          add dword [ebp-0x1c],byte +0x1
000307CB  837DE402          cmp dword [ebp-0x1c],byte +0x2
000307CF  0F8E09FFFFFF      jng dword 0x306de
000307D5  C705C0A80400FFFF  mov dword [dword 0x4a8c0],0xffffffff
         -FFFF
000307DF  C70560B5040080B5  mov dword [dword 0x4b560],0x4b580
         -0400
000307E9  E80AFEFFFF        call dword 0x305f8
000307EE  EBFE              jmp short 0x307ee
000307F0  55                push ebp
000307F1  89E5              mov ebp,esp
000307F3  83EC28            sub esp,byte +0x28
000307F6  C745F400000000    mov dword [ebp-0xc],0x0
000307FD  C7042468140300    mov dword [esp],0x31468
00030804  E8C7090000        call dword 0x311d0
00030809  8B45F4            mov eax,[ebp-0xc]
0003080C  8D5001            lea edx,[eax+0x1]
0003080F  8955F4            mov [ebp-0xc],edx
00030812  890424            mov [esp],eax
00030815  E8F40A0000        call dword 0x3130e
0003081A  C704246A140300    mov dword [esp],0x3146a
00030821  E8AA090000        call dword 0x311d0
00030826  C7042401000000    mov dword [esp],0x1
0003082D  E8010B0000        call dword 0x31333
00030832  EBC9              jmp short 0x307fd
00030834  55                push ebp
00030835  89E5              mov ebp,esp
00030837  83EC28            sub esp,byte +0x28
0003083A  C745F400100000    mov dword [ebp-0xc],0x1000
00030841  C704246C140300    mov dword [esp],0x3146c
00030848  E883090000        call dword 0x311d0
0003084D  8B45F4            mov eax,[ebp-0xc]
00030850  8D5001            lea edx,[eax+0x1]
00030853  8955F4            mov [ebp-0xc],edx
00030856  890424            mov [esp],eax
00030859  E8B00A0000        call dword 0x3130e
0003085E  C704246A140300    mov dword [esp],0x3146a
00030865  E866090000        call dword 0x311d0
0003086A  C7042401000000    mov dword [esp],0x1
00030871  E8BD0A0000        call dword 0x31333
00030876  EBC9              jmp short 0x30841
00030878  55                push ebp
00030879  89E5              mov ebp,esp
0003087B  83EC28            sub esp,byte +0x28
0003087E  C745F400200000    mov dword [ebp-0xc],0x2000
00030885  C704246E140300    mov dword [esp],0x3146e
0003088C  E83F090000        call dword 0x311d0
00030891  8B45F4            mov eax,[ebp-0xc]
00030894  8D5001            lea edx,[eax+0x1]
00030897  8955F4            mov [ebp-0xc],edx
0003089A  890424            mov [esp],eax
0003089D  E86C0A0000        call dword 0x3130e
000308A2  C704246A140300    mov dword [esp],0x3146a
000308A9  E822090000        call dword 0x311d0
000308AE  C7042401000000    mov dword [esp],0x1
000308B5  E8790A0000        call dword 0x31333
000308BA  EBC9              jmp short 0x30885
000308BC  55                push ebp
000308BD  89E5              mov ebp,esp
000308BF  83EC18            sub esp,byte +0x18
000308C2  C7042470140300    mov dword [esp],0x31470
000308C9  E802090000        call dword 0x311d0
000308CE  A1C0A80400        mov eax,[0x4a8c0]
000308D3  85C0              test eax,eax
000308D5  740E              jz 0x308e5
000308D7  C7042472140300    mov dword [esp],0x31472
000308DE  E8ED080000        call dword 0x311d0
000308E3  EB23              jmp short 0x30908
000308E5  A160B50400        mov eax,[0x4b560]
000308EA  83C070            add eax,byte +0x70
000308ED  A360B50400        mov [0x4b560],eax
000308F2  A160B50400        mov eax,[0x4b560]
000308F7  3DD0B60400        cmp eax,0x4b6d0
000308FC  720A              jc 0x30908
000308FE  C70560B5040080B5  mov dword [dword 0x4b560],0x4b580
         -0400
00030908  C9                leave
00030909  C3                ret
0003090A  55                push ebp
0003090B  89E5              mov ebp,esp
0003090D  83EC18            sub esp,byte +0x18
00030910  C744240411000000  mov dword [esp+0x4],0x11
00030918  C7042420000000    mov dword [esp],0x20
0003091F  E829090000        call dword 0x3124d
00030924  C744240411000000  mov dword [esp+0x4],0x11
0003092C  C70424A0000000    mov dword [esp],0xa0
00030933  E815090000        call dword 0x3124d
00030938  C744240420000000  mov dword [esp+0x4],0x20
00030940  C7042421000000    mov dword [esp],0x21
00030947  E801090000        call dword 0x3124d
0003094C  C744240428000000  mov dword [esp+0x4],0x28
00030954  C70424A1000000    mov dword [esp],0xa1
0003095B  E8ED080000        call dword 0x3124d
00030960  C744240404000000  mov dword [esp+0x4],0x4
00030968  C7042421000000    mov dword [esp],0x21
0003096F  E8D9080000        call dword 0x3124d
00030974  C744240402000000  mov dword [esp+0x4],0x2
0003097C  C70424A1000000    mov dword [esp],0xa1
00030983  E8C5080000        call dword 0x3124d
00030988  C744240401000000  mov dword [esp+0x4],0x1
00030990  C7042421000000    mov dword [esp],0x21
00030997  E8B1080000        call dword 0x3124d
0003099C  C744240401000000  mov dword [esp+0x4],0x1
000309A4  C70424A1000000    mov dword [esp],0xa1
000309AB  E89D080000        call dword 0x3124d
000309B0  C7442404FE000000  mov dword [esp+0x4],0xfe
000309B8  C7042421000000    mov dword [esp],0x21
000309BF  E889080000        call dword 0x3124d
000309C4  C7442404FF000000  mov dword [esp+0x4],0xff
000309CC  C70424A1000000    mov dword [esp],0xa1
000309D3  E875080000        call dword 0x3124d
000309D8  C9                leave
000309D9  C3                ret
000309DA  55                push ebp
000309DB  89E5              mov ebp,esp
000309DD  83EC18            sub esp,byte +0x18
000309E0  C7042474140300    mov dword [esp],0x31474
000309E7  E8E4070000        call dword 0x311d0
000309EC  8B4508            mov eax,[ebp+0x8]
000309EF  890424            mov [esp],eax
000309F2  E817090000        call dword 0x3130e
000309F7  C7042483140300    mov dword [esp],0x31483
000309FE  E8CD070000        call dword 0x311d0
00030A03  C9                leave
00030A04  C3                ret
00030A05  55                push ebp
00030A06  89E5              mov ebp,esp
00030A08  83EC28            sub esp,byte +0x28
00030A0B  E8FAFEFFFF        call dword 0x3090a
00030A10  C744240C00000000  mov dword [esp+0xc],0x0
00030A18  C74424089B050300  mov dword [esp+0x8],0x3059b
00030A20  C74424048E000000  mov dword [esp+0x4],0x8e
00030A28  C7042400000000    mov dword [esp],0x0
00030A2F  E843050000        call dword 0x30f77
00030A34  C744240C00000000  mov dword [esp+0xc],0x0
00030A3C  C7442408A1050300  mov dword [esp+0x8],0x305a1
00030A44  C74424048E000000  mov dword [esp+0x4],0x8e
00030A4C  C7042401000000    mov dword [esp],0x1
00030A53  E81F050000        call dword 0x30f77
00030A58  C744240C00000000  mov dword [esp+0xc],0x0
00030A60  C7442408A7050300  mov dword [esp+0x8],0x305a7
00030A68  C74424048E000000  mov dword [esp+0x4],0x8e
00030A70  C7042402000000    mov dword [esp],0x2
00030A77  E8FB040000        call dword 0x30f77
00030A7C  C744240C03000000  mov dword [esp+0xc],0x3
00030A84  C7442408AD050300  mov dword [esp+0x8],0x305ad
00030A8C  C74424048E000000  mov dword [esp+0x4],0x8e
00030A94  C7042403000000    mov dword [esp],0x3
00030A9B  E8D7040000        call dword 0x30f77
00030AA0  C744240C03000000  mov dword [esp+0xc],0x3
00030AA8  C7442408B3050300  mov dword [esp+0x8],0x305b3
00030AB0  C74424048E000000  mov dword [esp+0x4],0x8e
00030AB8  C7042404000000    mov dword [esp],0x4
00030ABF  E8B3040000        call dword 0x30f77
00030AC4  C744240C00000000  mov dword [esp+0xc],0x0
00030ACC  C7442408B9050300  mov dword [esp+0x8],0x305b9
00030AD4  C74424048E000000  mov dword [esp+0x4],0x8e
00030ADC  C7042405000000    mov dword [esp],0x5
00030AE3  E88F040000        call dword 0x30f77
00030AE8  C744240C00000000  mov dword [esp+0xc],0x0
00030AF0  C7442408BF050300  mov dword [esp+0x8],0x305bf
00030AF8  C74424048E000000  mov dword [esp+0x4],0x8e
00030B00  C7042406000000    mov dword [esp],0x6
00030B07  E86B040000        call dword 0x30f77
00030B0C  C744240C00000000  mov dword [esp+0xc],0x0
00030B14  C7442408C5050300  mov dword [esp+0x8],0x305c5
00030B1C  C74424048E000000  mov dword [esp+0x4],0x8e
00030B24  C7042407000000    mov dword [esp],0x7
00030B2B  E847040000        call dword 0x30f77
00030B30  C744240C00000000  mov dword [esp+0xc],0x0
00030B38  C7442408CB050300  mov dword [esp+0x8],0x305cb
00030B40  C74424048E000000  mov dword [esp+0x4],0x8e
00030B48  C7042408000000    mov dword [esp],0x8
00030B4F  E823040000        call dword 0x30f77
00030B54  C744240C00000000  mov dword [esp+0xc],0x0
00030B5C  C7442408CF050300  mov dword [esp+0x8],0x305cf
00030B64  C74424048E000000  mov dword [esp+0x4],0x8e
00030B6C  C7042409000000    mov dword [esp],0x9
00030B73  E8FF030000        call dword 0x30f77
00030B78  C744240C00000000  mov dword [esp+0xc],0x0
00030B80  C7442408D5050300  mov dword [esp+0x8],0x305d5
00030B88  C74424048E000000  mov dword [esp+0x4],0x8e
00030B90  C704240A000000    mov dword [esp],0xa
00030B97  E8DB030000        call dword 0x30f77
00030B9C  C744240C00000000  mov dword [esp+0xc],0x0
00030BA4  C7442408D9050300  mov dword [esp+0x8],0x305d9
00030BAC  C74424048E000000  mov dword [esp+0x4],0x8e
00030BB4  C704240B000000    mov dword [esp],0xb
00030BBB  E8B7030000        call dword 0x30f77
00030BC0  C744240C00000000  mov dword [esp+0xc],0x0
00030BC8  C7442408DD050300  mov dword [esp+0x8],0x305dd
00030BD0  C74424048E000000  mov dword [esp+0x4],0x8e
00030BD8  C704240C000000    mov dword [esp],0xc
00030BDF  E893030000        call dword 0x30f77
00030BE4  C744240C00000000  mov dword [esp+0xc],0x0
00030BEC  C7442408E1050300  mov dword [esp+0x8],0x305e1
00030BF4  C74424048E000000  mov dword [esp+0x4],0x8e
00030BFC  C704240D000000    mov dword [esp],0xd
00030C03  E86F030000        call dword 0x30f77
00030C08  C744240C00000000  mov dword [esp+0xc],0x0
00030C10  C7442408E5050300  mov dword [esp+0x8],0x305e5
00030C18  C74424048E000000  mov dword [esp+0x4],0x8e
00030C20  C704240E000000    mov dword [esp],0xe
00030C27  E84B030000        call dword 0x30f77
00030C2C  C744240C00000000  mov dword [esp+0xc],0x0
00030C34  C7442408E9050300  mov dword [esp+0x8],0x305e9
00030C3C  C74424048E000000  mov dword [esp+0x4],0x8e
00030C44  C7042410000000    mov dword [esp],0x10
00030C4B  E827030000        call dword 0x30f77
00030C50  C744240C00000000  mov dword [esp+0xc],0x0
00030C58  C744240840040300  mov dword [esp+0x8],0x30440
00030C60  C74424048E000000  mov dword [esp+0x4],0x8e
00030C68  C7042420000000    mov dword [esp],0x20
00030C6F  E803030000        call dword 0x30f77
00030C74  C744240C00000000  mov dword [esp+0xc],0x0
00030C7C  C7442408B0040300  mov dword [esp+0x8],0x304b0
00030C84  C74424048E000000  mov dword [esp+0x4],0x8e
00030C8C  C7042421000000    mov dword [esp],0x21
00030C93  E8DF020000        call dword 0x30f77
00030C98  C744240C00000000  mov dword [esp+0xc],0x0
00030CA0  C7442408C0040300  mov dword [esp+0x8],0x304c0
00030CA8  C74424048E000000  mov dword [esp+0x4],0x8e
00030CB0  C7042422000000    mov dword [esp],0x22
00030CB7  E8BB020000        call dword 0x30f77
00030CBC  C744240C00000000  mov dword [esp+0xc],0x0
00030CC4  C7442408D0040300  mov dword [esp+0x8],0x304d0
00030CCC  C74424048E000000  mov dword [esp+0x4],0x8e
00030CD4  C7042423000000    mov dword [esp],0x23
00030CDB  E897020000        call dword 0x30f77
00030CE0  C744240C00000000  mov dword [esp+0xc],0x0
00030CE8  C7442408E0040300  mov dword [esp+0x8],0x304e0
00030CF0  C74424048E000000  mov dword [esp+0x4],0x8e
00030CF8  C7042424000000    mov dword [esp],0x24
00030CFF  E873020000        call dword 0x30f77
00030D04  C744240C00000000  mov dword [esp+0xc],0x0
00030D0C  C7442408F0040300  mov dword [esp+0x8],0x304f0
00030D14  C74424048E000000  mov dword [esp+0x4],0x8e
00030D1C  C7042425000000    mov dword [esp],0x25
00030D23  E84F020000        call dword 0x30f77
00030D28  C744240C00000000  mov dword [esp+0xc],0x0
00030D30  C744240800050300  mov dword [esp+0x8],0x30500
00030D38  C74424048E000000  mov dword [esp+0x4],0x8e
00030D40  C7042426000000    mov dword [esp],0x26
00030D47  E82B020000        call dword 0x30f77
00030D4C  C744240C00000000  mov dword [esp+0xc],0x0
00030D54  C744240810050300  mov dword [esp+0x8],0x30510
00030D5C  C74424048E000000  mov dword [esp+0x4],0x8e
00030D64  C7042427000000    mov dword [esp],0x27
00030D6B  E807020000        call dword 0x30f77
00030D70  C744240C00000000  mov dword [esp+0xc],0x0
00030D78  C744240820050300  mov dword [esp+0x8],0x30520
00030D80  C74424048E000000  mov dword [esp+0x4],0x8e
00030D88  C7042428000000    mov dword [esp],0x28
00030D8F  E8E3010000        call dword 0x30f77
00030D94  C744240C00000000  mov dword [esp+0xc],0x0
00030D9C  C744240830050300  mov dword [esp+0x8],0x30530
00030DA4  C74424048E000000  mov dword [esp+0x4],0x8e
00030DAC  C7042429000000    mov dword [esp],0x29
00030DB3  E8BF010000        call dword 0x30f77
00030DB8  C744240C00000000  mov dword [esp+0xc],0x0
00030DC0  C744240840050300  mov dword [esp+0x8],0x30540
00030DC8  C74424048E000000  mov dword [esp+0x4],0x8e
00030DD0  C704242A000000    mov dword [esp],0x2a
00030DD7  E89B010000        call dword 0x30f77
00030DDC  C744240C00000000  mov dword [esp+0xc],0x0
00030DE4  C744240850050300  mov dword [esp+0x8],0x30550
00030DEC  C74424048E000000  mov dword [esp+0x4],0x8e
00030DF4  C704242B000000    mov dword [esp],0x2b
00030DFB  E877010000        call dword 0x30f77
00030E00  C744240C00000000  mov dword [esp+0xc],0x0
00030E08  C744240860050300  mov dword [esp+0x8],0x30560
00030E10  C74424048E000000  mov dword [esp+0x4],0x8e
00030E18  C704242C000000    mov dword [esp],0x2c
00030E1F  E853010000        call dword 0x30f77
00030E24  C744240C00000000  mov dword [esp+0xc],0x0
00030E2C  C744240870050300  mov dword [esp+0x8],0x30570
00030E34  C74424048E000000  mov dword [esp+0x4],0x8e
00030E3C  C704242D000000    mov dword [esp],0x2d
00030E43  E82F010000        call dword 0x30f77
00030E48  C744240C00000000  mov dword [esp+0xc],0x0
00030E50  C744240880050300  mov dword [esp+0x8],0x30580
00030E58  C74424048E000000  mov dword [esp+0x4],0x8e
00030E60  C704242E000000    mov dword [esp],0x2e
00030E67  E80B010000        call dword 0x30f77
00030E6C  C744240C00000000  mov dword [esp+0xc],0x0
00030E74  C744240890050300  mov dword [esp+0x8],0x30590
00030E7C  C74424048E000000  mov dword [esp+0x4],0x8e
00030E84  C704242F000000    mov dword [esp],0x2f
00030E8B  E8E7000000        call dword 0x30f77
00030E90  C744240868000000  mov dword [esp+0x8],0x68
00030E98  C744240400000000  mov dword [esp+0x4],0x0
00030EA0  C70424E0AC0400    mov dword [esp],0x4ace0
00030EA7  E8FD040000        call dword 0x313a9
00030EAC  C705E8AC04001000  mov dword [dword 0x4ace8],0x10
         -0000
00030EB6  C7042410000000    mov dword [esp],0x10
00030EBD  E825010000        call dword 0x30fe7
00030EC2  BAE0AC0400        mov edx,0x4ace0
00030EC7  01D0              add eax,edx
00030EC9  C744240C89000000  mov dword [esp+0xc],0x89
00030ED1  C744240867000000  mov dword [esp+0x8],0x67
00030ED9  89442404          mov [esp+0x4],eax
00030EDD  C7042400A90400    mov dword [esp],0x4a900
00030EE4  E84D010000        call dword 0x31036
00030EE9  66C70546AD040068  mov word [dword 0x4ad46],0x68
         -00
00030EF2  C745F080B50400    mov dword [ebp-0x10],0x4b580
00030EF9  66C745EE2800      mov word [ebp-0x12],0x28
00030EFF  C745F400000000    mov dword [ebp-0xc],0x0
00030F06  EB67              jmp short 0x30f6f
00030F08  C7042410000000    mov dword [esp],0x10
00030F0F  E8D3000000        call dword 0x30fe7
00030F14  89C1              mov ecx,eax
00030F16  8B45F4            mov eax,[ebp-0xc]
00030F19  C1E004            shl eax,byte 0x4
00030F1C  8D14C500000000    lea edx,[eax*8+0x0]
00030F23  29C2              sub edx,eax
00030F25  8D4240            lea eax,[edx+0x40]
00030F28  0580B50400        add eax,0x4b580
00030F2D  83C00A            add eax,byte +0xa
00030F30  8D1401            lea edx,[ecx+eax]
00030F33  0FB745EE          movzx eax,word [ebp-0x12]
00030F37  66C1E803          shr ax,byte 0x3
00030F3B  0FB7C0            movzx eax,ax
00030F3E  C1E003            shl eax,byte 0x3
00030F41  05E0A80400        add eax,0x4a8e0
00030F46  C744240C82000000  mov dword [esp+0xc],0x82
00030F4E  C74424080F000000  mov dword [esp+0x8],0xf
00030F56  89542404          mov [esp+0x4],edx
00030F5A  890424            mov [esp],eax
00030F5D  E8D4000000        call dword 0x31036
00030F62  8345F070          add dword [ebp-0x10],byte +0x70
00030F66  668345EE08        add word [ebp-0x12],byte +0x8
00030F6B  8345F401          add dword [ebp-0xc],byte +0x1
00030F6F  837DF402          cmp dword [ebp-0xc],byte +0x2
00030F73  7E93              jng 0x30f08
00030F75  C9                leave
00030F76  C3                ret
00030F77  55                push ebp
00030F78  89E5              mov ebp,esp
00030F7A  83EC1C            sub esp,byte +0x1c
00030F7D  8B4D08            mov ecx,[ebp+0x8]
00030F80  8B550C            mov edx,[ebp+0xc]
00030F83  8B4514            mov eax,[ebp+0x14]
00030F86  884DEC            mov [ebp-0x14],cl
00030F89  8855E8            mov [ebp-0x18],dl
00030F8C  8845E4            mov [ebp-0x1c],al
00030F8F  0FB645EC          movzx eax,byte [ebp-0x14]
00030F93  C1E003            shl eax,byte 0x3
00030F96  0560AD0400        add eax,0x4ad60
00030F9B  8945FC            mov [ebp-0x4],eax
00030F9E  8B4510            mov eax,[ebp+0x10]
00030FA1  8945F8            mov [ebp-0x8],eax
00030FA4  8B45F8            mov eax,[ebp-0x8]
00030FA7  89C2              mov edx,eax
00030FA9  8B45FC            mov eax,[ebp-0x4]
00030FAC  668910            mov [eax],dx
00030FAF  8B45FC            mov eax,[ebp-0x4]
00030FB2  66C740020800      mov word [eax+0x2],0x8
00030FB8  8B45FC            mov eax,[ebp-0x4]
00030FBB  C6400400          mov byte [eax+0x4],0x0
00030FBF  0FB645E4          movzx eax,byte [ebp-0x1c]
00030FC3  C1E005            shl eax,byte 0x5
00030FC6  89C2              mov edx,eax
00030FC8  0FB645E8          movzx eax,byte [ebp-0x18]
00030FCC  09D0              or eax,edx
00030FCE  89C2              mov edx,eax
00030FD0  8B45FC            mov eax,[ebp-0x4]
00030FD3  885005            mov [eax+0x5],dl
00030FD6  8B45F8            mov eax,[ebp-0x8]
00030FD9  C1E810            shr eax,byte 0x10
00030FDC  89C2              mov edx,eax
00030FDE  8B45FC            mov eax,[ebp-0x4]
00030FE1  66895006          mov [eax+0x6],dx
00030FE5  C9                leave
00030FE6  C3                ret
00030FE7  55                push ebp
00030FE8  89E5              mov ebp,esp
00030FEA  83EC14            sub esp,byte +0x14
00030FED  8B4508            mov eax,[ebp+0x8]
00030FF0  668945EC          mov [ebp-0x14],ax
00030FF4  0FB745EC          movzx eax,word [ebp-0x14]
00030FF8  66C1E803          shr ax,byte 0x3
00030FFC  0FB7C0            movzx eax,ax
00030FFF  C1E003            shl eax,byte 0x3
00031002  05E0A80400        add eax,0x4a8e0
00031007  8945FC            mov [ebp-0x4],eax
0003100A  8B45FC            mov eax,[ebp-0x4]
0003100D  0FB64007          movzx eax,byte [eax+0x7]
00031011  0FB6C0            movzx eax,al
00031014  C1E018            shl eax,byte 0x18
00031017  89C2              mov edx,eax
00031019  8B45FC            mov eax,[ebp-0x4]
0003101C  0FB64004          movzx eax,byte [eax+0x4]
00031020  0FB6C0            movzx eax,al
00031023  C1E010            shl eax,byte 0x10
00031026  09C2              or edx,eax
00031028  8B45FC            mov eax,[ebp-0x4]
0003102B  0FB74002          movzx eax,word [eax+0x2]
0003102F  0FB7C0            movzx eax,ax
00031032  09D0              or eax,edx
00031034  C9                leave
00031035  C3                ret
00031036  55                push ebp
00031037  89E5              mov ebp,esp
00031039  83EC04            sub esp,byte +0x4
0003103C  8B4514            mov eax,[ebp+0x14]
0003103F  668945FC          mov [ebp-0x4],ax
00031043  8B4510            mov eax,[ebp+0x10]
00031046  89C2              mov edx,eax
00031048  8B4508            mov eax,[ebp+0x8]
0003104B  668910            mov [eax],dx
0003104E  8B450C            mov eax,[ebp+0xc]
00031051  89C2              mov edx,eax
00031053  8B4508            mov eax,[ebp+0x8]
00031056  66895002          mov [eax+0x2],dx
0003105A  8B450C            mov eax,[ebp+0xc]
0003105D  C1E810            shr eax,byte 0x10
00031060  89C2              mov edx,eax
00031062  8B4508            mov eax,[ebp+0x8]
00031065  885004            mov [eax+0x4],dl
00031068  0FB745FC          movzx eax,word [ebp-0x4]
0003106C  89C2              mov edx,eax
0003106E  8B4508            mov eax,[ebp+0x8]
00031071  885005            mov [eax+0x5],dl
00031074  8B4510            mov eax,[ebp+0x10]
00031077  C1E810            shr eax,byte 0x10
0003107A  83E00F            and eax,byte +0xf
0003107D  89C2              mov edx,eax
0003107F  0FB745FC          movzx eax,word [ebp-0x4]
00031083  66C1E808          shr ax,byte 0x8
00031087  83E0F0            and eax,byte -0x10
0003108A  09C2              or edx,eax
0003108C  8B4508            mov eax,[ebp+0x8]
0003108F  885006            mov [eax+0x6],dl
00031092  8B450C            mov eax,[ebp+0xc]
00031095  C1E818            shr eax,byte 0x18
00031098  89C2              mov edx,eax
0003109A  8B4508            mov eax,[ebp+0x8]
0003109D  885007            mov [eax+0x7],dl
000310A0  C9                leave
000310A1  C3                ret
000310A2  55                push ebp
000310A3  89E5              mov ebp,esp
000310A5  57                push edi
000310A6  56                push esi
000310A7  53                push ebx
000310A8  81EC2C050000      sub esp,0x52c
000310AE  C745E074000000    mov dword [ebp-0x20],0x74
000310B5  8D95E0FAFFFF      lea edx,[ebp-0x520]
000310BB  BBE0140300        mov ebx,0x314e0
000310C0  B840010000        mov eax,0x140
000310C5  89D7              mov edi,edx
000310C7  89DE              mov esi,ebx
000310C9  89C1              mov ecx,eax
000310CB  F3A5              rep movsd
000310CD  C70548AD04000000  mov dword [dword 0x4ad48],0x0
         -0000
000310D7  C745E400000000    mov dword [ebp-0x1c],0x0
000310DE  EB10              jmp short 0x310f0
000310E0  C70424A0140300    mov dword [esp],0x314a0
000310E7  E8E4000000        call dword 0x311d0
000310EC  8345E401          add dword [ebp-0x1c],byte +0x1
000310F0  817DE48F010000    cmp dword [ebp-0x1c],0x18f
000310F7  7EE7              jng 0x310e0
000310F9  C70548AD04000000  mov dword [dword 0x4ad48],0x0
         -0000
00031103  8B45E0            mov eax,[ebp-0x20]
00031106  89442404          mov [esp+0x4],eax
0003110A  C70424A2140300    mov dword [esp],0x314a2
00031111  E8F8000000        call dword 0x3120e
00031116  8D85E0FAFFFF      lea eax,[ebp-0x520]
0003111C  8B5508            mov edx,[ebp+0x8]
0003111F  C1E206            shl edx,byte 0x6
00031122  01C2              add edx,eax
00031124  8B45E0            mov eax,[ebp-0x20]
00031127  89442404          mov [esp+0x4],eax
0003112B  891424            mov [esp],edx
0003112E  E8DB000000        call dword 0x3120e
00031133  8B45E0            mov eax,[ebp-0x20]
00031136  89442404          mov [esp+0x4],eax
0003113A  C70424B2140300    mov dword [esp],0x314b2
00031141  E8C8000000        call dword 0x3120e
00031146  8B45E0            mov eax,[ebp-0x20]
00031149  89442404          mov [esp+0x4],eax
0003114D  C70424B5140300    mov dword [esp],0x314b5
00031154  E8B5000000        call dword 0x3120e
00031159  8B4518            mov eax,[ebp+0x18]
0003115C  890424            mov [esp],eax
0003115F  E8AA010000        call dword 0x3130e
00031164  8B45E0            mov eax,[ebp-0x20]
00031167  89442404          mov [esp+0x4],eax
0003116B  C70424BD140300    mov dword [esp],0x314bd
00031172  E897000000        call dword 0x3120e
00031177  8B4514            mov eax,[ebp+0x14]
0003117A  890424            mov [esp],eax
0003117D  E88C010000        call dword 0x3130e
00031182  8B45E0            mov eax,[ebp-0x20]
00031185  89442404          mov [esp+0x4],eax
00031189  C70424C1140300    mov dword [esp],0x314c1
00031190  E879000000        call dword 0x3120e
00031195  8B4510            mov eax,[ebp+0x10]
00031198  890424            mov [esp],eax
0003119B  E86E010000        call dword 0x3130e
000311A0  837D0CFF          cmp dword [ebp+0xc],byte -0x1
000311A4  741E              jz 0x311c4
000311A6  8B45E0            mov eax,[ebp-0x20]
000311A9  89442404          mov [esp+0x4],eax
000311AD  C70424C6140300    mov dword [esp],0x314c6
000311B4  E855000000        call dword 0x3120e
000311B9  8B450C            mov eax,[ebp+0xc]
000311BC  890424            mov [esp],eax
000311BF  E84A010000        call dword 0x3130e
000311C4  81C42C050000      add esp,0x52c
000311CA  5B                pop ebx
000311CB  5E                pop esi
000311CC  5F                pop edi
000311CD  5D                pop ebp
000311CE  C3                ret
000311CF  90                nop
000311D0  55                push ebp
000311D1  89E5              mov ebp,esp
000311D3  8B7508            mov esi,[ebp+0x8]
000311D6  8B3D48AD0400      mov edi,[dword 0x4ad48]
000311DC  B40F              mov ah,0xf
000311DE  AC                lodsb
000311DF  84C0              test al,al
000311E1  7423              jz 0x31206
000311E3  3C0A              cmp al,0xa
000311E5  7516              jnz 0x311fd
000311E7  50                push eax
000311E8  89F8              mov eax,edi
000311EA  B3A0              mov bl,0xa0
000311EC  F6F3              div bl
000311EE  25FF000000        and eax,0xff
000311F3  40                inc eax
000311F4  B3A0              mov bl,0xa0
000311F6  F6E3              mul bl
000311F8  89C7              mov edi,eax
000311FA  58                pop eax
000311FB  EBE1              jmp short 0x311de
000311FD  65668907          mov [gs:edi],ax
00031201  83C702            add edi,byte +0x2
00031204  EBD8              jmp short 0x311de
00031206  893D48AD0400      mov [dword 0x4ad48],edi
0003120C  5D                pop ebp
0003120D  C3                ret
0003120E  55                push ebp
0003120F  89E5              mov ebp,esp
00031211  8B7508            mov esi,[ebp+0x8]
00031214  8B3D48AD0400      mov edi,[dword 0x4ad48]
0003121A  8A650C            mov ah,[ebp+0xc]
0003121D  AC                lodsb
0003121E  84C0              test al,al
00031220  7423              jz 0x31245
00031222  3C0A              cmp al,0xa
00031224  7516              jnz 0x3123c
00031226  50                push eax
00031227  89F8              mov eax,edi
00031229  B3A0              mov bl,0xa0
0003122B  F6F3              div bl
0003122D  25FF000000        and eax,0xff
00031232  40                inc eax
00031233  B3A0              mov bl,0xa0
00031235  F6E3              mul bl
00031237  89C7              mov edi,eax
00031239  58                pop eax
0003123A  EBE1              jmp short 0x3121d
0003123C  65668907          mov [gs:edi],ax
00031240  83C702            add edi,byte +0x2
00031243  EBD8              jmp short 0x3121d
00031245  893D48AD0400      mov [dword 0x4ad48],edi
0003124B  5D                pop ebp
0003124C  C3                ret
0003124D  8B542404          mov edx,[esp+0x4]
00031251  8A442408          mov al,[esp+0x8]
00031255  EE                out dx,al
00031256  90                nop
00031257  90                nop
00031258  C3                ret
00031259  8B542404          mov edx,[esp+0x4]
0003125D  31C0              xor eax,eax
0003125F  EC                in al,dx
00031260  90                nop
00031261  90                nop
00031262  C3                ret
00031263  55                push ebp
00031264  89E5              mov ebp,esp
00031266  83EC10            sub esp,byte +0x10
00031269  8B4508            mov eax,[ebp+0x8]
0003126C  8945FC            mov [ebp-0x4],eax
0003126F  C745F000000000    mov dword [ebp-0x10],0x0
00031276  8B45FC            mov eax,[ebp-0x4]
00031279  8D5001            lea edx,[eax+0x1]
0003127C  8955FC            mov [ebp-0x4],edx
0003127F  C60030            mov byte [eax],0x30
00031282  8B45FC            mov eax,[ebp-0x4]
00031285  8D5001            lea edx,[eax+0x1]
00031288  8955FC            mov [ebp-0x4],edx
0003128B  C60078            mov byte [eax],0x78
0003128E  837D0C00          cmp dword [ebp+0xc],byte +0x0
00031292  750E              jnz 0x312a2
00031294  8B45FC            mov eax,[ebp-0x4]
00031297  8D5001            lea edx,[eax+0x1]
0003129A  8955FC            mov [ebp-0x4],edx
0003129D  C60030            mov byte [eax],0x30
000312A0  EB61              jmp short 0x31303
000312A2  C745F41C000000    mov dword [ebp-0xc],0x1c
000312A9  EB52              jmp short 0x312fd
000312AB  8B45F4            mov eax,[ebp-0xc]
000312AE  8B550C            mov edx,[ebp+0xc]
000312B1  89C1              mov ecx,eax
000312B3  D3FA              sar edx,cl
000312B5  89D0              mov eax,edx
000312B7  83E00F            and eax,byte +0xf
000312BA  8845FB            mov [ebp-0x5],al
000312BD  837DF000          cmp dword [ebp-0x10],byte +0x0
000312C1  7506              jnz 0x312c9
000312C3  807DFB00          cmp byte [ebp-0x5],0x0
000312C7  7E30              jng 0x312f9
000312C9  C745F001000000    mov dword [ebp-0x10],0x1
000312D0  0FB645FB          movzx eax,byte [ebp-0x5]
000312D4  83C030            add eax,byte +0x30
000312D7  8845FB            mov [ebp-0x5],al
000312DA  807DFB39          cmp byte [ebp-0x5],0x39
000312DE  7E0A              jng 0x312ea
000312E0  0FB645FB          movzx eax,byte [ebp-0x5]
000312E4  83C007            add eax,byte +0x7
000312E7  8845FB            mov [ebp-0x5],al
000312EA  8B45FC            mov eax,[ebp-0x4]
000312ED  8D5001            lea edx,[eax+0x1]
000312F0  8955FC            mov [ebp-0x4],edx
000312F3  0FB655FB          movzx edx,byte [ebp-0x5]
000312F7  8810              mov [eax],dl
000312F9  836DF404          sub dword [ebp-0xc],byte +0x4
000312FD  837DF400          cmp dword [ebp-0xc],byte +0x0
00031301  79A8              jns 0x312ab
00031303  8B45FC            mov eax,[ebp-0x4]
00031306  C60000            mov byte [eax],0x0
00031309  8B4508            mov eax,[ebp+0x8]
0003130C  C9                leave
0003130D  C3                ret
0003130E  55                push ebp
0003130F  89E5              mov ebp,esp
00031311  83EC28            sub esp,byte +0x28
00031314  8B4508            mov eax,[ebp+0x8]
00031317  89442404          mov [esp+0x4],eax
0003131B  8D45E8            lea eax,[ebp-0x18]
0003131E  890424            mov [esp],eax
00031321  E83DFFFFFF        call dword 0x31263
00031326  8D45E8            lea eax,[ebp-0x18]
00031329  890424            mov [esp],eax
0003132C  E89FFEFFFF        call dword 0x311d0
00031331  C9                leave
00031332  C3                ret
00031333  55                push ebp
00031334  89E5              mov ebp,esp
00031336  83EC10            sub esp,byte +0x10
00031339  C745F400000000    mov dword [ebp-0xc],0x0
00031340  EB2D              jmp short 0x3136f
00031342  C745FC00000000    mov dword [ebp-0x4],0x0
00031349  EB1A              jmp short 0x31365
0003134B  C745F800000000    mov dword [ebp-0x8],0x0
00031352  EB04              jmp short 0x31358
00031354  8345F801          add dword [ebp-0x8],byte +0x1
00031358  817DF80F270000    cmp dword [ebp-0x8],0x270f
0003135F  7EF3              jng 0x31354
00031361  8345FC01          add dword [ebp-0x4],byte +0x1
00031365  837DFC09          cmp dword [ebp-0x4],byte +0x9
00031369  7EE0              jng 0x3134b
0003136B  8345F401          add dword [ebp-0xc],byte +0x1
0003136F  8B45F4            mov eax,[ebp-0xc]
00031372  3B4508            cmp eax,[ebp+0x8]
00031375  7CCB              jl 0x31342
00031377  C9                leave
00031378  C3                ret
00031379  6690              xchg ax,ax
0003137B  6690              xchg ax,ax
0003137D  6690              xchg ax,ax
0003137F  90                nop
00031380  55                push ebp
00031381  89E5              mov ebp,esp
00031383  56                push esi
00031384  57                push edi
00031385  51                push ecx
00031386  8B7D08            mov edi,[ebp+0x8]
00031389  8B750C            mov esi,[ebp+0xc]
0003138C  8B4D10            mov ecx,[ebp+0x10]
0003138F  83F900            cmp ecx,byte +0x0
00031392  740B              jz 0x3139f
00031394  3E8A06            mov al,[ds:esi]
00031397  46                inc esi
00031398  268807            mov [es:edi],al
0003139B  47                inc edi
0003139C  49                dec ecx
0003139D  EBF0              jmp short 0x3138f
0003139F  8B4508            mov eax,[ebp+0x8]
000313A2  59                pop ecx
000313A3  5F                pop edi
000313A4  5E                pop esi
000313A5  89EC              mov esp,ebp
000313A7  5D                pop ebp
000313A8  C3                ret
000313A9  55                push ebp
000313AA  89E5              mov ebp,esp
000313AC  56                push esi
000313AD  57                push edi
000313AE  51                push ecx
000313AF  8B7D08            mov edi,[ebp+0x8]
000313B2  8B550C            mov edx,[ebp+0xc]
000313B5  8B4D10            mov ecx,[ebp+0x10]
000313B8  83F900            cmp ecx,byte +0x0
000313BB  7406              jz 0x313c3
000313BD  8817              mov [edi],dl
000313BF  47                inc edi
000313C0  49                dec ecx
000313C1  EBF5              jmp short 0x313b8
000313C3  59                pop ecx
000313C4  5F                pop edi
000313C5  5E                pop esi
000313C6  89EC              mov esp,ebp
000313C8  5D                pop ebp
000313C9  C3                ret
000313CA  55                push ebp
000313CB  89E5              mov ebp,esp
000313CD  8B750C            mov esi,[ebp+0xc]
000313D0  8B7D08            mov edi,[ebp+0x8]
000313D3  8A06              mov al,[esi]
000313D5  46                inc esi
000313D6  8807              mov [edi],al
000313D8  47                inc edi
000313D9  3C00              cmp al,0x0
000313DB  75F6              jnz 0x313d3
000313DD  8B4508            mov eax,[ebp+0x8]
000313E0  5D                pop ebp
000313E1  C3                ret
000313E2  0000              add [eax],al
000313E4  0000              add [eax],al
000313E6  0000              add [eax],al
000313E8  0000              add [eax],al
000313EA  0000              add [eax],al
000313EC  0000              add [eax],al
000313EE  0000              add [eax],al
000313F0  0000              add [eax],al
000313F2  0000              add [eax],al
000313F4  0000              add [eax],al
000313F6  0000              add [eax],al
000313F8  0000              add [eax],al
000313FA  0000              add [eax],al
000313FC  0000              add [eax],al
000313FE  0000              add [eax],al
00031400  0A0A              or cl,[edx]
00031402  0A0A              or cl,[edx]
00031404  0A0A              or cl,[edx]
00031406  0A0A              or cl,[edx]
00031408  0A0A              or cl,[edx]
0003140A  0A0A              or cl,[edx]
0003140C  0A0A              or cl,[edx]
0003140E  0A2D2D2D2D2D      or ch,[dword 0x2d2d2d2d]
00031414  226373            and ah,[ebx+0x73]
00031417  7461              jz 0x3147a
00031419  7274              jc 0x3148f
0003141B  2220              and ah,[eax]
0003141D  626567            bound esp,[ebp+0x67]
00031420  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
00031427  2D0A002D2D        sub eax,0x2d2d000a
0003142C  2D2D2D2263        sub eax,0x63222d2d
00031431  7374              jnc 0x314a7
00031433  61                popad
00031434  7274              jc 0x314aa
00031436  2220              and ah,[eax]
00031438  66696E697368      imul bp,[esi+0x69],word 0x6873
0003143E  65642D2D2D2D2D    fs sub eax,0x2d2d2d2d
00031445  0A00              or al,[eax]
00031447  002D2D2D2D2D      add [dword 0x2d2d2d2d],ch
0003144D  226B65            and ch,[ebx+0x65]
00031450  726E              jc 0x314c0
00031452  656C              gs insb
00031454  5F                pop edi
00031455  6D                insd
00031456  61                popad
00031457  696E2220626567    imul ebp,[esi+0x22],dword 0x67656220
0003145E  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
00031465  2D0A004100        sub eax,0x41000a
0003146A  2E004200          add [cs:edx+0x0],al
0003146E  43                inc ebx
0003146F  0023              add [ebx],ah
00031471  0021              add [ecx],ah
00031473  007370            add [ebx+0x70],dh
00031476  7572              jnz 0x314ea
00031478  696F75735F6972    imul ebp,[edi+0x75],dword 0x72695f73
0003147F  713A              jno 0x314bb
00031481  2000              and [eax],al
00031483  0A00              or al,[eax]
00031485  0000              add [eax],al
00031487  0000              add [eax],al
00031489  0000              add [eax],al
0003148B  0000              add [eax],al
0003148D  0000              add [eax],al
0003148F  0000              add [eax],al
00031491  0000              add [eax],al
00031493  0000              add [eax],al
00031495  0000              add [eax],al
00031497  0000              add [eax],al
00031499  0000              add [eax],al
0003149B  0000              add [eax],al
0003149D  0000              add [eax],al
0003149F  0020              add [eax],ah
000314A1  004578            add [ebp+0x78],al
000314A4  636570            arpl [ebp+0x70],sp
000314A7  7469              jz 0x31512
000314A9  6F                outsd
000314AA  6E                outsb
000314AB  2120              and [eax],esp
000314AD  2D2D3E2000        sub eax,0x203e2d
000314B2  0A0A              or cl,[edx]
000314B4  004546            add [ebp+0x46],al
000314B7  4C                dec esp
000314B8  41                inc ecx
000314B9  47                inc edi
000314BA  53                push ebx
000314BB  3A00              cmp al,[eax]
000314BD  43                inc ebx
000314BE  53                push ebx
000314BF  3A00              cmp al,[eax]
000314C1  45                inc ebp
000314C2  49                dec ecx
000314C3  50                push eax
000314C4  3A00              cmp al,[eax]
000314C6  45                inc ebp
000314C7  7272              jc 0x3153b
000314C9  6F                outsd
000314CA  7220              jc 0x314ec
000314CC  636F64            arpl [edi+0x64],bp
000314CF  653A00            cmp al,[gs:eax]
000314D2  0000              add [eax],al
000314D4  0000              add [eax],al
000314D6  0000              add [eax],al
000314D8  0000              add [eax],al
000314DA  0000              add [eax],al
000314DC  0000              add [eax],al
000314DE  0000              add [eax],al
000314E0  23444520          and eax,[ebp+eax*2+0x20]
000314E4  44                inc esp
000314E5  69766964652045    imul esi,[esi+0x69],dword 0x45206564
000314EC  7272              jc 0x31560
000314EE  6F                outsd
000314EF  7200              jc 0x314f1
000314F1  0000              add [eax],al
000314F3  0000              add [eax],al
000314F5  0000              add [eax],al
000314F7  0000              add [eax],al
000314F9  0000              add [eax],al
000314FB  0000              add [eax],al
000314FD  0000              add [eax],al
000314FF  0000              add [eax],al
00031501  0000              add [eax],al
00031503  0000              add [eax],al
00031505  0000              add [eax],al
00031507  0000              add [eax],al
00031509  0000              add [eax],al
0003150B  0000              add [eax],al
0003150D  0000              add [eax],al
0003150F  0000              add [eax],al
00031511  0000              add [eax],al
00031513  0000              add [eax],al
00031515  0000              add [eax],al
00031517  0000              add [eax],al
00031519  0000              add [eax],al
0003151B  0000              add [eax],al
0003151D  0000              add [eax],al
0003151F  0023              add [ebx],ah
00031521  44                inc esp
00031522  42                inc edx
00031523  205245            and [edx+0x45],dl
00031526  53                push ebx
00031527  45                inc ebp
00031528  52                push edx
00031529  56                push esi
0003152A  45                inc ebp
0003152B  44                inc esp
0003152C  0000              add [eax],al
0003152E  0000              add [eax],al
00031530  0000              add [eax],al
00031532  0000              add [eax],al
00031534  0000              add [eax],al
00031536  0000              add [eax],al
00031538  0000              add [eax],al
0003153A  0000              add [eax],al
0003153C  0000              add [eax],al
0003153E  0000              add [eax],al
00031540  0000              add [eax],al
00031542  0000              add [eax],al
00031544  0000              add [eax],al
00031546  0000              add [eax],al
00031548  0000              add [eax],al
0003154A  0000              add [eax],al
0003154C  0000              add [eax],al
0003154E  0000              add [eax],al
00031550  0000              add [eax],al
00031552  0000              add [eax],al
00031554  0000              add [eax],al
00031556  0000              add [eax],al
00031558  0000              add [eax],al
0003155A  0000              add [eax],al
0003155C  0000              add [eax],al
0003155E  0000              add [eax],al
00031560  E280              loop 0x314e2
00031562  94                xchg eax,esp
00031563  2020              and [eax],ah
00031565  4E                dec esi
00031566  4D                dec ebp
00031567  49                dec ecx
00031568  20496E            and [ecx+0x6e],cl
0003156B  7465              jz 0x315d2
0003156D  7272              jc 0x315e1
0003156F  7570              jnz 0x315e1
00031571  7400              jz 0x31573
00031573  0000              add [eax],al
00031575  0000              add [eax],al
00031577  0000              add [eax],al
00031579  0000              add [eax],al
0003157B  0000              add [eax],al
0003157D  0000              add [eax],al
0003157F  0000              add [eax],al
00031581  0000              add [eax],al
00031583  0000              add [eax],al
00031585  0000              add [eax],al
00031587  0000              add [eax],al
00031589  0000              add [eax],al
0003158B  0000              add [eax],al
0003158D  0000              add [eax],al
0003158F  0000              add [eax],al
00031591  0000              add [eax],al
00031593  0000              add [eax],al
00031595  0000              add [eax],al
00031597  0000              add [eax],al
00031599  0000              add [eax],al
0003159B  0000              add [eax],al
0003159D  0000              add [eax],al
0003159F  0023              add [ebx],ah
000315A1  42                inc edx
000315A2  50                push eax
000315A3  204272            and [edx+0x72],al
000315A6  6561              gs popad
000315A8  6B706F69          imul esi,[eax+0x6f],byte +0x69
000315AC  6E                outsb
000315AD  7400              jz 0x315af
000315AF  0000              add [eax],al
000315B1  0000              add [eax],al
000315B3  0000              add [eax],al
000315B5  0000              add [eax],al
000315B7  0000              add [eax],al
000315B9  0000              add [eax],al
000315BB  0000              add [eax],al
000315BD  0000              add [eax],al
000315BF  0000              add [eax],al
000315C1  0000              add [eax],al
000315C3  0000              add [eax],al
000315C5  0000              add [eax],al
000315C7  0000              add [eax],al
000315C9  0000              add [eax],al
000315CB  0000              add [eax],al
000315CD  0000              add [eax],al
000315CF  0000              add [eax],al
000315D1  0000              add [eax],al
000315D3  0000              add [eax],al
000315D5  0000              add [eax],al
000315D7  0000              add [eax],al
000315D9  0000              add [eax],al
000315DB  0000              add [eax],al
000315DD  0000              add [eax],al
000315DF  0023              add [ebx],ah
000315E1  4F                dec edi
000315E2  46                inc esi
000315E3  204F76            and [edi+0x76],cl
000315E6  657266            gs jc 0x3164f
000315E9  6C                insb
000315EA  6F                outsd
000315EB  7700              ja 0x315ed
000315ED  0000              add [eax],al
000315EF  0000              add [eax],al
000315F1  0000              add [eax],al
000315F3  0000              add [eax],al
000315F5  0000              add [eax],al
000315F7  0000              add [eax],al
000315F9  0000              add [eax],al
000315FB  0000              add [eax],al
000315FD  0000              add [eax],al
000315FF  0000              add [eax],al
00031601  0000              add [eax],al
00031603  0000              add [eax],al
00031605  0000              add [eax],al
00031607  0000              add [eax],al
00031609  0000              add [eax],al
0003160B  0000              add [eax],al
0003160D  0000              add [eax],al
0003160F  0000              add [eax],al
00031611  0000              add [eax],al
00031613  0000              add [eax],al
00031615  0000              add [eax],al
00031617  0000              add [eax],al
00031619  0000              add [eax],al
0003161B  0000              add [eax],al
0003161D  0000              add [eax],al
0003161F  0023              add [ebx],ah
00031621  42                inc edx
00031622  52                push edx
00031623  20424F            and [edx+0x4f],al
00031626  55                push ebp
00031627  4E                dec esi
00031628  44                inc esp
00031629  205261            and [edx+0x61],dl
0003162C  6E                outsb
0003162D  6765204578        and [gs:di+0x78],al
00031632  636565            arpl [ebp+0x65],sp
00031635  6465640000        add [fs:eax],al
0003163A  0000              add [eax],al
0003163C  0000              add [eax],al
0003163E  0000              add [eax],al
00031640  0000              add [eax],al
00031642  0000              add [eax],al
00031644  0000              add [eax],al
00031646  0000              add [eax],al
00031648  0000              add [eax],al
0003164A  0000              add [eax],al
0003164C  0000              add [eax],al
0003164E  0000              add [eax],al
00031650  0000              add [eax],al
00031652  0000              add [eax],al
00031654  0000              add [eax],al
00031656  0000              add [eax],al
00031658  0000              add [eax],al
0003165A  0000              add [eax],al
0003165C  0000              add [eax],al
0003165E  0000              add [eax],al
00031660  235544            and edx,[ebp+0x44]
00031663  20496E            and [ecx+0x6e],cl
00031666  7661              jna 0x316c9
00031668  6C                insb
00031669  6964204F70636F64  imul esp,[eax+0x4f],dword 0x646f6370
00031671  652028            and [gs:eax],ch
00031674  55                push ebp
00031675  6E                outsb
00031676  646566696E656420  imul bp,[gs:esi+0x65],word 0x2064
0003167E  4F                dec edi
0003167F  7063              jo 0x316e4
00031681  6F                outsd
00031682  64652900          sub [gs:eax],eax
00031686  0000              add [eax],al
00031688  0000              add [eax],al
0003168A  0000              add [eax],al
0003168C  0000              add [eax],al
0003168E  0000              add [eax],al
00031690  0000              add [eax],al
00031692  0000              add [eax],al
00031694  0000              add [eax],al
00031696  0000              add [eax],al
00031698  0000              add [eax],al
0003169A  0000              add [eax],al
0003169C  0000              add [eax],al
0003169E  0000              add [eax],al
000316A0  234E4D            and ecx,[esi+0x4d]
000316A3  20446576          and [ebp+0x76],al
000316A7  696365204E6F74    imul esp,[ebx+0x65],dword 0x746f4e20
000316AE  204176            and [ecx+0x76],al
000316B1  61                popad
000316B2  696C61626C652028  imul ebp,[ecx+0x62],dword 0x2820656c
000316BA  4E                dec esi
000316BB  6F                outsd
000316BC  204D61            and [ebp+0x61],cl
000316BF  7468              jz 0x31729
000316C1  20436F            and [ebx+0x6f],al
000316C4  7072              jo 0x31738
000316C6  6F                outsd
000316C7  636573            arpl [ebp+0x73],sp
000316CA  736F              jnc 0x3173b
000316CC  7229              jc 0x316f7
000316CE  0000              add [eax],al
000316D0  0000              add [eax],al
000316D2  0000              add [eax],al
000316D4  0000              add [eax],al
000316D6  0000              add [eax],al
000316D8  0000              add [eax],al
000316DA  0000              add [eax],al
000316DC  0000              add [eax],al
000316DE  0000              add [eax],al
000316E0  23444620          and eax,[esi+eax*2+0x20]
000316E4  44                inc esp
000316E5  6F                outsd
000316E6  7562              jnz 0x3174a
000316E8  6C                insb
000316E9  65204661          and [gs:esi+0x61],al
000316ED  756C              jnz 0x3175b
000316EF  7400              jz 0x316f1
000316F1  0000              add [eax],al
000316F3  0000              add [eax],al
000316F5  0000              add [eax],al
000316F7  0000              add [eax],al
000316F9  0000              add [eax],al
000316FB  0000              add [eax],al
000316FD  0000              add [eax],al
000316FF  0000              add [eax],al
00031701  0000              add [eax],al
00031703  0000              add [eax],al
00031705  0000              add [eax],al
00031707  0000              add [eax],al
00031709  0000              add [eax],al
0003170B  0000              add [eax],al
0003170D  0000              add [eax],al
0003170F  0000              add [eax],al
00031711  0000              add [eax],al
00031713  0000              add [eax],al
00031715  0000              add [eax],al
00031717  0000              add [eax],al
00031719  0000              add [eax],al
0003171B  0000              add [eax],al
0003171D  0000              add [eax],al
0003171F  0020              add [eax],ah
00031721  2020              and [eax],ah
00031723  20436F            and [ebx+0x6f],al
00031726  7072              jo 0x3179a
00031728  6F                outsd
00031729  636573            arpl [ebp+0x73],sp
0003172C  736F              jnc 0x3179d
0003172E  7220              jc 0x31750
00031730  53                push ebx
00031731  65676D            gs a16 insd
00031734  656E              gs outsb
00031736  7420              jz 0x31758
00031738  4F                dec edi
00031739  7665              jna 0x317a0
0003173B  7272              jc 0x317af
0003173D  756E              jnz 0x317ad
0003173F  2028              and [eax],ch
00031741  7265              jc 0x317a8
00031743  7365              jnc 0x317aa
00031745  7276              jc 0x317bd
00031747  65642900          sub [fs:eax],eax
0003174B  0000              add [eax],al
0003174D  0000              add [eax],al
0003174F  0000              add [eax],al
00031751  0000              add [eax],al
00031753  0000              add [eax],al
00031755  0000              add [eax],al
00031757  0000              add [eax],al
00031759  0000              add [eax],al
0003175B  0000              add [eax],al
0003175D  0000              add [eax],al
0003175F  0023              add [ebx],ah
00031761  54                push esp
00031762  53                push ebx
00031763  20496E            and [ecx+0x6e],cl
00031766  7661              jna 0x317c9
00031768  6C                insb
00031769  6964205453530000  imul esp,[eax+0x54],dword 0x5353
00031771  0000              add [eax],al
00031773  0000              add [eax],al
00031775  0000              add [eax],al
00031777  0000              add [eax],al
00031779  0000              add [eax],al
0003177B  0000              add [eax],al
0003177D  0000              add [eax],al
0003177F  0000              add [eax],al
00031781  0000              add [eax],al
00031783  0000              add [eax],al
00031785  0000              add [eax],al
00031787  0000              add [eax],al
00031789  0000              add [eax],al
0003178B  0000              add [eax],al
0003178D  0000              add [eax],al
0003178F  0000              add [eax],al
00031791  0000              add [eax],al
00031793  0000              add [eax],al
00031795  0000              add [eax],al
00031797  0000              add [eax],al
00031799  0000              add [eax],al
0003179B  0000              add [eax],al
0003179D  0000              add [eax],al
0003179F  0023              add [ebx],ah
000317A1  4E                dec esi
000317A2  50                push eax
000317A3  205365            and [ebx+0x65],dl
000317A6  676D              a16 insd
000317A8  656E              gs outsb
000317AA  7420              jz 0x317cc
000317AC  4E                dec esi
000317AD  6F                outsd
000317AE  7420              jz 0x317d0
000317B0  50                push eax
000317B1  7265              jc 0x31818
000317B3  7365              jnc 0x3181a
000317B5  6E                outsb
000317B6  7400              jz 0x317b8
000317B8  0000              add [eax],al
000317BA  0000              add [eax],al
000317BC  0000              add [eax],al
000317BE  0000              add [eax],al
000317C0  0000              add [eax],al
000317C2  0000              add [eax],al
000317C4  0000              add [eax],al
000317C6  0000              add [eax],al
000317C8  0000              add [eax],al
000317CA  0000              add [eax],al
000317CC  0000              add [eax],al
000317CE  0000              add [eax],al
000317D0  0000              add [eax],al
000317D2  0000              add [eax],al
000317D4  0000              add [eax],al
000317D6  0000              add [eax],al
000317D8  0000              add [eax],al
000317DA  0000              add [eax],al
000317DC  0000              add [eax],al
000317DE  0000              add [eax],al
000317E0  235353            and edx,[ebx+0x53]
000317E3  205374            and [ebx+0x74],dl
000317E6  61                popad
000317E7  636B2D            arpl [ebx+0x2d],bp
000317EA  53                push ebx
000317EB  65676D            gs a16 insd
000317EE  656E              gs outsb
000317F0  7420              jz 0x31812
000317F2  46                inc esi
000317F3  61                popad
000317F4  756C              jnz 0x31862
000317F6  7400              jz 0x317f8
000317F8  0000              add [eax],al
000317FA  0000              add [eax],al
000317FC  0000              add [eax],al
000317FE  0000              add [eax],al
00031800  0000              add [eax],al
00031802  0000              add [eax],al
00031804  0000              add [eax],al
00031806  0000              add [eax],al
00031808  0000              add [eax],al
0003180A  0000              add [eax],al
0003180C  0000              add [eax],al
0003180E  0000              add [eax],al
00031810  0000              add [eax],al
00031812  0000              add [eax],al
00031814  0000              add [eax],al
00031816  0000              add [eax],al
00031818  0000              add [eax],al
0003181A  0000              add [eax],al
0003181C  0000              add [eax],al
0003181E  0000              add [eax],al
00031820  234750            and eax,[edi+0x50]
00031823  204765            and [edi+0x65],al
00031826  6E                outsb
00031827  657261            gs jc 0x3188b
0003182A  6C                insb
0003182B  205072            and [eax+0x72],dl
0003182E  6F                outsd
0003182F  7465              jz 0x31896
00031831  6374696F          arpl [ecx+ebp*2+0x6f],si
00031835  6E                outsb
00031836  0000              add [eax],al
00031838  0000              add [eax],al
0003183A  0000              add [eax],al
0003183C  0000              add [eax],al
0003183E  0000              add [eax],al
00031840  0000              add [eax],al
00031842  0000              add [eax],al
00031844  0000              add [eax],al
00031846  0000              add [eax],al
00031848  0000              add [eax],al
0003184A  0000              add [eax],al
0003184C  0000              add [eax],al
0003184E  0000              add [eax],al
00031850  0000              add [eax],al
00031852  0000              add [eax],al
00031854  0000              add [eax],al
00031856  0000              add [eax],al
00031858  0000              add [eax],al
0003185A  0000              add [eax],al
0003185C  0000              add [eax],al
0003185E  0000              add [eax],al
00031860  235046            and edx,[eax+0x46]
00031863  205061            and [eax+0x61],dl
00031866  6765204661        and [gs:bp+0x61],al
0003186B  756C              jnz 0x318d9
0003186D  7400              jz 0x3186f
0003186F  0000              add [eax],al
00031871  0000              add [eax],al
00031873  0000              add [eax],al
00031875  0000              add [eax],al
00031877  0000              add [eax],al
00031879  0000              add [eax],al
0003187B  0000              add [eax],al
0003187D  0000              add [eax],al
0003187F  0000              add [eax],al
00031881  0000              add [eax],al
00031883  0000              add [eax],al
00031885  0000              add [eax],al
00031887  0000              add [eax],al
00031889  0000              add [eax],al
0003188B  0000              add [eax],al
0003188D  0000              add [eax],al
0003188F  0000              add [eax],al
00031891  0000              add [eax],al
00031893  0000              add [eax],al
00031895  0000              add [eax],al
00031897  0000              add [eax],al
00031899  0000              add [eax],al
0003189B  0000              add [eax],al
0003189D  0000              add [eax],al
0003189F  00E2              add dl,ah
000318A1  8094202028496E74  adc byte [eax+0x6e492820],0x74
000318A9  656C              gs insb
000318AB  207265            and [edx+0x65],dh
000318AE  7365              jnc 0x31915
000318B0  7276              jc 0x31928
000318B2  65642E20446F20    and [cs:edi+ebp*2+0x20],al
000318B9  6E                outsb
000318BA  6F                outsd
000318BB  7420              jz 0x318dd
000318BD  7573              jnz 0x31932
000318BF  652E2900          sub [cs:eax],eax
000318C3  0000              add [eax],al
000318C5  0000              add [eax],al
000318C7  0000              add [eax],al
000318C9  0000              add [eax],al
000318CB  0000              add [eax],al
000318CD  0000              add [eax],al
000318CF  0000              add [eax],al
000318D1  0000              add [eax],al
000318D3  0000              add [eax],al
000318D5  0000              add [eax],al
000318D7  0000              add [eax],al
000318D9  0000              add [eax],al
000318DB  0000              add [eax],al
000318DD  0000              add [eax],al
000318DF  0023              add [ebx],ah
000318E1  4D                dec ebp
000318E2  46                inc esi
000318E3  207838            and [eax+0x38],bh
000318E6  37                aaa
000318E7  204650            and [esi+0x50],al
000318EA  55                push ebp
000318EB  20466C            and [esi+0x6c],al
000318EE  6F                outsd
000318EF  61                popad
000318F0  7469              jz 0x3195b
000318F2  6E                outsb
000318F3  672D506F696E      sub eax,0x6e696f50
000318F9  7420              jz 0x3191b
000318FB  45                inc ebp
000318FC  7272              jc 0x31970
000318FE  6F                outsd
000318FF  7220              jc 0x31921
00031901  284D61            sub [ebp+0x61],cl
00031904  7468              jz 0x3196e
00031906  204661            and [esi+0x61],al
00031909  756C              jnz 0x31977
0003190B  7429              jz 0x31936
0003190D  0000              add [eax],al
0003190F  0000              add [eax],al
00031911  0000              add [eax],al
00031913  0000              add [eax],al
00031915  0000              add [eax],al
00031917  0000              add [eax],al
00031919  0000              add [eax],al
0003191B  0000              add [eax],al
0003191D  0000              add [eax],al
0003191F  0023              add [ebx],ah
00031921  41                inc ecx
00031922  43                inc ebx
00031923  20416C            and [ecx+0x6c],al
00031926  69676E6D656E74    imul esp,[edi+0x6e],dword 0x746e656d
0003192D  204368            and [ebx+0x68],al
00031930  65636B00          arpl [gs:ebx+0x0],bp
00031934  0000              add [eax],al
00031936  0000              add [eax],al
00031938  0000              add [eax],al
0003193A  0000              add [eax],al
0003193C  0000              add [eax],al
0003193E  0000              add [eax],al
00031940  0000              add [eax],al
00031942  0000              add [eax],al
00031944  0000              add [eax],al
00031946  0000              add [eax],al
00031948  0000              add [eax],al
0003194A  0000              add [eax],al
0003194C  0000              add [eax],al
0003194E  0000              add [eax],al
00031950  0000              add [eax],al
00031952  0000              add [eax],al
00031954  0000              add [eax],al
00031956  0000              add [eax],al
00031958  0000              add [eax],al
0003195A  0000              add [eax],al
0003195C  0000              add [eax],al
0003195E  0000              add [eax],al
00031960  234D43            and ecx,[ebp+0x43]
00031963  204D61            and [ebp+0x61],cl
00031966  636869            arpl [eax+0x69],bp
00031969  6E                outsb
0003196A  65204368          and [gs:ebx+0x68],al
0003196E  65636B00          arpl [gs:ebx+0x0],bp
00031972  0000              add [eax],al
00031974  0000              add [eax],al
00031976  0000              add [eax],al
00031978  0000              add [eax],al
0003197A  0000              add [eax],al
0003197C  0000              add [eax],al
0003197E  0000              add [eax],al
00031980  0000              add [eax],al
00031982  0000              add [eax],al
00031984  0000              add [eax],al
00031986  0000              add [eax],al
00031988  0000              add [eax],al
0003198A  0000              add [eax],al
0003198C  0000              add [eax],al
0003198E  0000              add [eax],al
00031990  0000              add [eax],al
00031992  0000              add [eax],al
00031994  0000              add [eax],al
00031996  0000              add [eax],al
00031998  0000              add [eax],al
0003199A  0000              add [eax],al
0003199C  0000              add [eax],al
0003199E  0000              add [eax],al
000319A0  235846            and ebx,[eax+0x46]
000319A3  205349            and [ebx+0x49],dl
000319A6  4D                dec ebp
000319A7  44                inc esp
000319A8  20466C            and [esi+0x6c],al
000319AB  6F                outsd
000319AC  61                popad
000319AD  7469              jz 0x31a18
000319AF  6E                outsb
000319B0  672D506F696E      sub eax,0x6e696f50
000319B6  7420              jz 0x319d8
000319B8  45                inc ebp
000319B9  7863              js 0x31a1e
000319BB  657074            gs jo 0x31a32
000319BE  696F6E00000000    imul ebp,[edi+0x6e],dword 0x0
000319C5  0000              add [eax],al
000319C7  0000              add [eax],al
000319C9  0000              add [eax],al
000319CB  0000              add [eax],al
000319CD  0000              add [eax],al
000319CF  0000              add [eax],al
000319D1  0000              add [eax],al
000319D3  0000              add [eax],al
000319D5  0000              add [eax],al
000319D7  0000              add [eax],al
000319D9  0000              add [eax],al
000319DB  0000              add [eax],al
000319DD  0000              add [eax],al
000319DF  001400            add [eax+eax],dl
000319E2  0000              add [eax],al
000319E4  0000              add [eax],al
000319E6  0000              add [eax],al
000319E8  017A52            add [edx+0x52],edi
000319EB  0001              add [ecx],al
000319ED  7C08              jl 0x319f7
000319EF  011B              add [ebx],ebx
000319F1  0C04              or al,0x4
000319F3  0488              add al,0x88
000319F5  0100              add [eax],eax
000319F7  001C00            add [eax+eax],bl
000319FA  0000              add [eax],al
000319FC  1C00              sbb al,0x0
000319FE  0000              add [eax],al
00031A00  17                pop ss
00031A01  EC                in al,dx
00031A02  FF                db 0xff
00031A03  FF8E00000000      dec dword [esi+0x0]
00031A09  41                inc ecx
00031A0A  0E                push cs
00031A0B  088502420D05      or [ebp+0x50d4202],al
00031A11  028AC50C0404      add cl,[edx+0x4040cc5]
00031A17  0018              add [eax],bl
00031A19  0000              add [eax],al
00031A1B  003C00            add [eax+eax],bh
00031A1E  0000              add [eax],al
00031A20  85EC              test esp,ebp
00031A22  FF                db 0xff
00031A23  FF4B01            dec dword [ebx+0x1]
00031A26  0000              add [eax],al
00031A28  00410E            add [ecx+0xe],al
00031A2B  088502420D05      or [ebp+0x50d4202],al
00031A31  0000              add [eax],al
00031A33  0018              add [eax],bl
00031A35  0000              add [eax],al
00031A37  005800            add [eax+0x0],bl
00031A3A  0000              add [eax],al
00031A3C  B4ED              mov ah,0xed
00031A3E  FF                db 0xff
00031A3F  FF440000          inc dword [eax+eax+0x0]
00031A43  0000              add [eax],al
00031A45  41                inc ecx
00031A46  0E                push cs
00031A47  088502420D05      or [ebp+0x50d4202],al
00031A4D  0000              add [eax],al
00031A4F  0018              add [eax],bl
00031A51  0000              add [eax],al
00031A53  00740000          add [eax+eax+0x0],dh
00031A57  00DC              add ah,bl
00031A59  ED                in eax,dx
00031A5A  FF                db 0xff
00031A5B  FF440000          inc dword [eax+eax+0x0]
00031A5F  0000              add [eax],al
00031A61  41                inc ecx
00031A62  0E                push cs
00031A63  088502420D05      or [ebp+0x50d4202],al
00031A69  0000              add [eax],al
00031A6B  0018              add [eax],bl
00031A6D  0000              add [eax],al
00031A6F  009000000004      add [eax+0x4000000],dl
00031A75  EE                out dx,al
00031A76  FF                db 0xff
00031A77  FF440000          inc dword [eax+eax+0x0]
00031A7B  0000              add [eax],al
00031A7D  41                inc ecx
00031A7E  0E                push cs
00031A7F  088502420D05      or [ebp+0x50d4202],al
00031A85  0000              add [eax],al
00031A87  001C00            add [eax+eax],bl
00031A8A  0000              add [eax],al
00031A8C  AC                lodsb
00031A8D  0000              add [eax],al
00031A8F  002CEE            add [esi+ebp*8],ch
00031A92  FF                db 0xff
00031A93  FF4E00            dec dword [esi+0x0]
00031A96  0000              add [eax],al
00031A98  00410E            add [ecx+0xe],al
00031A9B  088502420D05      or [ebp+0x50d4202],al
00031AA1  024AC5            add cl,[edx-0x3b]
00031AA4  0C04              or al,0x4
00031AA6  0400              add al,0x0
00031AA8  1C00              sbb al,0x0
00031AAA  0000              add [eax],al
00031AAC  CC                int3
00031AAD  0000              add [eax],al
00031AAF  005AEE            add [edx-0x12],bl
00031AB2  FF                db 0xff
00031AB3  FFD0              call eax
00031AB5  0000              add [eax],al
00031AB7  0000              add [eax],al
00031AB9  41                inc ecx
00031ABA  0E                push cs
00031ABB  088502420D05      or [ebp+0x50d4202],al
00031AC1  02CC              add cl,ah
00031AC3  C50C04            lds ecx,[esp+eax]
00031AC6  0400              add al,0x0
00031AC8  1C00              sbb al,0x0
00031ACA  0000              add [eax],al
00031ACC  EC                in al,dx
00031ACD  0000              add [eax],al
00031ACF  000A              add [edx],cl
00031AD1  EF                out dx,eax
00031AD2  FF                db 0xff
00031AD3  FF2B              jmp dword far [ebx]
00031AD5  0000              add [eax],al
00031AD7  0000              add [eax],al
00031AD9  41                inc ecx
00031ADA  0E                push cs
00031ADB  088502420D05      or [ebp+0x50d4202],al
00031AE1  67C50C            lds ecx,[si]
00031AE4  0404              add al,0x4
00031AE6  0000              add [eax],al
00031AE8  1C00              sbb al,0x0
00031AEA  0000              add [eax],al
00031AEC  0C01              or al,0x1
00031AEE  0000              add [eax],al
00031AF0  15EFFFFF72        adc eax,0x72ffffef
00031AF5  0500000041        add eax,0x41000000
00031AFA  0E                push cs
00031AFB  088502420D05      or [ebp+0x50d4202],al
00031B01  036E05            add ebp,[esi+0x5]
00031B04  C50C04            lds ecx,[esp+eax]
00031B07  041C              add al,0x1c
00031B09  0000              add [eax],al
00031B0B  002C01            add [ecx+eax],ch
00031B0E  0000              add [eax],al
00031B10  67F4              a16 hlt
00031B12  FF                db 0xff
00031B13  FF7000            push dword [eax+0x0]
00031B16  0000              add [eax],al
00031B18  00410E            add [ecx+0xe],al
00031B1B  088502420D05      or [ebp+0x50d4202],al
00031B21  026CC50C          add ch,[ebp+eax*8+0xc]
00031B25  0404              add al,0x4
00031B27  001C00            add [eax+eax],bl
00031B2A  0000              add [eax],al
00031B2C  4C                dec esp
00031B2D  0100              add [eax],eax
00031B2F  00B7F4FFFF4F      add [edi+0x4ffffff4],dh
00031B35  0000              add [eax],al
00031B37  0000              add [eax],al
00031B39  41                inc ecx
00031B3A  0E                push cs
00031B3B  088502420D05      or [ebp+0x50d4202],al
00031B41  024BC5            add cl,[ebx-0x3b]
00031B44  0C04              or al,0x4
00031B46  0400              add al,0x0
00031B48  1C00              sbb al,0x0
00031B4A  0000              add [eax],al
00031B4C  6C                insb
00031B4D  0100              add [eax],eax
00031B4F  00E6              add dh,ah
00031B51  F4                hlt
00031B52  FF                db 0xff
00031B53  FF6C0000          jmp dword far [eax+eax+0x0]
00031B57  0000              add [eax],al
00031B59  41                inc ecx
00031B5A  0E                push cs
00031B5B  088502420D05      or [ebp+0x50d4202],al
00031B61  0268C5            add ch,[eax-0x3b]
00031B64  0C04              or al,0x4
00031B66  0400              add al,0x0
00031B68  2C00              sub al,0x0
00031B6A  0000              add [eax],al
00031B6C  8C01              mov [ecx],es
00031B6E  0000              add [eax],al
00031B70  32F5              xor dh,ch
00031B72  FF                db 0xff
00031B73  FF2D01000000      jmp dword far [dword 0x1]
00031B79  41                inc ecx
00031B7A  0E                push cs
00031B7B  088502420D05      or [ebp+0x50d4202],al
00031B81  49                dec ecx
00031B82  8703              xchg eax,[ebx]
00031B84  860483            xchg al,[ebx+eax*4]
00031B87  05031D01C3        add eax,0xc3011d03
00031B8C  41                inc ecx
00031B8D  C641C741          mov byte [ecx-0x39],0x41
00031B91  C50C04            lds ecx,[esp+eax]
00031B94  0400              add al,0x0
00031B96  0000              add [eax],al
00031B98  1C00              sbb al,0x0
00031B9A  0000              add [eax],al
00031B9C  BC010000C3        mov esp,0xc3000001
00031BA1  F6FF              idiv bh
00031BA3  FFAB00000000      jmp dword far [ebx+0x0]
00031BA9  41                inc ecx
00031BAA  0E                push cs
00031BAB  088502420D05      or [ebp+0x50d4202],al
00031BB1  02A7C50C0404      add ah,[edi+0x4040cc5]
00031BB7  001C00            add [eax+eax],bl
00031BBA  0000              add [eax],al
00031BBC  DC01              fadd qword [ecx]
00031BBE  0000              add [eax],al
00031BC0  4E                dec esi
00031BC1  F7FF              idiv edi
00031BC3  FF2500000000      jmp dword [dword 0x0]
00031BC9  41                inc ecx
00031BCA  0E                push cs
00031BCB  088502420D05      or [ebp+0x50d4202],al
00031BD1  61                popad
00031BD2  C50C04            lds ecx,[esp+eax]
00031BD5  0400              add al,0x0
00031BD7  001C00            add [eax+eax],bl
00031BDA  0000              add [eax],al
00031BDC  FC                cld
00031BDD  0100              add [eax],eax
00031BDF  0053F7            add [ebx-0x9],dl
00031BE2  FF                db 0xff
00031BE3  FF4600            inc dword [esi+0x0]
00031BE6  0000              add [eax],al
00031BE8  00410E            add [ecx+0xe],al
00031BEB  088502420D05      or [ebp+0x50d4202],al
00031BF1  0242C5            add al,[edx-0x3b]
00031BF4  0C04              or al,0x4
00031BF6  0400              add al,0x0
00031BF8  0000              add [eax],al
00031BFA  0000              add [eax],al
00031BFC  0000              add [eax],al
00031BFE  0000              add [eax],al
00031C00  0000              add [eax],al
00031C02  0000              add [eax],al
00031C04  0000              add [eax],al
00031C06  0000              add [eax],al
00031C08  0000              add [eax],al
00031C0A  0000              add [eax],al
00031C0C  0000              add [eax],al
00031C0E  0000              add [eax],al
00031C10  0000              add [eax],al
00031C12  0000              add [eax],al
00031C14  0000              add [eax],al
00031C16  0000              add [eax],al
00031C18  0000              add [eax],al
00031C1A  0000              add [eax],al
00031C1C  0000              add [eax],al
00031C1E  0000              add [eax],al
00031C20  0000              add [eax],al
00031C22  0000              add [eax],al
00031C24  0000              add [eax],al
00031C26  0000              add [eax],al
00031C28  0000              add [eax],al
00031C2A  0000              add [eax],al
00031C2C  0000              add [eax],al
00031C2E  0000              add [eax],al
00031C30  0000              add [eax],al
00031C32  0000              add [eax],al
00031C34  0000              add [eax],al
00031C36  0000              add [eax],al
00031C38  0000              add [eax],al
00031C3A  0000              add [eax],al
00031C3C  0000              add [eax],al
00031C3E  0000              add [eax],al
00031C40  0000              add [eax],al
00031C42  0000              add [eax],al
00031C44  0000              add [eax],al
00031C46  0000              add [eax],al
00031C48  0000              add [eax],al
00031C4A  0000              add [eax],al
00031C4C  0000              add [eax],al
00031C4E  0000              add [eax],al
00031C50  0000              add [eax],al
00031C52  0000              add [eax],al
00031C54  0000              add [eax],al
00031C56  0000              add [eax],al
00031C58  0000              add [eax],al
00031C5A  0000              add [eax],al
00031C5C  0000              add [eax],al
00031C5E  0000              add [eax],al
00031C60  0000              add [eax],al
00031C62  0000              add [eax],al
00031C64  0000              add [eax],al
00031C66  0000              add [eax],al
00031C68  0000              add [eax],al
00031C6A  0000              add [eax],al
00031C6C  0000              add [eax],al
00031C6E  0000              add [eax],al
00031C70  0000              add [eax],al
00031C72  0000              add [eax],al
00031C74  0000              add [eax],al
00031C76  0000              add [eax],al
00031C78  0000              add [eax],al
00031C7A  0000              add [eax],al
00031C7C  0000              add [eax],al
00031C7E  0000              add [eax],al
00031C80  0000              add [eax],al
00031C82  0000              add [eax],al
00031C84  0000              add [eax],al
00031C86  0000              add [eax],al
00031C88  0000              add [eax],al
00031C8A  0000              add [eax],al
00031C8C  0000              add [eax],al
00031C8E  0000              add [eax],al
00031C90  0000              add [eax],al
00031C92  0000              add [eax],al
00031C94  0000              add [eax],al
00031C96  0000              add [eax],al
00031C98  0000              add [eax],al
00031C9A  0000              add [eax],al
00031C9C  0000              add [eax],al
00031C9E  0000              add [eax],al
00031CA0  0000              add [eax],al
00031CA2  0000              add [eax],al
00031CA4  0000              add [eax],al
00031CA6  0000              add [eax],al
00031CA8  0000              add [eax],al
00031CAA  0000              add [eax],al
00031CAC  0000              add [eax],al
00031CAE  0000              add [eax],al
00031CB0  0000              add [eax],al
00031CB2  0000              add [eax],al
00031CB4  0000              add [eax],al
00031CB6  0000              add [eax],al
00031CB8  0000              add [eax],al
00031CBA  0000              add [eax],al
00031CBC  0000              add [eax],al
00031CBE  0000              add [eax],al
00031CC0  0000              add [eax],al
00031CC2  0000              add [eax],al
00031CC4  0000              add [eax],al
00031CC6  0000              add [eax],al
00031CC8  0000              add [eax],al
00031CCA  0000              add [eax],al
00031CCC  0000              add [eax],al
00031CCE  0000              add [eax],al
00031CD0  0000              add [eax],al
00031CD2  0000              add [eax],al
00031CD4  0000              add [eax],al
00031CD6  0000              add [eax],al
00031CD8  0000              add [eax],al
00031CDA  0000              add [eax],al
00031CDC  0000              add [eax],al
00031CDE  0000              add [eax],al
00031CE0  0000              add [eax],al
00031CE2  0000              add [eax],al
00031CE4  0000              add [eax],al
00031CE6  0000              add [eax],al
00031CE8  0000              add [eax],al
00031CEA  0000              add [eax],al
00031CEC  0000              add [eax],al
00031CEE  0000              add [eax],al
00031CF0  0000              add [eax],al
00031CF2  0000              add [eax],al
00031CF4  0000              add [eax],al
00031CF6  0000              add [eax],al
00031CF8  0000              add [eax],al
00031CFA  0000              add [eax],al
00031CFC  0000              add [eax],al
00031CFE  0000              add [eax],al
00031D00  0000              add [eax],al
00031D02  0000              add [eax],al
00031D04  0000              add [eax],al
00031D06  0000              add [eax],al
00031D08  0000              add [eax],al
00031D0A  0000              add [eax],al
00031D0C  0000              add [eax],al
00031D0E  0000              add [eax],al
00031D10  0000              add [eax],al
00031D12  0000              add [eax],al
00031D14  0000              add [eax],al
00031D16  0000              add [eax],al
00031D18  0000              add [eax],al
00031D1A  0000              add [eax],al
00031D1C  0000              add [eax],al
00031D1E  0000              add [eax],al
00031D20  0000              add [eax],al
00031D22  0000              add [eax],al
00031D24  0000              add [eax],al
00031D26  0000              add [eax],al
00031D28  0000              add [eax],al
00031D2A  0000              add [eax],al
00031D2C  0000              add [eax],al
00031D2E  0000              add [eax],al
00031D30  0000              add [eax],al
00031D32  0000              add [eax],al
00031D34  0000              add [eax],al
00031D36  0000              add [eax],al
00031D38  0000              add [eax],al
00031D3A  0000              add [eax],al
00031D3C  0000              add [eax],al
00031D3E  0000              add [eax],al
00031D40  0000              add [eax],al
00031D42  0000              add [eax],al
00031D44  0000              add [eax],al
00031D46  0000              add [eax],al
00031D48  0000              add [eax],al
00031D4A  0000              add [eax],al
00031D4C  0000              add [eax],al
00031D4E  0000              add [eax],al
00031D50  0000              add [eax],al
00031D52  0000              add [eax],al
00031D54  0000              add [eax],al
00031D56  0000              add [eax],al
00031D58  0000              add [eax],al
00031D5A  0000              add [eax],al
00031D5C  0000              add [eax],al
00031D5E  0000              add [eax],al
00031D60  0000              add [eax],al
00031D62  0000              add [eax],al
00031D64  0000              add [eax],al
00031D66  0000              add [eax],al
00031D68  0000              add [eax],al
00031D6A  0000              add [eax],al
00031D6C  0000              add [eax],al
00031D6E  0000              add [eax],al
00031D70  0000              add [eax],al
00031D72  0000              add [eax],al
00031D74  0000              add [eax],al
00031D76  0000              add [eax],al
00031D78  0000              add [eax],al
00031D7A  0000              add [eax],al
00031D7C  0000              add [eax],al
00031D7E  0000              add [eax],al
00031D80  0000              add [eax],al
00031D82  0000              add [eax],al
00031D84  0000              add [eax],al
00031D86  0000              add [eax],al
00031D88  0000              add [eax],al
00031D8A  0000              add [eax],al
00031D8C  0000              add [eax],al
00031D8E  0000              add [eax],al
00031D90  0000              add [eax],al
00031D92  0000              add [eax],al
00031D94  0000              add [eax],al
00031D96  0000              add [eax],al
00031D98  0000              add [eax],al
00031D9A  0000              add [eax],al
00031D9C  0000              add [eax],al
00031D9E  0000              add [eax],al
00031DA0  0000              add [eax],al
00031DA2  0000              add [eax],al
00031DA4  0000              add [eax],al
00031DA6  0000              add [eax],al
00031DA8  0000              add [eax],al
00031DAA  0000              add [eax],al
00031DAC  0000              add [eax],al
00031DAE  0000              add [eax],al
00031DB0  0000              add [eax],al
00031DB2  0000              add [eax],al
00031DB4  0000              add [eax],al
00031DB6  0000              add [eax],al
00031DB8  0000              add [eax],al
00031DBA  0000              add [eax],al
00031DBC  0000              add [eax],al
00031DBE  0000              add [eax],al
00031DC0  0000              add [eax],al
00031DC2  0000              add [eax],al
00031DC4  0000              add [eax],al
00031DC6  0000              add [eax],al
00031DC8  0000              add [eax],al
00031DCA  0000              add [eax],al
00031DCC  0000              add [eax],al
00031DCE  0000              add [eax],al
00031DD0  0000              add [eax],al
00031DD2  0000              add [eax],al
00031DD4  0000              add [eax],al
00031DD6  0000              add [eax],al
00031DD8  0000              add [eax],al
00031DDA  0000              add [eax],al
00031DDC  0000              add [eax],al
00031DDE  0000              add [eax],al
00031DE0  0000              add [eax],al
00031DE2  0000              add [eax],al
00031DE4  0000              add [eax],al
00031DE6  0000              add [eax],al
00031DE8  0000              add [eax],al
00031DEA  0000              add [eax],al
00031DEC  0000              add [eax],al
00031DEE  0000              add [eax],al
00031DF0  0000              add [eax],al
00031DF2  0000              add [eax],al
00031DF4  0000              add [eax],al
00031DF6  0000              add [eax],al
00031DF8  0000              add [eax],al
00031DFA  0000              add [eax],al
00031DFC  0000              add [eax],al
00031DFE  0000              add [eax],al
00031E00  0000              add [eax],al
00031E02  0000              add [eax],al
00031E04  0000              add [eax],al
00031E06  0000              add [eax],al
00031E08  0000              add [eax],al
00031E0A  0000              add [eax],al
00031E0C  0000              add [eax],al
00031E0E  0000              add [eax],al
00031E10  0000              add [eax],al
00031E12  0000              add [eax],al
00031E14  0000              add [eax],al
00031E16  0000              add [eax],al
00031E18  0000              add [eax],al
00031E1A  0000              add [eax],al
00031E1C  0000              add [eax],al
00031E1E  0000              add [eax],al
00031E20  0000              add [eax],al
00031E22  0000              add [eax],al
00031E24  0000              add [eax],al
00031E26  0000              add [eax],al
00031E28  0000              add [eax],al
00031E2A  0000              add [eax],al
00031E2C  0000              add [eax],al
00031E2E  0000              add [eax],al
00031E30  0000              add [eax],al
00031E32  0000              add [eax],al
00031E34  0000              add [eax],al
00031E36  0000              add [eax],al
00031E38  0000              add [eax],al
00031E3A  0000              add [eax],al
00031E3C  0000              add [eax],al
00031E3E  0000              add [eax],al
00031E40  0000              add [eax],al
00031E42  0000              add [eax],al
00031E44  0000              add [eax],al
00031E46  0000              add [eax],al
00031E48  0000              add [eax],al
00031E4A  0000              add [eax],al
00031E4C  0000              add [eax],al
00031E4E  0000              add [eax],al
00031E50  0000              add [eax],al
00031E52  0000              add [eax],al
00031E54  0000              add [eax],al
00031E56  0000              add [eax],al
00031E58  0000              add [eax],al
00031E5A  0000              add [eax],al
00031E5C  0000              add [eax],al
00031E5E  0000              add [eax],al
00031E60  0000              add [eax],al
00031E62  0000              add [eax],al
00031E64  0000              add [eax],al
00031E66  0000              add [eax],al
00031E68  0000              add [eax],al
00031E6A  0000              add [eax],al
00031E6C  0000              add [eax],al
00031E6E  0000              add [eax],al
00031E70  0000              add [eax],al
00031E72  0000              add [eax],al
00031E74  0000              add [eax],al
00031E76  0000              add [eax],al
00031E78  0000              add [eax],al
00031E7A  0000              add [eax],al
00031E7C  0000              add [eax],al
00031E7E  0000              add [eax],al
00031E80  0000              add [eax],al
00031E82  0000              add [eax],al
00031E84  0000              add [eax],al
00031E86  0000              add [eax],al
00031E88  0000              add [eax],al
00031E8A  0000              add [eax],al
00031E8C  0000              add [eax],al
00031E8E  0000              add [eax],al
00031E90  0000              add [eax],al
00031E92  0000              add [eax],al
00031E94  0000              add [eax],al
00031E96  0000              add [eax],al
00031E98  0000              add [eax],al
00031E9A  0000              add [eax],al
00031E9C  0000              add [eax],al
00031E9E  0000              add [eax],al
00031EA0  0000              add [eax],al
00031EA2  0000              add [eax],al
00031EA4  0000              add [eax],al
00031EA6  0000              add [eax],al
00031EA8  0000              add [eax],al
00031EAA  0000              add [eax],al
00031EAC  0000              add [eax],al
00031EAE  0000              add [eax],al
00031EB0  0000              add [eax],al
00031EB2  0000              add [eax],al
00031EB4  0000              add [eax],al
00031EB6  0000              add [eax],al
00031EB8  0000              add [eax],al
00031EBA  0000              add [eax],al
00031EBC  0000              add [eax],al
00031EBE  0000              add [eax],al
00031EC0  0000              add [eax],al
00031EC2  0000              add [eax],al
00031EC4  0000              add [eax],al
00031EC6  0000              add [eax],al
00031EC8  0000              add [eax],al
00031ECA  0000              add [eax],al
00031ECC  0000              add [eax],al
00031ECE  0000              add [eax],al
00031ED0  0000              add [eax],al
00031ED2  0000              add [eax],al
00031ED4  0000              add [eax],al
00031ED6  0000              add [eax],al
00031ED8  0000              add [eax],al
00031EDA  0000              add [eax],al
00031EDC  0000              add [eax],al
00031EDE  0000              add [eax],al
00031EE0  0000              add [eax],al
00031EE2  0000              add [eax],al
00031EE4  0000              add [eax],al
00031EE6  0000              add [eax],al
00031EE8  0000              add [eax],al
00031EEA  0000              add [eax],al
00031EEC  0000              add [eax],al
00031EEE  0000              add [eax],al
00031EF0  0000              add [eax],al
00031EF2  0000              add [eax],al
00031EF4  0000              add [eax],al
00031EF6  0000              add [eax],al
00031EF8  0000              add [eax],al
00031EFA  0000              add [eax],al
00031EFC  0000              add [eax],al
00031EFE  0000              add [eax],al
00031F00  0000              add [eax],al
00031F02  0000              add [eax],al
00031F04  0000              add [eax],al
00031F06  0000              add [eax],al
00031F08  0000              add [eax],al
00031F0A  0000              add [eax],al
00031F0C  0000              add [eax],al
00031F0E  0000              add [eax],al
00031F10  0000              add [eax],al
00031F12  0000              add [eax],al
00031F14  0000              add [eax],al
00031F16  0000              add [eax],al
00031F18  0000              add [eax],al
00031F1A  0000              add [eax],al
00031F1C  0000              add [eax],al
00031F1E  0000              add [eax],al
00031F20  0000              add [eax],al
00031F22  0000              add [eax],al
00031F24  0000              add [eax],al
00031F26  0000              add [eax],al
00031F28  0000              add [eax],al
00031F2A  0000              add [eax],al
00031F2C  0000              add [eax],al
00031F2E  0000              add [eax],al
00031F30  0000              add [eax],al
00031F32  0000              add [eax],al
00031F34  0000              add [eax],al
00031F36  0000              add [eax],al
00031F38  0000              add [eax],al
00031F3A  0000              add [eax],al
00031F3C  0000              add [eax],al
00031F3E  0000              add [eax],al
00031F40  0000              add [eax],al
00031F42  0000              add [eax],al
00031F44  0000              add [eax],al
00031F46  0000              add [eax],al
00031F48  0000              add [eax],al
00031F4A  0000              add [eax],al
00031F4C  0000              add [eax],al
00031F4E  0000              add [eax],al
00031F50  0000              add [eax],al
00031F52  0000              add [eax],al
00031F54  0000              add [eax],al
00031F56  0000              add [eax],al
00031F58  0000              add [eax],al
00031F5A  0000              add [eax],al
00031F5C  0000              add [eax],al
00031F5E  0000              add [eax],al
00031F60  0000              add [eax],al
00031F62  0000              add [eax],al
00031F64  0000              add [eax],al
00031F66  0000              add [eax],al
00031F68  0000              add [eax],al
00031F6A  0000              add [eax],al
00031F6C  0000              add [eax],al
00031F6E  0000              add [eax],al
00031F70  0000              add [eax],al
00031F72  0000              add [eax],al
00031F74  0000              add [eax],al
00031F76  0000              add [eax],al
00031F78  0000              add [eax],al
00031F7A  0000              add [eax],al
00031F7C  0000              add [eax],al
00031F7E  0000              add [eax],al
00031F80  0000              add [eax],al
00031F82  0000              add [eax],al
00031F84  0000              add [eax],al
00031F86  0000              add [eax],al
00031F88  0000              add [eax],al
00031F8A  0000              add [eax],al
00031F8C  0000              add [eax],al
00031F8E  0000              add [eax],al
00031F90  0000              add [eax],al
00031F92  0000              add [eax],al
00031F94  0000              add [eax],al
00031F96  0000              add [eax],al
00031F98  0000              add [eax],al
00031F9A  0000              add [eax],al
00031F9C  0000              add [eax],al
00031F9E  0000              add [eax],al
00031FA0  0000              add [eax],al
00031FA2  0000              add [eax],al
00031FA4  0000              add [eax],al
00031FA6  0000              add [eax],al
00031FA8  0000              add [eax],al
00031FAA  0000              add [eax],al
00031FAC  0000              add [eax],al
00031FAE  0000              add [eax],al
00031FB0  0000              add [eax],al
00031FB2  0000              add [eax],al
00031FB4  0000              add [eax],al
00031FB6  0000              add [eax],al
00031FB8  0000              add [eax],al
00031FBA  0000              add [eax],al
00031FBC  0000              add [eax],al
00031FBE  0000              add [eax],al
00031FC0  0000              add [eax],al
00031FC2  0000              add [eax],al
00031FC4  0000              add [eax],al
00031FC6  0000              add [eax],al
00031FC8  0000              add [eax],al
00031FCA  0000              add [eax],al
00031FCC  0000              add [eax],al
00031FCE  0000              add [eax],al
00031FD0  0000              add [eax],al
00031FD2  0000              add [eax],al
00031FD4  0000              add [eax],al
00031FD6  0000              add [eax],al
00031FD8  0000              add [eax],al
00031FDA  0000              add [eax],al
00031FDC  0000              add [eax],al
00031FDE  0000              add [eax],al
00031FE0  0000              add [eax],al
00031FE2  0000              add [eax],al
00031FE4  0000              add [eax],al
00031FE6  0000              add [eax],al
00031FE8  0000              add [eax],al
00031FEA  0000              add [eax],al
00031FEC  0000              add [eax],al
00031FEE  0000              add [eax],al
00031FF0  0000              add [eax],al
00031FF2  0000              add [eax],al
00031FF4  0000              add [eax],al
00031FF6  0000              add [eax],al
00031FF8  0000              add [eax],al
00031FFA  0000              add [eax],al
00031FFC  0000              add [eax],al
00031FFE  0000              add [eax],al
00032000  5E                pop esi
00032001  0000              add [eax],al
00032003  0000              add [eax],al
00032005  0000              add [eax],al
00032007  0000              add [eax],al
00032009  0000              add [eax],al
0003200B  0000              add [eax],al
0003200D  0000              add [eax],al
0003200F  0000              add [eax],al
00032011  0000              add [eax],al
00032013  0000              add [eax],al
00032015  0000              add [eax],al
00032017  0000              add [eax],al
00032019  0000              add [eax],al
0003201B  0000              add [eax],al
0003201D  0000              add [eax],al
0003201F  00F0              add al,dh
00032021  07                pop es
00032022  0300              add eax,[eax]
00032024  008000005465      add [eax+0x65540000],al
0003202A  7374              jnc 0x320a0
0003202C  41                inc ecx
0003202D  0000              add [eax],al
0003202F  0000              add [eax],al
00032031  0000              add [eax],al
00032033  0000              add [eax],al
00032035  0000              add [eax],al
00032037  0000              add [eax],al
00032039  0000              add [eax],al
0003203B  0000              add [eax],al
0003203D  0000              add [eax],al
0003203F  0000              add [eax],al
00032041  0000              add [eax],al
00032043  0000              add [eax],al
00032045  0000              add [eax],al
00032047  003408            add [eax+ecx],dh
0003204A  0300              add eax,[eax]
0003204C  008000005465      add [eax+0x65540000],al
00032052  7374              jnc 0x320c8
00032054  42                inc edx
00032055  0000              add [eax],al
00032057  0000              add [eax],al
00032059  0000              add [eax],al
0003205B  0000              add [eax],al
0003205D  0000              add [eax],al
0003205F  0000              add [eax],al
00032061  0000              add [eax],al
00032063  0000              add [eax],al
00032065  0000              add [eax],al
00032067  0000              add [eax],al
00032069  0000              add [eax],al
0003206B  0000              add [eax],al
0003206D  0000              add [eax],al
0003206F  007808            add [eax+0x8],bh
00032072  0300              add eax,[eax]
00032074  008000005465      add [eax+0x65540000],al
0003207A  7374              jnc 0x320f0
0003207C  43                inc ebx
0003207D  0000              add [eax],al
0003207F  0000              add [eax],al
00032081  0000              add [eax],al
00032083  0000              add [eax],al
00032085  0000              add [eax],al
00032087  0000              add [eax],al
00032089  0000              add [eax],al
0003208B  0000              add [eax],al
0003208D  0000              add [eax],al
0003208F  0000              add [eax],al
00032091  0000              add [eax],al
00032093  0000              add [eax],al
00032095  0000              add [eax],al
00032097  004743            add [edi+0x43],al
0003209A  43                inc ebx
0003209B  3A20              cmp ah,[eax]
0003209D  285562            sub [ebp+0x62],dl
000320A0  756E              jnz 0x32110
000320A2  7475              jz 0x32119
000320A4  2F                das
000320A5  4C                dec esp
000320A6  696E61726F2034    imul ebp,[esi+0x61],dword 0x34206f72
000320AD  2E382E            cmp [cs:esi],ch
000320B0  312D31307562      xor [dword 0x62753031],ebp
000320B6  756E              jnz 0x32126
000320B8  7475              jz 0x3212f
000320BA  3929              cmp [ecx],ebp
000320BC  20342E            and [esi+ebp],dh
000320BF  382E              cmp [esi],ch
000320C1  3100              xor [eax],eax
000320C3  002E              add [esi],ch
000320C5  7368              jnc 0x3212f
000320C7  7374              jnc 0x3213d
000320C9  7274              jc 0x3213f
000320CB  61                popad
000320CC  6200              bound eax,[eax]
000320CE  2E7465            cs jz 0x32136
000320D1  7874              js 0x32147
000320D3  002E              add [esi],ch
000320D5  726F              jc 0x32146
000320D7  6461              fs popad
000320D9  7461              jz 0x3213c
000320DB  002E              add [esi],ch
000320DD  65685F667261      gs push dword 0x6172665f
000320E3  6D                insd
000320E4  65002E            add [gs:esi],ch
000320E7  6461              fs popad
000320E9  7461              jz 0x3214c
000320EB  002E              add [esi],ch
000320ED  627373            bound esi,[ebx+0x73]
000320F0  002E              add [esi],ch
000320F2  636F6D            arpl [edi+0x6d],bp
000320F5  6D                insd
000320F6  656E              gs outsb
000320F8  7400              jz 0x320fa
000320FA  0000              add [eax],al
000320FC  0000              add [eax],al
000320FE  0000              add [eax],al
00032100  0000              add [eax],al
00032102  0000              add [eax],al
00032104  0000              add [eax],al
00032106  0000              add [eax],al
00032108  0000              add [eax],al
0003210A  0000              add [eax],al
0003210C  0000              add [eax],al
0003210E  0000              add [eax],al
00032110  0000              add [eax],al
00032112  0000              add [eax],al
00032114  0000              add [eax],al
00032116  0000              add [eax],al
00032118  0000              add [eax],al
0003211A  0000              add [eax],al
0003211C  0000              add [eax],al
0003211E  0000              add [eax],al
00032120  0000              add [eax],al
00032122  0000              add [eax],al
00032124  0B00              or eax,[eax]
00032126  0000              add [eax],al
00032128  0100              add [eax],eax
0003212A  0000              add [eax],al
0003212C  06                push es
0003212D  0000              add [eax],al
0003212F  0000              add [eax],al
00032131  0403              add al,0x3
00032133  0000              add [eax],al
00032135  0400              add al,0x0
00032137  00E2              add dl,ah
00032139  0F0000            sldt [eax]
0003213C  0000              add [eax],al
0003213E  0000              add [eax],al
00032140  0000              add [eax],al
00032142  0000              add [eax],al
00032144  1000              adc [eax],al
00032146  0000              add [eax],al
00032148  0000              add [eax],al
0003214A  0000              add [eax],al
0003214C  1100              adc [eax],eax
0003214E  0000              add [eax],al
00032150  0100              add [eax],eax
00032152  0000              add [eax],al
00032154  0200              add al,[eax]
00032156  0000              add [eax],al
00032158  001403            add [ebx+eax],dl
0003215B  0000              add [eax],al
0003215D  1400              adc al,0x0
0003215F  00E0              add al,ah
00032161  0500000000        add eax,0x0
00032166  0000              add [eax],al
00032168  0000              add [eax],al
0003216A  0000              add [eax],al
0003216C  2000              and [eax],al
0003216E  0000              add [eax],al
00032170  0000              add [eax],al
00032172  0000              add [eax],al
00032174  1900              sbb [eax],eax
00032176  0000              add [eax],al
00032178  0100              add [eax],eax
0003217A  0000              add [eax],al
0003217C  0200              add al,[eax]
0003217E  0000              add [eax],al
00032180  E019              loopne 0x3219b
00032182  0300              add eax,[eax]
00032184  E019              loopne 0x3219f
00032186  0000              add [eax],al
00032188  1802              sbb [edx],al
0003218A  0000              add [eax],al
0003218C  0000              add [eax],al
0003218E  0000              add [eax],al
00032190  0000              add [eax],al
00032192  0000              add [eax],al
00032194  0400              add al,0x0
00032196  0000              add [eax],al
00032198  0000              add [eax],al
0003219A  0000              add [eax],al
0003219C  2300              and eax,[eax]
0003219E  0000              add [eax],al
000321A0  0100              add [eax],eax
000321A2  0000              add [eax],al
000321A4  0300              add eax,[eax]
000321A6  0000              add [eax],al
000321A8  0020              add [eax],ah
000321AA  0300              add eax,[eax]
000321AC  0020              add [eax],ah
000321AE  0000              add [eax],al
000321B0  98                cwde
000321B1  0000              add [eax],al
000321B3  0000              add [eax],al
000321B5  0000              add [eax],al
000321B7  0000              add [eax],al
000321B9  0000              add [eax],al
000321BB  0020              add [eax],ah
000321BD  0000              add [eax],al
000321BF  0000              add [eax],al
000321C1  0000              add [eax],al
000321C3  0029              add [ecx],ch
000321C5  0000              add [eax],al
000321C7  0008              add [eax],cl
000321C9  0000              add [eax],al
000321CB  0003              add [ebx],al
000321CD  0000              add [eax],al
000321CF  00A020030098      add [eax-0x67fffce0],ah
000321D5  2000              and [eax],al
000321D7  0030              add [eax],dh
000321D9  96                xchg eax,esi
000321DA  0100              add [eax],eax
000321DC  0000              add [eax],al
000321DE  0000              add [eax],al
000321E0  0000              add [eax],al
000321E2  0000              add [eax],al
000321E4  2000              and [eax],al
000321E6  0000              add [eax],al
000321E8  0000              add [eax],al
000321EA  0000              add [eax],al
000321EC  2E0000            add [cs:eax],al
000321EF  0001              add [ecx],al
000321F1  0000              add [eax],al
000321F3  0030              add [eax],dh
000321F5  0000              add [eax],al
000321F7  0000              add [eax],al
000321F9  0000              add [eax],al
000321FB  00982000002B      add [eax+0x2b000020],bl
00032201  0000              add [eax],al
00032203  0000              add [eax],al
00032205  0000              add [eax],al
00032207  0000              add [eax],al
00032209  0000              add [eax],al
0003220B  0001              add [ecx],al
0003220D  0000              add [eax],al
0003220F  0001              add [ecx],al
00032211  0000              add [eax],al
00032213  0001              add [ecx],al
00032215  0000              add [eax],al
00032217  0003              add [ebx],al
00032219  0000              add [eax],al
0003221B  0000              add [eax],al
0003221D  0000              add [eax],al
0003221F  0000              add [eax],al
00032221  0000              add [eax],al
00032223  00C3              add bl,al
00032225  2000              and [eax],al
00032227  0037              add [edi],dh
00032229  0000              add [eax],al
0003222B  0000              add [eax],al
0003222D  0000              add [eax],al
0003222F  0000              add [eax],al
00032231  0000              add [eax],al
00032233  0001              add [ecx],al
00032235  0000              add [eax],al
00032237  0000              add [eax],al
00032239  0000              add [eax],al
0003223B  00                db 0x00
