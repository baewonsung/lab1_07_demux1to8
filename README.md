# LAB1-07 1:8 디멀티플렉서 - Xsim 사전 시뮬레이션

입력 `i`를 선택선 `s[2:0]`가 지정한 출력 하나로 전달한다. 수업 순서에 따라 `s=000`은 `o[7]`, `s=111`은 `o[0]`을 선택하며, `i=0`이면 모든 출력이 0이다.

- RTL: `src/demux_1x8.v`
- 테스트벤치: `sim/tb_demux_1x8.sv`
- 핀 제약: `constraints/demux_1x8.xdc`
- 검사: 16개 조합, 각 10 ns
- 통과 기준: `LAB1_PASS demux_1x8 cases=16`, 종료 160 ns

`LAB1.code-workspace`에서 **터미널 → 작업 실행... → 02 Simulate**를 실행하고 **03 Open waveform**으로 파형을 연다.
