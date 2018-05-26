; FamiTracker exported music data: FelaGimmeShit.ftm
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

; Instruments
ft_inst_0:
	.byte 0

ft_inst_1:
	.byte 17
	.word ft_seq_2a03_5
	.word ft_seq_2a03_4

ft_inst_2:
	.byte 1
	.word ft_seq_2a03_10

ft_inst_3:
	.byte 3
	.word ft_seq_2a03_15
	.word ft_seq_2a03_6

ft_inst_4:
	.byte 3
	.word ft_seq_2a03_20
	.word ft_seq_2a03_11

ft_inst_5:
	.byte 3
	.word ft_seq_2a03_0
	.word ft_seq_2a03_16

ft_inst_6:
	.byte 3
	.word ft_seq_2a03_25
	.word ft_seq_2a03_21

; Sequences
ft_seq_2a03_0:
	.byte $0C, $FF, $00, $00, $0F, $0D, $0B, $09, $07, $06, $05, $04, $03, $02, $01, $00
ft_seq_2a03_4:
	.byte $01, $FF, $00, $00, $01
ft_seq_2a03_5:
	.byte $15, $FF, $00, $00, $05, $05, $05, $05, $04, $04, $04, $04, $03, $03, $03, $03, $02, $02, $02, $02
	.byte $01, $01, $01, $01, $00
ft_seq_2a03_6:
	.byte $04, $FF, $00, $01, $2B, $26, $21, $1C
ft_seq_2a03_10:
	.byte $04, $FF, $00, $00, $09, $06, $03, $00
ft_seq_2a03_11:
	.byte $02, $FF, $00, $00, $FA, $00
ft_seq_2a03_15:
	.byte $0C, $FF, $00, $00, $0F, $0D, $0B, $09, $07, $06, $05, $04, $03, $02, $01, $00
ft_seq_2a03_16:
	.byte $04, $FF, $00, $01, $2E, $2B, $26, $21
ft_seq_2a03_20:
	.byte $06, $FF, $00, $00, $08, $03, $02, $01, $01, $00
ft_seq_2a03_21:
	.byte $02, $FF, $00, $00, $FD, $00
ft_seq_2a03_25:
	.byte $0C, $FF, $00, $00, $09, $05, $05, $04, $04, $03, $03, $02, $02, $01, $01, $00

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
	.byte 6	; frame count
	.byte 64	; pattern length
	.byte 6	; speed
	.byte 135	; tempo
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
ft_s0f0:
	.word ft_s0p0c0, ft_s0p0c0, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f1:
	.word ft_s0p0c0, ft_s0p0c0, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f2:
	.word ft_s0p0c0, ft_s0p1c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f3:
	.word ft_s0p1c0, ft_s0p1c1, ft_s0p0c2, ft_s0p0c3, ft_s0p0c0
ft_s0f4:
	.word ft_s0p1c0, ft_s0p1c1, ft_s0p1c2, ft_s0p1c3, ft_s0p0c0
ft_s0f5:
	.word ft_s0p2c0, ft_s0p2c1, ft_s0p2c2, ft_s0p2c3, ft_s0p0c0
; Bank 0
ft_s0p0c0:
	.byte $00, $3F

; Bank 0
ft_s0p0c2:
	.byte $82, $00, $E0, $1E, $7F, $1E, $7F, $84, $21, $03, $1E, $00, $7F, $00, $1E, $00, $21, $01, $1E, $00
	.byte $23, $01, $82, $00, $1E, $7F, $1E, $7F, $84, $21, $03, $82, $00, $1E, $7F, $1E, $7F, $21, $7F, $1C
	.byte $7F, $1E, $7F, $1E, $7F, $84, $21, $03, $1E, $00, $7F, $00, $1E, $00, $21, $01, $1E, $00, $23, $01
	.byte $82, $00, $1E, $7F, $1E, $7F, $84, $21, $03, $82, $00, $1E, $7F, $17, $7F, $19, $7F, $84, $1D, $01

; Bank 0
ft_s0p0c3:
	.byte $00, $01, $E2, $1F, $03, $1F, $03, $1F, $03, $1F, $00, $1F, $02, $1F, $03, $1F, $03, $1F, $03, $1F
	.byte $00, $1F, $02, $1F, $03, $1F, $03, $1F, $03, $1F, $00, $1F, $02, $1F, $03, $1F, $03, $1F, $01, $1F
	.byte $01, $1F, $00, $1F, $00

; Bank 0
ft_s0p1c0:
	.byte $E1, $36, $00, $36, $02, $31, $03, $33, $04, $31, $01, $33, $00, $36, $00, $36, $02, $31, $03, $33
	.byte $04, $31, $01, $33, $00, $36, $00, $36, $02, $31, $03, $33, $04, $31, $01, $33, $00, $36, $00, $36
	.byte $02, $31, $03, $33, $04, $31, $01, $33, $00

; Bank 0
ft_s0p1c1:
	.byte $E1, $12, $00, $12, $01, $15, $02, $15, $02, $12, $00, $17, $00, $15, $00, $12, $01, $17, $01, $12
	.byte $00, $12, $01, $15, $02, $15, $02, $12, $00, $17, $00, $15, $00, $12, $01, $10, $01, $12, $00, $12
	.byte $01, $15, $02, $15, $02, $12, $00, $17, $00, $15, $00, $12, $01, $17, $01, $12, $00, $12, $01, $17
	.byte $02, $17, $02, $12, $00, $15, $00, $17, $00, $12, $01, $15, $01

; Bank 0
ft_s0p1c2:
	.byte $82, $00, $E3, $1E, $7F, $E0, $1E, $7F, $84, $E3, $21, $03, $82, $00, $1E, $7F, $E0, $1E, $21, $E3
	.byte $1E, $E0, $1E, $84, $23, $01, $82, $00, $E3, $1E, $7F, $E0, $1E, $7F, $84, $E3, $21, $03, $82, $00
	.byte $1E, $7F, $E0, $1E, $7F, $E3, $21, $7F, $E0, $1C, $7F, $E3, $1E, $7F, $E0, $1E, $7F, $84, $E3, $21
	.byte $03, $82, $00, $1E, $7F, $E0, $1E, $21, $E3, $1E, $E0, $1E, $84, $23, $01, $82, $00, $E3, $1E, $7F
	.byte $E0, $1E, $7F, $84, $E3, $21, $03, $82, $00, $1E, $7F, $E0, $17, $7F, $E3, $19, $7F, $84, $E0, $1D
	.byte $01

; Bank 0
ft_s0p1c3:
	.byte $82, $01, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $84, $E2, $1F, $00
	.byte $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $84, $E2
	.byte $1F, $00, $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E
	.byte $84, $E2, $1F, $00, $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F, $E4, $1E, $E2, $1F
	.byte $82, $00, $E4, $1E, $E2, $1F, $1F, $84, $1F, $00

; Bank 0
ft_s0p2c0:
	.byte $82, $00, $E1, $42, $40, $3D, $39, $84, $36, $07, $39, $01, $3B, $01, $82, $00, $42, $40, $3D, $39
	.byte $84, $36, $03, $3D, $01, $40, $01, $3D, $00, $42, $01, $45, $00, $42, $03, $47, $00, $45, $01, $47
	.byte $01, $4C, $01, $82, $00, $4E, $51, $4E, $4C, $84, $4E, $01, $51, $00, $4E, $03, $82, $00, $53, $51
	.byte $4E, $51, $4C, $84, $4E, $01, $51, $00, $4E, $01

; Bank 0
ft_s0p2c1:
	.byte $E1, $36, $00, $36, $01, $15, $00, $31, $01, $15, $01, $33, $01, $17, $00, $15, $00, $12, $00, $31
	.byte $01, $33, $00, $36, $00, $36, $01, $15, $00, $31, $01, $15, $01, $33, $01, $17, $00, $15, $00, $12
	.byte $00, $31, $01, $33, $00, $36, $00, $36, $01, $15, $00, $31, $01, $15, $01, $33, $01, $17, $00, $15
	.byte $00, $12, $00, $31, $01, $33, $00, $36, $00, $36, $01, $17, $00, $31, $01, $17, $01, $33, $01, $82
	.byte $00, $15, $17, $12, $31, $15, $84, $33, $00

; Bank 0
ft_s0p2c2:
	.byte $82, $00, $E3, $1E, $7F, $E0, $1E, $7F, $84, $E5, $21, $03, $82, $00, $E3, $1E, $7F, $E0, $1E, $21
	.byte $E5, $1E, $E0, $1E, $84, $23, $01, $82, $00, $E3, $1E, $7F, $E0, $1E, $7F, $84, $E5, $21, $03, $82
	.byte $00, $E3, $1E, $7F, $E0, $1E, $7F, $E5, $21, $7F, $E0, $1C, $7F, $E3, $1E, $7F, $E0, $1E, $7F, $84
	.byte $E5, $21, $03, $82, $00, $E3, $1E, $7F, $E0, $1E, $21, $E5, $1E, $E0, $1E, $84, $23, $01, $82, $00
	.byte $E3, $1E, $7F, $E0, $1E, $7F, $84, $E5, $21, $03, $82, $00, $E3, $1E, $7F, $E0, $17, $7F, $E5, $19
	.byte $7F, $1D, $84, $1D, $00

; Bank 0
ft_s0p2c3:
	.byte $82, $01, $E4, $1E, $E2, $1F, $E6, $1A, $E2, $1F, $E4, $1E, $E2, $1F, $E6, $1A, $84, $E2, $1F, $00
	.byte $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E6, $1A, $E2, $1F, $E4, $1E, $E2, $1F, $E6, $1A, $84, $E2
	.byte $1F, $00, $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E6, $1A, $E2, $1F, $E4, $1E, $E2, $1F, $E6, $1A
	.byte $84, $E2, $1F, $00, $1F, $00, $82, $01, $E4, $1E, $E2, $1F, $E6, $1A, $E2, $1F, $E4, $1E, $E2, $1F
	.byte $82, $00, $E6, $1A, $E2, $1F, $E6, $1A, $84, $1A, $00


; DPCM samples (located at DPCM segment)
