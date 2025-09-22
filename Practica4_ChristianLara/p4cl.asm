#include <p16f887.inc>

; -- CONFIGURACIÓN DEL MICROCONTROLADOR --
__CONFIG _CONFIG1, _LVP_OFF & _FCMEN_OFF & _IESO_OFF & _BOR_OFF & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT

; -- INICIO DEL CÓDIGO --
org 0x00

; -- DEFINICIÓN DE VARIABLES --
CONTA_1 EQU 0x20
CONTA_2 EQU 0x21
CONTA_3 EQU 0x22

; -- CONFIGURACIÓN DE PUERTOS --
; Configuración del puerto B como salidas digitales
BANKSEL TRISB
MOVLW   0x00
MOVWF   TRISB

BANKSEL ANSELH
MOVLW   0x00
MOVWF   ANSELH

; Volver al banco 0 para manipular los puertos
BANKSEL PORTB

; -- PROGRAMA PRINCIPAL (BUCLE INFINITO) --
Inicio
    BSF     PORTB, 0        ; Enciende el pin RB0
    CALL    RETARDO         ; Llama a la subrutina de retardo
    BCF     PORTB, 0        ; Apaga el pin RB0
    CALL    RETARDO         ; Llama a la subrutina de retardo
    GOTO    Inicio          ; Repite el bucle

; -- SUBRUTINA DE RETARDO --
RETARDO
    MOVLW   .135            ; Carga el valor 135 decimal
    MOVWF   CONTA_2
    
Carga_1
    MOVLW   .255            ; Carga el valor 255 decimal
    MOVWF   CONTA_1
    
    DECFSZ  CONTA_1         ; Decrementa CONTA_1 y salta si es cero
    GOTO    $-1             ; Vuelve a la instrucción anterior
    
    DECFSZ  CONTA_2         ; Decrementa CONTA_2 y salta si es cero
    GOTO    Carga_1         ; Vuelve al inicio del bucle interno

    RETURN                  ; Regresa a la instrucción que llamó a la subrutina

END
