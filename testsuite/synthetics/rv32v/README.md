# Test rv32v_simple_selfcheck_0000

## Test purpose

Simple test for `V` instructions.

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
$ riscv64-unknown-elf-gcc -march=rv64gcv -nostdlib -nostartfiles -Trv32v_simple_selfcheck_0000.ld -o rv32v_simple_selfcheck_0000.o rv32v_simple_selfcheck_0000.s
```

## How to run:

* Install the Spike simulator: https://github.com/riscv/riscv-isa-sim
* Run the test:
```console
$ spike --isa=RV64IMAFDCV -l -p1 rv32v_simple_selfcheck_0000.o
```
