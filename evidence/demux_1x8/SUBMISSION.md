# LAB1 07 제출 증빙

## 실제 소스코드

- RTL: `src/demux_1x8.v`
- 테스트벤치: `sim/tb_demux_1x8.sv`
- 제약 파일: `constraints/demux_1x8.xdc`

## XSim 검증

- `demux_xsim_waveform.png`: 입력 `i`, 선택선 `s[2:0]`, 출력 `o[7:0]`, 기대값 파형
- `demux_xsim_pass.png`: `LAB1_PASS demux_1x8 cases=16`, 종료 시간 160 ns

## FPGA 보드 시연

- `demux_board_demo.mp4`: 실제 보드에서 입력 조작과 LED 출력 변화를 확인한 시연 영상
