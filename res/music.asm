;this file for FamiTone4.2 library generated by text2vol4 tool
;edited by Doug Fraker, 2018, to add volume column, all notes, 
;and effects 1xx,2xx,4xx


music_music_data:
	.db 1
	.dw .instruments
	.dw .samples-3
	.dw .song0ch0,.song0ch1,.song0ch2,.song0ch3,.song0ch4,382,319 ; New song

.instruments:
	.db $30 ;instrument $00
	.dw .env1,.env0,.env0
	.db $00
	.db $30 ;instrument $01
	.dw .env1,.env0,.env0
	.db $00
	.db $30 ;instrument $02
	.dw .env1,.env5,.env6
	.db $00
	.db $30 ;instrument $03
	.dw .env2,.env0,.env0
	.db $00
	.db $30 ;instrument $04
	.dw .env3,.env0,.env0
	.db $00
	.db $30 ;instrument $05
	.dw .env4,.env0,.env6
	.db $00

.samples:
.env0:
	.db $c0,$00,$00
.env1:
	.db $cf,$00,$00
.env2:
	.db $cf,$c8,$c5,$c3,$c2,$02,$c1,$c1,$c0,$00,$08
.env3:
	.db $cf,$c8,$c6,$c3,$c2,$c1,$c0,$00,$06
.env4:
	.db $cf,$cd,$cc,$ca,$c9,$c8,$c7,$c7,$c6,$c5,$c4,$02,$c3,$02,$c2,$03
	.db $c1,$02,$c0,$00,$12
.env5:
	.db $c0,$c0,$bd,$00,$02
.env6:
	.db $ff,$00,$00


; New song
.song0ch0:
	.db $fb,$06
.song0ch0loop:
.ref0:
	.db $bf
.ref1:
	.db $bf
.ref2:
	.db $bf
.ref3:
	.db $bf
.ref4:
	.db $83,$86,$20,$1f,$20,$81,$1b,$81,$1d,$85,$27,$85,$1d,$81,$1b,$81
	.db $1b,$85,$03,$8d
.ref5:
	.db $83,$20,$1f,$20,$81,$1b,$81,$1d,$85,$27,$85,$1d,$81,$1b,$81,$1b
	.db $85,$03,$85,$1f,$81,$22,$81
.ref6:
	.db $83,$20,$1f,$20,$81,$1b,$81,$1d,$85,$27,$85,$1d,$81,$1b,$81,$1b
	.db $85,$03,$8d
	.db $ff,$13
	.dw .ref6
	.db $ff,$13
	.dw .ref6
	.db $ff,$17
	.dw .ref5
.ref10:
	.db $83,$18,$16,$18,$81,$14,$81,$16,$85,$14,$85,$16,$81,$14,$81,$14
	.db $85,$08,$8d
.ref11:
	.db $83,$18,$16,$18,$81,$14,$81,$16,$85,$14,$85,$16,$81,$14,$81,$14
	.db $85,$08,$85,$16,$81,$19,$81
.ref12:
	.db $7c,$60,$80,$2c,$85,$2b,$85,$2e,$85,$2c,$85,$6b,$04,$22,$6b,$00
	.db $24,$83,$27,$81,$24,$8b,$64,$85
.ref13:
	.db $7c,$81,$7b,$81,$7a,$81,$79,$81,$78,$81,$77,$81,$76,$81,$75,$81
	.db $74,$81,$73,$81,$72,$81,$71,$81,$70,$a7
.ref14:
	.db $7c,$60,$2c,$85,$2b,$85,$2e,$85,$2c,$85,$31,$83,$30,$83,$27,$81
	.db $2c,$8d
.ref15:
	.db $64,$87,$7c,$81,$7b,$81,$7a,$81,$79,$81,$78,$81,$77,$81,$76,$81
	.db $75,$81,$74,$81,$73,$81,$72,$81,$71,$81,$70,$9f
.ref16:
	.db $7c,$60,$2c,$85,$2b,$85,$2e,$85,$2c,$85,$6b,$04,$22,$6b,$00,$24
	.db $83,$27,$81,$24,$8b,$64,$85
	.db $ff,$0d
	.dw .ref13
	.db $ff,$10
	.dw .ref14
	.db $ff,$0e
	.dw .ref15
.ref20:
	.db $88,$11,$89,$11,$81,$11,$8d,$13,$89,$13,$81,$13,$8d
.ref21:
	.db $10,$89,$10,$81,$10,$8d,$14,$89,$18,$81,$1d,$85,$1f,$85
.ref22:
	.db $1f,$89,$1d,$81,$18,$8d,$1b,$89,$19,$81,$13,$8d
.ref23:
	.db $19,$89,$18,$81,$13,$85,$14,$85,$16,$9d
	.db $ff,$10
	.dw .ref12
	.db $ff,$0d
	.dw .ref13
	.db $ff,$10
	.dw .ref14
	.db $ff,$0e
	.dw .ref15
	.db $ff,$10
	.dw .ref16
	.db $ff,$0d
	.dw .ref13
	.db $ff,$10
	.dw .ref14
	.db $ff,$0e
	.dw .ref15
	.db $fd
	.dw .song0ch0loop

; New song
.song0ch1:
.song0ch1loop:
.ref32:
	.db $bf
.ref33:
	.db $bf
.ref34:
	.db $bf
.ref35:
	.db $bf
.ref36:
	.db $83,$86,$14,$13,$14,$81,$0f,$81,$11,$85,$1b,$85,$11,$81,$0f,$81
	.db $0f,$85,$03,$8d
.ref37:
	.db $83,$14,$13,$14,$81,$0f,$81,$11,$85,$1b,$85,$11,$81,$0f,$81,$0f
	.db $85,$03,$85,$13,$81,$16,$81
.ref38:
	.db $83,$14,$13,$14,$81,$0f,$81,$11,$85,$1b,$85,$11,$81,$0f,$81,$0f
	.db $85,$03,$8d
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$17
	.dw .ref37
	.db $ff,$13
	.dw .ref38
	.db $ff,$17
	.dw .ref37
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
.ref52:
	.db $88,$20,$89,$20,$81,$20,$8d,$22,$89,$22,$81,$22,$8d
.ref53:
	.db $24,$89,$24,$81,$24,$8d,$24,$89,$24,$81,$24,$85,$24,$85
.ref54:
	.db $2b,$89,$29,$81,$24,$8d,$27,$89,$25,$81,$1f,$8d
.ref55:
	.db $25,$89,$24,$81,$1f,$85,$20,$85,$22,$9d
	.db $ff,$13
	.dw .ref36
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $ff,$13
	.dw .ref38
	.db $fd
	.dw .song0ch1loop

; New song
.song0ch2:
.song0ch2loop:
.ref64:
	.db $bf
.ref65:
	.db $bf
.ref66:
	.db $bf
.ref67:
	.db $bf
.ref68:
	.db $bf
.ref69:
	.db $bf
.ref70:
	.db $bf
.ref71:
	.db $bf
.ref72:
	.db $88,$14,$89,$0f,$81,$0f,$89,$11,$81,$11,$85,$0f,$81,$0f,$91
.ref73:
	.db $83,$14,$81,$14,$81,$0f,$81,$0f,$89,$11,$81,$11,$85,$0f,$81,$0f
	.db $83,$13,$81,$16,$81,$13,$16,$81
.ref74:
	.db $14,$89,$0f,$81,$0f,$89,$11,$81,$11,$85,$0f,$81,$0f,$91
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
.ref79:
	.db $83,$14,$81,$14,$81,$0f,$81,$0f,$89,$11,$81,$11,$85,$0f,$81,$0f
	.db $91
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
.ref84:
	.db $0d,$89,$0d,$81,$0d,$8d,$0f,$89,$0f,$81,$0f,$8d
.ref85:
	.db $0c,$89,$0c,$81,$0c,$8d,$11,$89,$13,$81,$14,$85,$18,$85
.ref86:
	.db $19,$89,$19,$81,$19,$8d,$19,$89,$19,$81,$19,$8d
.ref87:
	.db $19,$89,$19,$81,$19,$8d,$1b,$85,$0f,$85,$13,$85,$16,$85
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
	.db $ff,$18
	.dw .ref73
	.db $ff,$0e
	.dw .ref74
	.db $ff,$11
	.dw .ref79
	.db $fd
	.dw .song0ch2loop

; New song
.song0ch3:
.song0ch3loop:
.ref96:
	.db $70,$84,$10,$81,$10,$81,$71,$10,$81,$72,$10,$81,$73,$10,$81,$74
	.db $10,$75,$81,$76,$10,$77,$81,$78,$10,$79,$81,$7a,$10,$7b,$81,$7c
	.db $10,$7d,$81,$7e,$10,$7f,$81,$10,$81,$10,$81,$10,$81,$8a,$10,$81
	.db $10,$81
.ref97:
	.db $84,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10
	.db $81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10
	.db $81
.ref98:
	.db $10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $ff,$20
	.dw .ref98
.ref100:
	.db $10,$81,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81,$84
	.db $10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81,$84,$10,$81
	.db $10,$81,$8a,$10,$81,$84,$10,$81,$8a,$10,$81
.ref101:
	.db $84,$10,$81,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81
	.db $84,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81,$84,$10
	.db $81,$10,$81,$8a,$10,$81,$10,$81,$10,$81
.ref102:
	.db $84,$10,$81,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81
	.db $84,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81,$84,$10
	.db $81,$10,$81,$8a,$10,$81,$84,$10,$81,$8a,$10,$81
.ref103:
	.db $84,$10,$81,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81
	.db $84,$10,$81,$8a,$10,$81,$84,$10,$81,$10,$81,$8a,$10,$81,$84,$10
	.db $81,$10,$8d
	.db $ff,$20
	.dw .ref100
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$1a
	.dw .ref103
	.db $ff,$20
	.dw .ref100
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$20
	.dw .ref101
.ref116:
	.db $75,$84,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $10,$81
.ref117:
	.db $10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $10,$81,$10,$81,$10,$81,$10,$85,$10,$10,$10,$81,$10,$10
.ref118:
	.db $75,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10
	.db $81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10
	.db $81
.ref119:
	.db $10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81,$10,$81
	.db $10,$9d
	.db $ff,$20
	.dw .ref100
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$20
	.dw .ref101
	.db $ff,$20
	.dw .ref102
	.db $ff,$1a
	.dw .ref103
	.db $fd
	.dw .song0ch3loop

; New song
.song0ch4:
.song0ch4loop:
.ref128:
	.db $19,$85,$1a,$81,$83,$19,$81,$19,$81,$1a,$81,$1a,$81,$19,$81,$81
	.db $81,$1a,$81,$19,$85,$19,$81,$1a,$81,$1a,$81
.ref129:
	.db $19,$85,$1a,$85,$19,$81,$19,$81,$1a,$85,$19,$85,$1a,$81,$19,$85
	.db $19,$81,$1a,$85
	.db $ff,$1b
	.dw .ref128
.ref131:
	.db $19,$85,$1a,$85,$19,$81,$19,$81,$1a,$85,$19,$85,$1a,$81,$19,$85
	.db $1a,$81,$1a,$81,$1a,$1a
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
.ref135:
	.db $19,$85,$1a,$85,$19,$81,$19,$81,$1a,$85,$19,$85,$1a,$81,$19,$91
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$10
	.dw .ref135
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
.ref148:
	.db $bf
.ref149:
	.db $bf
.ref150:
	.db $bf
.ref151:
	.db $bf
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$14
	.dw .ref129
	.db $ff,$1b
	.dw .ref128
	.db $ff,$10
	.dw .ref135
	.db $fd
	.dw .song0ch4loop
