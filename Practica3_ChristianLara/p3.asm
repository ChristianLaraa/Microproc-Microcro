#include <p16f887.inc>

__CONFIG _CONFIG1, _LVP_OFF & _FCMEN_OFF & _IESO_OFF & _BOR_OFF & _CPD_OFF & _MCLRE_OFF & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT

org 0x00

;===========================================================
; Accede al banco 1
;===========================================================
BSF STATUS, 5      ; Pone un "1" en el bit 5 (RP0) en el Registro STATUS
BCF STATUS, 6      ; Pone un "0" en el bit 6 (RP1) del registro STATUS

;===========================================================
; Se configuran las entradas y las salidas
;===========================================================
; RA0 ---> Entrada
; RB0 a RB7 ---> Salidas

BSF TRISA, 0       ; Pone un "1" en el bit "0" del registro TRISA (RA0 como entrada)
CLRF TRISB         ; Pone todos los bits de TRISB en "0" (RB0-RB7 como salidas)

;===========================================================
; Accede al banco 3
;===========================================================
BSF STATUS, 6      ; Pone un "1" en el bit 6 (RP1) del Registro STATUS
BSF STATUS, 5      ; Pone un "1" en el bit 5 (RP0) del Registro STATUS

;===========================================================
; Se configuran las entradas y salidas digitales
;===========================================================
BCF ANSEL, 0       ; Configura a RA0/AN0 como digital
CLRF ANSELH        ; Configura todos los pines del Puerto B (ANSELH) como digitales

;===========================================================
; Se accede al banco 0, para usar los registros PORT(X)
;===========================================================
BCF STATUS, 6      ; Pone un "0" en el bit 6 (RP1) del Registro STATUS
BCF STATUS, 5      ; Pone un "0" en el bit 5 (RP0) del Registro STATUS

;===========================================================
; Inicio del Programa
;===========================================================
Inicio
BSF PORTB, 0       ; Enciende el primer LED (RB0)
BCF PORTB, 1       ; apaga RB1
BCF PORTB, 2       ; apaga RB2
BCF PORTB, 3       ; apaga RB3
BCF PORTB, 4       ; apaga RB4
BCF PORTB, 5       ; apaga RB5
BCF PORTB, 6       ; apaga RB6
BCF PORTB, 7       ; apaga RB7

BCF STATUS, C      ; Limpia la bandera de "acarreo" (Carry) para el corrimiento

Principal
BTFSS PORTA, 0     ; Checa el estado de RA0 y si hay un "1" brinca la instruccion
GOTO $-1           ; Regresa una posicion (se queda aquí esperando el botón)
BTFSC PORTA, 0     ; Checa el estado de RA0 y si hay un "0" brinca la instruccion
GOTO $-1           ; Regresa una posicion (se queda aquí esperando que el botón se suelte)

Ruta_izquierda
RLF PORTB, F       ; Rota a la izquierda el contenido de PORTB
BTFSS STATUS, C    ; Checa si hay un desbordamiento (bandera C)
GOTO Principal     ; Brinca a principal si no hay desbordamiento
GOTO Inicio        ; Brinca a Inicio si hay desbordamiento

end                ; Fin del programa