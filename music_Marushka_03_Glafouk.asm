; FamiTracker exported music data: marushka.ftm
;

; Module header
	.word ft_song_list
	.word ft_instrument_list
	.word ft_sample_list
	.word ft_samples
	.byte 0 ; flags
	.word 3600 ; NTSC speed
	.word 3000 ; PAL speed

; Instrument pointer list
ft_instrument_list:
	.word ft_inst_0
	.word ft_inst_1
	.word ft_inst_2
	.word ft_inst_3
	.word ft_inst_4
	.word ft_inst_5
	.word ft_inst_6
	.word ft_inst_7
	.word ft_inst_8

; Instruments
ft_inst_0:
	.byte 3
	.word ft_seq_2a03_0
	.word ft_seq_2a03_1

ft_inst_1:
	.byte 2
	.word ft_seq_2a03_11

ft_inst_2:
	.byte 3
	.word ft_seq_2a03_15
	.word ft_seq_2a03_16

ft_inst_3:
	.byte 3
	.word ft_seq_2a03_20
	.word ft_seq_2a03_21

ft_inst_4:
	.byte 3
	.word ft_seq_2a03_25
	.word ft_seq_2a03_26

ft_inst_5:
	.byte 1
	.word ft_seq_2a03_30

ft_inst_6:
	.byte 17
	.word ft_seq_2a03_35
	.word ft_seq_2a03_4

ft_inst_7:
	.byte 21
	.word ft_seq_2a03_50
	.word ft_seq_2a03_2
	.word ft_seq_2a03_14

ft_inst_8:
	.byte 5
	.word ft_seq_2a03_55
	.word ft_seq_2a03_12

; Sequences
ft_seq_2a03_0:
	.byte $06, $FF, $00, $00, $08, $03, $02, $01, $01, $00
ft_seq_2a03_1:
	.byte $02, $FF, $00, $00, $FA, $00
ft_seq_2a03_2:
	.byte $0A, $00, $00, $00, $05, $05, $FB, $FB, $FB, $FB, $FB, $05, $05, $05
ft_seq_2a03_4:
	.byte $01, $FF, $00, $00, $02
ft_seq_2a03_11:
	.byte $04, $FF, $00, $01, $2B, $26, $21, $1C
ft_seq_2a03_12:
	.byte $0A, $00, $00, $00, $02, $02, $01, $FD, $FE, $FE, $FE, $FF, $03, $02
ft_seq_2a03_14:
	.byte $01, $FF, $00, $00, $01
ft_seq_2a03_15:
	.byte $0C, $FF, $00, $00, $09, $05, $05, $04, $04, $03, $03, $02, $02, $01, $01, $00
ft_seq_2a03_16:
	.byte $02, $FF, $00, $00, $FD, $00
ft_seq_2a03_20:
	.byte $0C, $FF, $00, $00, $0F, $0D, $0B, $09, $07, $06, $05, $04, $03, $02, $01, $00
ft_seq_2a03_21:
	.byte $06, $FF, $00, $01, $2E, $2C, $2B, $1E, $13, $00
ft_seq_2a03_25:
	.byte $12, $FF, $00, $00, $06, $05, $04, $04, $03, $03, $03, $02, $02, $02, $02, $02, $01, $01, $01, $01
	.byte $01, $00
ft_seq_2a03_26:
	.byte $02, $FF, $00, $00, $FF, $00
ft_seq_2a03_30:
	.byte $08, $FF, $00, $00, $01, $01, $01, $01, $01, $01, $01, $00
ft_seq_2a03_35:
	.byte $03, $FF, $00, $00, $09, $07, $00
ft_seq_2a03_50:
	.byte $28, $FF, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	.byte $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $07, $06, $05, $05, $04, $03, $02, $02
	.byte $01, $01, $00, $00
ft_seq_2a03_55:
	.byte $01, $FF, $00, $00, $08

; DPCM instrument list (pitch, sample index)
ft_sample_list:

; DPCM samples list (location, size, bank)
ft_samples:


; Song pointer list
ft_song_list:
	.word ft_song_0

; Song info
ft_song_0:
	.word ft_s0_frames
	.byte 24	; frame count
	.byte 64	; pattern length
	.byte 2	; speed
	.byte 125	; tempo
	.byte 0	; initial bank


;
; Pattern and frame data for all songs below
;

; Bank 0
ft_s0_frames:
	.word ft_s0f0
	.word ft_s0f1
	.word ft_s0f2
	.word ft_s0f3
	.word ft_s0f4
	.word ft_s0f5
	.word ft_s0f6
	.word ft_s0f7
	.word ft_s0f8
	.word ft_s0f9
	.word ft_s0f10
	.word ft_s0f11
	.word ft_s0f12
	.word ft_s0f13
	.word ft_s0f14
	.word ft_s0f15
	.word ft_s0f16
	.word ft_s0f17
	.word ft_s0f18
	.word ft_s0f19
	.word ft_s0f20
	.word ft_s0f21
	.word ft_s0f22
	.word ft_s0f23
ft_s0f0:
	.word ft_s0p0c0, ft_s0p0c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f1:
	.word ft_s0p0c0, ft_s0p0c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f2:
	.word ft_s0p0c0, ft_s0p0c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f3:
	.word ft_s0p0c0, ft_s0p0c1, ft_s0p1c2, ft_s0p1c3, ft_s0p0c0
ft_s0f4:
	.word ft_s0p0c0, ft_s0p1c1, ft_s0p2c2, ft_s0p2c3, ft_s0p0c0
ft_s0f5:
	.word ft_s0p0c0, ft_s0p1c1, ft_s0p2c2, ft_s0p2c3, ft_s0p0c0
ft_s0f6:
	.word ft_s0p0c0, ft_s0p1c1, ft_s0p2c2, ft_s0p2c3, ft_s0p0c0
ft_s0f7:
	.word ft_s0p0c0, ft_s0p1c1, ft_s0p3c2, ft_s0p3c3, ft_s0p0c0
ft_s0f8:
	.word ft_s0p0c0, ft_s0p2c1, ft_s0p4c2, ft_s0p2c3, ft_s0p0c0
ft_s0f9:
	.word ft_s0p0c0, ft_s0p2c1, ft_s0p4c2, ft_s0p2c3, ft_s0p0c0
ft_s0f10:
	.word ft_s0p0c0, ft_s0p2c1, ft_s0p4c2, ft_s0p2c3, ft_s0p0c0
ft_s0f11:
	.word ft_s0p0c0, ft_s0p2c1, ft_s0p5c2, ft_s0p3c3, ft_s0p0c0
ft_s0f12:
	.word ft_s0p1c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f13:
	.word ft_s0p2c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f14:
	.word ft_s0p3c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f15:
	.word ft_s0p4c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f16:
	.word ft_s0p1c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f17:
	.word ft_s0p2c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f18:
	.word ft_s0p3c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f19:
	.word ft_s0p4c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f20:
	.word ft_s0p5c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f21:
	.word ft_s0p6c0, ft_s0p2c1, ft_s0p4c2, ft_s0p6c3, ft_s0p0c0
ft_s0f22:
	.word ft_s0p5c0, ft_s0p2c1, ft_s0p3c2, ft_s0p3c3, ft_s0p0c0
ft_s0f23:
	.word ft_s0p6c0, ft_s0p2c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
; Bank 0
ft_s0p0c0:
	.byte $00, $3F

; Bank 0
ft_s0p0c1:
	.byte $00, $0F, $E7, $17, $2F

; Bank 0
ft_s0p0c2:
	.byte $E1, $17, $0F, $17, $03, $7F, $03, $E0, $17, $07, $E1, $17, $0F, $82, $03, $17, $E5, $2D, $3B, $84
	.byte $39, $03

; Bank 0
ft_s0p0c3:
	.byte $82, $0F, $E0, $1E, $1E, $1E, $84, $1E, $0F

; Bank 0
ft_s0p1c0:
	.byte $E8, $3B, $07, $39, $03, $36, $03, $39, $07, $36, $03, $34, $07, $36, $0B, $82, $01, $E6, $39, $39
	.byte $3B, $3E, $39, $84, $3B, $05

; Bank 0
ft_s0p1c1:
	.byte $00, $0F, $E7, $17, $07, $12, $17, $15, $0F

; Bank 0
ft_s0p1c2:
	.byte $E1, $17, $0F, $17, $03, $7F, $03, $E0, $17, $07, $E1, $17, $0F, $82, $03, $17, $E5, $2D, $3B, $84
	.byte $3E, $03

; Bank 0
ft_s0p1c3:
	.byte $E0, $1E, $0F, $1E, $0F, $1E, $0F, $1E, $07, $E4, $1F, $03, $19, $03

; Bank 0
ft_s0p2c0:
	.byte $E8, $36, $03, $39, $03, $3B, $03, $3E, $0B, $3B, $07, $39, $0B, $3B, $03, $39, $03, $E6, $47, $01
	.byte $45, $01, $42, $03, $47, $03

; Bank 0
ft_s0p2c1:
	.byte $00, $0F, $E7, $17, $07, $12, $0F, $23, $07, $15, $07, $26, $03, $21, $03

; Bank 0
ft_s0p2c2:
	.byte $E1, $17, $0F, $E3, $17, $07, $E5, $17, $07, $E1, $17, $0F, $82, $03, $E3, $17, $E5, $2D, $3B, $84
	.byte $39, $03

; Bank 0
ft_s0p2c3:
	.byte $E0, $1E, $07, $E4, $1F, $07, $E2, $1A, $07, $E4, $1F, $04, $14, $02, $82, $07, $E0, $1E, $E4, $1F
	.byte $E2, $1A, $84, $E4, $1F, $07

; Bank 0
ft_s0p3c0:
	.byte $E8, $36, $07, $39, $03, $36, $03, $34, $07, $2D, $03, $2F, $0B, $32, $07, $82, $01, $E6, $36, $34
	.byte $47, $47, $42, $45, $84, $47, $03

; Bank 0
ft_s0p3c2:
	.byte $E1, $17, $0F, $E3, $17, $07, $E5, $17, $07, $E1, $17, $0F, $82, $03, $E3, $17, $E5, $2D, $3B, $84
	.byte $3E, $03

; Bank 0
ft_s0p3c3:
	.byte $82, $07, $E0, $1E, $E4, $1F, $E2, $1A, $E4, $1F, $E0, $1E, $E4, $1F, $E2, $1A, $84, $E4, $1F, $03
	.byte $19, $03

; Bank 0
ft_s0p4c0:
	.byte $E8, $2F, $03, $2D, $03, $2A, $07, $82, $03, $26, $2A, $2D, $2F, $84, $28, $07, $2A, $03, $23, $07
	.byte $82, $01, $E6, $45, $45, $47, $4A, $47, $84, $45, $01

; Bank 0
ft_s0p4c2:
	.byte $E1, $17, $07, $E5, $47, $03, $45, $03, $E3, $17, $07, $E5, $17, $07, $E1, $17, $0F, $82, $03, $E3
	.byte $17, $E5, $2D, $3B, $84, $39, $03

; Bank 0
ft_s0p5c0:
	.byte $E8, $3B, $03, $E6, $3E, $01, $3E, $01, $E8, $2F, $03, $3B, $03, $E6, $39, $01, $3B, $01, $E8, $2D
	.byte $03, $82, $01, $39, $7F, $39, $7F, $39, $7F, $84, $39, $03, $36, $07, $39, $07, $3E, $01, $E6, $3E
	.byte $01, $32, $03

; Bank 0
ft_s0p5c2:
	.byte $E1, $17, $07, $E5, $47, $03, $45, $03, $E3, $17, $07, $E5, $17, $07, $E1, $17, $0F, $82, $03, $E3
	.byte $17, $E5, $2D, $3B, $84, $3E, $03

; Bank 0
ft_s0p6c0:
	.byte $E8, $3B, $03, $E6, $3E, $01, $3E, $01, $E8, $2F, $03, $3B, $03, $E6, $39, $01, $3B, $01, $E8, $2D
	.byte $03, $82, $01, $39, $7F, $39, $7F, $39, $7F, $84, $39, $03, $36, $07, $34, $07, $2D, $02, $E6, $47
	.byte $01, $45, $01, $47, $00

; Bank 0
ft_s0p6c3:
	.byte $E0, $1E, $03, $E4, $12, $03, $1F, $03, $17, $01, $17, $01, $E2, $1A, $07, $E4, $1F, $03, $17, $01
	.byte $15, $01, $E0, $1E, $03, $E4, $15, $03, $1F, $03, $1F, $01, $1F, $01, $E2, $1A, $03, $E4, $1F, $03
	.byte $82, $01, $1F, $17, $1F, $84, $1F, $01


; DPCM samples (located at DPCM segment)
