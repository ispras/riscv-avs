# Tests for rv32v instructions

## Test naming

`rv<MODE>v_<INSTRUCTION>_vl<VLEN>e<SEW>m<LMUL>d<EDIV>_(selfcheck)_<NUMBER>`

For example, `rv32v_vadd_vl32e32m4d1_selfcheck_0000` is a self-checking test for `VADD` with `LMUL=4`, `VLEN=32`, and `SEW=32`

## Test purpose

Compliance tests for `V` instructions.

## How to generate

* Use MicroTESK for RISC-V: https://forge.ispras.ru/projects/microtesk-riscv

## How to compile

* Install the GNU toolchain for RISC-V: https://github.com/riscv/riscv-gnu-toolchain

  * Choose a proper Git branch:
  ```console
  $ git checkout rvv-0.7.1
  ```

* Compile the test:
```console
$ riscv64-unknown-elf-gcc -march=rv64gcv -nostdlib -nostartfiles -Trv32v_vadd_vl32e32m4d1_selfcheck.ld -o rv32v_vadd_vl32e32m4d1_selfcheck_0000.o rv32v_vadd_vl32e32m4d1_selfcheck_0000.s
```

## How to run

* Install the Spike simulator: https://github.com/riscv/riscv-isa-sim

* Run the test:
```console
$ spike --isa=RV64IMAFDCV -l -p1 rv32v_vadd_vl32e32m4d1_selfcheck_0000.o
```

## Contacts

For more information, contact microtesk-support@ispras.ru.
