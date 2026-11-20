.model small ;code Segment +1Data Segment
.stack 100h ;hex= memory address , 250byte
.data ;data segment
msg db "Hello World!",13,10, "Good morning!$" ;string declare,$=string terminate
good db 13,10, "Good morning!$" ; 13,10=new line
;define byte=1 Byte =8bits
;define word=2 Byte =16bits
.code ;code segment

;stack== push,pop,call,ret
;data == input+output var
;code == whole code
;CS,ES,SS,DS == 16 bit 

main proc; main funtion
    mov ax,@data
    mov ds,ax ; data segment activate
    
    ;AX = accumulator reg = arithmatic+logical =16 bits
    ;BX =base register =bin,hex,oct,dec,ascii  =16 bits
    ;CX =counter register =loop                =16 bits
    ;DX =data register = outputregister        =16 bits
    ;AX=AH(8high) : AL(8lower)
    ;BX=BH:BL ,CX=CH:CL ,DX=DH:DL 
    
    ;string print
    lea dx,msg ;load effective address
    mov ah,9h
    int 21h ;interrupt = 21h=service provider
    
    ;string print
    lea dx,good
    mov ah,9h
    int 21h
    
    afsana:  ;segment
    mov ah,4ch
    int 21h ;exit
    
    main endp ; end of procedure
end main ;whole program end
     