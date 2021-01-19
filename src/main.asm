; GUG'S NES ADVENTURE BY GUSG21
; (c) 2021
;
; ASK BEFORE YOU TAKE PLEASE AND THANK YOU

; HEADER

    .inesprg 1    ; Defines the number of 16kb PRG banks
    .ineschr 1    ; Defines the number of 8kb CHR banks
    .inesmap 0    ; Defines the NES mapper
    .inesmir 1    ; Defines VRAM mirroring of banks

; DEFINES

JOYPAD1 = $4016
JOYPAD2 = $4017
BUTTON_A      = 1 << 7
BUTTON_B      = 1 << 6
BUTTON_SELECT = 1 << 5
BUTTON_START  = 1 << 4
BUTTON_UP     = 1 << 3
BUTTON_DOWN   = 1 << 2
BUTTON_LEFT   = 1 << 1
BUTTON_RIGHT  = 1 << 0

; LIBRARIES

    .include "src/famitone4.asm"

; ZEROPAGE VARIABLES

    .rsset $0000

pBgLow          .rs 1 ; Pointer to the high and low background memory
pBgHigh         .rs 1 ;
buttons         .rs 1 ; Player 1's buttons
elapsed         .rs 1 ; Frames
cursorBlink     .rs 1 ; Blink the cursor on the title screen? ($00 = do, $FF = don't)

; PROGRAM CODE

    .bank 0
    .org $C000

RESET:
    JSR LoadBG
    JSR LoadPal

    ;   _____  _____  _    _
    ;  |  __ \|  __ \| |  | |
    ;  | |__) | |__) | |  | |
    ;  |  ___/|  ___/| |  | |
    ;  | |    | |    | |__| |
    ;  |_|    |_|     \____/


    ; PPU setup
    LDA #%10001000
    STA $2000
    LDA #%00011110
    STA $2001
    LDA #$00
    STA $2006
    STA $2006
    STA $2005
    STA $2005

    ; Sprite setup
    JSR ClearLocalOAM

    ; Left "cursor"
    LDA #183
    STA $0200
    LDA #$00
    STA $0201
    LDA #%00000000
    STA $0202
    LDA #96
    STA $0203

    ; Right "cursor"
    LDA #183
    STA $0204
    LDA #$00
    STA $0205
    LDA #%01000000
    STA $0206
    LDA #156
    STA $0207

    ;            _____  _    _
    ;      /\   |  __ \| |  | |
    ;     /  \  | |__) | |  | |
    ;    / /\ \ |  ___/| |  | |
    ;   / ____ \| |    | |__| |
    ;  /_/    \_\_|     \____/

    LDA #$FF ; NTSC Mode (#$00 for PAL)
    LDX #LOW(music_music_data)
    LDY #HIGH(music_music_data)
    JSR FamiToneInit

    LDA #$00
    JSR FamiToneMusicPlay


InfLoop:
    JMP InfLoop

LoadBG:
    LDA $2002
    LDA #$20
    STA $2006
    LDA #$00
    STA $2006

    LDA #LOW(Background)
    STA <pBgLow
    LDA #HIGH(Background)
    STA <pBgHigh

    LDX #00
    LDY #00

.Loop:
    LDA [pBgLow], y
    STA $2007


    INY
    CPY #$00
    BNE .Loop

    INC <pBgHigh
    INX
    CPX #$04
    BNE .Loop
    RTS

LoadPal:
    LDA #$3F
    STA $2006
    LDA #$00
    STA $2006

    LDX #00

.Loop:
    LDA palTitle, x
    STA $2007

    INX
    CPX #$20
    BNE .Loop
    RTS

ClearLocalOAM:
    LDX #$00
    LDA #$FE

.Loop:
    STA $0200, x
    INX

    CPX #$FF
    BNE .Loop
    
    RTS

NMI:
    JSR FamiToneUpdate

    ; Read Joypads to "buttons"
    JSR ReadJoy

    ; Disable cursor blink when pressed
    LDA <cursorBlink
    CMP #$FF
    BEQ .CursorSpriteOn ; Branch to .CursorSpriteOn to make sure the sprite is on, 
                  ; no matter when the button is pressed

    LDA <buttons ; Check start button
    AND #BUTTON_START ; mask out the start button
    CMP #$00
    BEQ .Blink

    LDA #$FF ; FF = don't blink
    STA <cursorBlink

.Blink:
    ; Blink cursor
    LDA <elapsed ; get the elapsed time
    AND #$08 ; check if bit 0 is on
    CMP #$00
    BNE .CursorSpriteOn ; if bit 4 is not 0
.CursorSpriteOff: ; Turn all sprites off
    LDA #%00001110
    JMP .CursorSpriteEnd
.CursorSpriteOn: ; turn all sprites on
    LDA #%00011110
.CursorSpriteEnd:
    STA $2001 ; Update register

    ; Populate OAM
    LDA #$00
    STA $2003
    LDA #$02
    STA $4014

    ; Count frames
    INC <elapsed
    RTI

ReadJoy:
    LDA #$01
    STA JOYPAD1
    STA <buttons
    LDA #$00
    STA JOYPAD1
.Loop:
    LDA JOYPAD1
    LSR a
    ROL <buttons
    BCC .Loop

    RTS

; DATA

    .bank 1
    .org $E000

Background:
    .incbin "res/title.nam"

    .include "src/palettes.asm"

    .include "res/music.asm"

; VECTORS

    .org $FFFA
    .dw NMI
    .dw RESET
    .dw 0

; GRAPHICS

    .bank 2
    .org $0000
    .incbin "res/graphics.chr"