;NAME:     DANIEL DI CESARE
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%include "simple_io.inc"

global asm_main
extern rperm

section .data
;list error strings here
line: db "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",10,0

section .bss
;initialize array here

section .text

asm_main:
     enter   0,0
        saveregs

	;randomize array

     call display
     jmp asm_main_end
        ;; now the array 'array' is randomly initialzed

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
display:

LOOP_OUTER:

;the algorithm is as follows: loop from lines 8->1
;			      loop from spot  1->8 in array
;if the value in the array is the same as the line #, put "-"
;if the value in the array is below the line #, put " "
;if the value in the array is below the line #, put "+"
;fix the spaces by knowing each "tower" must fill 10 characters


display_numbers:


;LOOP THROUGH ARRAY AND DISPLAY

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
prompt:

;read three inputs, ensure the numbers are between 1-8 and there is a comma between them
;save locations of each input value in the array
;save to stack (location)
;swap values at both locations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
error3:
;"missing comma

error1:
;"First number not within 1-8"

error2:
;"Second number not within 1-8"

asm_main_end:
     restoregs
     leave
     ret


