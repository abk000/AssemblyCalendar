COMMENT & ARSLAN SAEED  
10 APRIL, 2017 
& 

.model small
.code 
org 100h 
.386 


start: 

; SET VIDEO MODE 
	mov ah, 00h 
	mov al, 03h 
	int 10h
	
JANUARY:

	mov ax, 0600h
	mov bh, 79h
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 7Fh
	lea bp, FirstPgNvg
	mov cx, 32
	mov dh, 03
	mov dl, 25 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 79h
	lea bp, JanTitle
	mov cx, 22
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 19h
	lea bp, JanWeek1
	mov cx, 21
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 19h
	lea bp, JanWeek2
	mov cx, 21
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 19h
	lea bp, JanWeek3
	mov cx, 21
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 19h
	lea bp, JanWeek4
	mov cx, 21
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 19h
	lea bp, JanWeek5
	mov cx, 21
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT4:
	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je FEBRUARY
	cmp al, 'p'
	je DECEMBER
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT4 ; if all conditions false, stay here  

FEBRUARY: 
	mov ax, 0600h
	mov bh, 5Ah
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 5Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 5Ah
	lea bp, FebTitle
	mov cx, 13
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 5Ah 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Ah 
	lea bp, JanWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Ah 
	lea bp, FebWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Ah 
	lea bp, FebWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Ah 
	lea bp, FebWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Ah 
	lea bp, FebWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT5:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je MARCH  
	cmp al, 'p'
	je JANUARY
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT5

	
MARCH:

	mov ax, 0600h
	mov bh, 2bh
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 2Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 2bh
	lea bp, MarchTitle
	mov cx, 10
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2bh 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 3bh 
	lea bp, FebWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 3bh
	lea bp, MarchWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 3bh 
	lea bp, MarchWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 3bh 
	lea bp, MarchWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 3bh 
	lea bp, MarchWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT6:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je APRIL
	cmp al, 'p'
	je FEBRUARY
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT6
	
	

APRIL:	
	mov ax, 0600h 
	mov bh, 31h 
	mov cx, 0000h
	mov dx, 184fh 
	int 10h 


; NAVIGATION MESSAGE 
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 3Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20
	int 10h 
	
; PRINT APRIL TITLE 
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 31h
	lea bp, AprilTitle
	mov cx, 10
	mov dh,05
	mov dl, 35 
	int 10h 

; PRINT DAYS OF WEEK LINE 
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 31h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 

; PRINT REMAINING WEEKS 
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek1
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1fh 
	lea bp, AprilWeek6
	mov cx, 26
	mov dh, 19
	mov dl, 30
	int 10h 
	
	

;REQUESTING USER INPUT 
INPUT: 
	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je MAY  
	cmp al, 'q'
	je ENDPROGRAM 
	cmp al, 'p' 
	je MARCH
	
	jmp INPUT ; if all conditions false 

MAY: 	
;CLEAR SCREEN 
	
	mov ax, 0600h 
	mov bh, 7Ah 
	mov cx, 0000h
	mov dx, 184fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 7Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
		
; PRINT MAY 	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 7Ah
	lea bp, MayTitle
	mov cx, 08
	mov dh,05
	mov dl, 35 
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Ah 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2Fh 
	lea bp, AprilWeek6 ; Same as May week 1 
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2fh 
	lea bp, MayWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2fh 
	lea bp, MayWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2fh 
	lea bp, MayWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 2fh 
	lea bp, MayWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT2: 
	;REQUEST FOR USER INPUT ON MAY PAGE 
	mov ah, 08h 
	int 21h 
	cmp al, 'p' 
	je APRIL
	cmp al, 'n'
	je JUNE 
	cmp al, 'q'
	je ENDPROGRAM
	
	jmp INPUT2 ; if all conditions false 
	
	
JUNE: 
	;IF CONDITION IS TRUE, CLEAR SCREEN AND PRINT JUNE 
	mov ax, 0600h 
	mov bh, 0Eh 
	mov cx, 0000h
	mov dx, 184fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 0Fh
	lea bp, LastPgNvg
	mov cx, 36
	mov dh, 03
	mov dl, 25 
	int 10h 
	
	;JUNE  
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 0Eh
	lea bp, JuneTitle
	mov cx, 09
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0Eh 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, MayWeek5 ; Same as May week 5 
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JuneWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JuneWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JuneWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JuneWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT3: 
	mov ah, 08h 
	int 21h 
	cmp al, 'n'
	je JULY 
	cmp al, 'p' 
	je MAY  
	cmp al, 'q'
	je ENDPROGRAM
	
	jmp INPUT3
	
JULY:
	mov ax, 0600h
	mov bh, 4eh
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 4Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 4EH
	lea bp, JulyTitle
	mov cx, 09
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 4Eh 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7eh 
	lea bp, JuneWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JulyWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JulyWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JulyWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JulyWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7Eh 
	lea bp, JulyWeek6
	mov cx, 22
	mov dh, 19
	mov dl, 30
	int 10h 
	
INPUT7:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je AUGUST  
	cmp al, 'p'
	je JUNE
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT7 

AUGUST: 

	mov ax, 0600h
	mov bh, 7ch
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 7Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 7ch
	lea bp, AugTitle
	mov cx, 11
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 7ch 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0ch 
	lea bp, JulyWeek6
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0ch 
	lea bp, AugWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0ch 
	lea bp, AugWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0ch 
	lea bp, AugWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 0ch 
	lea bp, AugWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT8:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je SEPTEMBER   
	cmp al, 'p'
	je JULY
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT8
	
SEPTEMBER: 
	mov ax, 0600h
	mov bh, 49h
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 4Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 49h
	lea bp, SepTitle
	mov cx, 14
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 49h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1ch 
	lea bp, AugWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1ch 
	lea bp, SepWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1ch 
	lea bp, SepWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1ch 
	lea bp, SepWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 1ch 
	lea bp, SepWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT9:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je OCTOBER  
	cmp al, 'p'
	je AUGUST
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT9
	
OCTOBER: 
	mov ax, 0600h
	mov bh, 46h
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 4Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 46h
	lea bp, OctTitle
	mov cx, 12
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, OctWeek1
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, OctWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, OctWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, OctWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, OctWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
INPUT10:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je NOVEMBER   
	cmp al, 'p'
	je SEPTEMBER 
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT10
	
NOVEMBER: 
	mov ax, 0600h
	mov bh, 64h
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 6Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 64h
	lea bp, NovTitle
	mov cx, 13
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 64h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, OctWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, NovWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, NovWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, NovWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 46h 
	lea bp, NovWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
	
INPUT11:

	mov ah, 08h 
	int 21h 
	cmp al, 'n' 
	je DECEMBER   
	cmp al, 'p'
	je OCTOBER 
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT11
	
DECEMBER: 
	mov ax, 0600h
	mov bh, 17h
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h 
	
	mov ah, 13h 
	mov al, 00
	mov bh, 00
	mov bl, 1Fh
	lea bp, Navigation
	mov cx, 48
	mov dh, 03
	mov dl, 20 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00 
	mov bl, 17h
	lea bp, DecTitle
	mov cx, 13
	mov dh,05
	mov dl, 35 
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 17h 
	lea bp, DaysofWeek
	mov cx, 22
	mov dh, 07
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, NovWeek5
	mov cx, 22
	mov dh, 09
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DecWeek2
	mov cx, 22
	mov dh, 11
	mov dl, 30
	int 10h 

	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DecWeek3
	mov cx, 22
	mov dh, 13
	mov dl, 30
	int 10h 	
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DecWeek4
	mov cx, 22
	mov dh, 15
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DecWeek5
	mov cx, 22
	mov dh, 17
	mov dl, 30
	int 10h 
	
	mov ah, 13h 
	mov al, 00 
	mov bh, 00
	mov bl, 79h 
	lea bp, DecWeek6
	mov cx, 22
	mov dh, 19
	mov dl, 30
	int 10h 
	
INPUT12:

	mov ah, 08h 
	int 21h   
	cmp al, 'n'
	je JANUARY
	cmp al, 'p'
	je NOVEMBER 
	cmp al, 'q'
	je ENDPROGRAM 
	
	jmp INPUT12
	
ENDPROGRAM:	
; CLEAR SCREEN 
	mov ax, 0600h 
	mov bh, 07h 
	mov cx, 0000h
	mov dx, 184fh 
	int 10h 
	
; end program function 
	mov ah, 4ch 
	int 21h 

ret 
FirstPgNvg db 'Press n for next page, q to quit' , 13, 10, '$'
Navigation db 'Press n for next page, p for previous, q to quit', 13, 10, '$'
LastPgNvg  db 'Press p for previous page, q to quit', 13, 10, '$'

JanTitle db 'January 2017',13,10,'$' 
JanWeek1 db '1  2  3  4  5  6  7  ',13,10,'$'
JanWeek2 db '8  9  10 11 12 13 14 ',13,10,'$'
JanWeek3 db '15 16 17 18 19 20 21 ',13,10,'$'
JanWeek4 db '22 23 24 25 26 27 28 ',13,10,'$'
JanWeek5 db '29 30 31 1  2  3  4  ',13,10,'$'

FebTitle db 'February 2017', 13, 10, '$'
FebWeek2 db '5  6  7  8  9  10 11 ', 13, 10,'$'
FebWeek3 db '12 13 14 15 16 17 18 ',13, 10,'$' 
FebWeek4 db '19 20 21 22 23 24 25 ',13, 10,'$' 
FebWeek5 db '26 27 28 1  2  3  4  ',13, 10,'$'
   
MarchTitle db 'March 2017' , 13, 10, '$' 
MarchWeek2 db '5  6  7  8  9  10 11 ',13,10,'$'
MarchWeek3 db '12 13 14 15 16 17 18 ',13,10,'$'
MarchWeek4 db '19 20 21 22 23 24 25 ',13,10,'$'
MarchWeek5 db '26 27 28 29 30 31 1  ',13,10,'$'

AprilTitle db 'April 2017', 13,10,'$' ; declare string 
DaysofWeek db 'Su Mo Tu We Th Fri Sat', 13, 10, '$'
AprilWeek1 db '26 27 28 29 30 31  1  ', 13,10,'$' 
AprilWeek2 db '2  3  4  5  6  7   8  ' , 13, 10, '$' 
AprilWeek3 db '9  10 11 12 13 14  15 ', 13, 10, '$'  
AprilWeek4 db '16 17 18 19 20 21  22 ', 13, 10, '$' 
AprilWeek5 db '23 24 25 26 27 28  29 ', 13, 10, '$' 
AprilWeek6 db '30 1  2  3  4  5   6  ', 13, 10, '$' 

MayTitle db 'May 2017' , 13,10,'$' 
MayWeek2 db '7  8  9  10 11 12 13 ',13, 10, '$'
MayWeek3 db '14 15 16 17 18 19 20 ',13, 10, '$'
MayWeek4 db '21 22 23 24 25 26 27 ',13, 10, '$'
MayWeek5 db '28 29 30 31 1  2  3  ',13, 10, '$'

JuneTitle db 'June 2017' , 13, 10, '$'
JuneWeek2 db '4  5  6  7  8  9  10 ',13,10,'$' 
JuneWeek3 db '11 12 13 14 15 16 17 ' , 13, 10,'$'
JuneWeek4 db '18 19 20 21 22 23 24 ' , 13, 10, '$' 
JuneWeek5 db '25 26 27 28 29 30 1  ' , 13, 10 ,'$'

JulyTitle db 'July 2017', 13, 10, '$' 
JulyWeek2 db '2  3  4  5  6  7  8  ',13,10,'$'
JulyWeek3 db '9  10 11 12 13 14 15 ',13,10,'$'
JulyWeek4 db '16 17 18 19 20 21 22 ',13,10,'$'
JulyWeek5 db '23 24 25 26 27 28 29 ',13,10,'$'
JulyWeek6 db '30 31 1  2  3  4  5  ',13,10,'$'

AugTitle db  'August 2017', 13, 10, '$' 
AugWeek2 db '6  7  8  9  10 11 12 ',13,10,'$'
AugWeek3 db '13 14 15 16 17 18 19 ',13,10,'$'
AugWeek4 db '20 21 22 23 24 25 26 ',13,10,'$'
AugWeek5 db '27 28 29 30 31 1  2  ',13,10,'$'

SepTitle db  'September 2017' , 13, 10, '$'
SepWeek2 db '3  4  5  6  7  8  9  ',13,10,'$'
SepWeek3 db '10 11 12 13 14 15 16 ',13,10,'$'
SepWeek4 db '17 18 19 20 21 22 23 ',13,10,'$'
SepWeek5 db '24 25 26 27 28 29 30 ',13,10,'$'

OctTitle db  'October 2017', 13, 10, '$' 
OctWeek1 db '1  2  3  4  5  6  7  ',13,10,'$'
OctWeek2 db '8  9  10 11 12 13 14 ',13,10,'$'
OctWeek3 db '15 16 17 18 19 20 21 ',13,10,'$'
OctWeek4 db '22 23 24 25 26 27 28 ',13,10,'$'
OctWeek5 db '29 30 31 1  2  3  4  ',13,10,'$'

NovTitle db  'November 2017' , 13, 10, '$'
NovWeek2 db '5  6  7  8  9  10 11 ',13,10,'$' 
NovWeek3 db '12 13 14 15 16 17 18 ',13,10,'$' 
NovWeek4 db '19 20 21 22 23 24 25 ',13,10,'$' 
NovWeek5 db '26 27 28 29 30 1  2  ',13,10,'$' 

DecTitle db  'December 2017' , 13, 10, '$'
DecWeek2 db '3  4  5  6  7  8  9  ',13,10,'$' 
DecWeek3 db '10 11 12 13 14 15 16 ',13,10,'$' 
DecWeek4 db '17 18 19 20 21 22 23 ',13,10,'$' 
DecWeek5 db '24 25 26 27 28 29 30 ',13,10,'$' 
DecWeek6 db '31                   ',13,10,'$'  

end start 