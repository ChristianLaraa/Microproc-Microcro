#include <p16f887.inc>

    __CONFIG _CONFIG1, _LVP_OFF & _FCMEN_OFF & _IESO_OFF & _BOR_OFF & _CPD_OFF & _MCLRE_OFF & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT

    org 0x00

; Selección de banco 1
    BSF STATUS,5
    BCF STATUS,6

    BSF TRISA,0        ; RA0 como entrada
    BCF TRISB,7        ; RB7 como salida

; Banco 3 para ANSEL
    BSF STATUS,6
    BSF STATUS,5

    CLRF ANSEL         ; Desactiva AN0–AN7 (todo digital)
    CLRF ANSELH        ; Desactiva AN8–AN13 (todo digital)

; Regresar a banco 0
    BCF STATUS,6
    BCF STATUS,5

Principal
    BTFSS PORTA,0      ; ¿RA0 = 1?
    GOTO APAGA         ; No presionado ? apagar
    GOTO ENCIENDE      ; Sí presionado ? encender

APAGA
    BCF PORTB,7
    GOTO Principal

ENCIENDE
    BSF PORTB,7
    GOTO Principal

    end