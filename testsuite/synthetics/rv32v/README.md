# Test rv32v_simple_selfcheck_0000

## Test purpose

Simple vector instruction test.

## How to run

To compile the test and run it on the Spike simulator, do the following:

1. Install the GNU toolchain for RISC-V: https://github.com/riscv/riscv-gnu-toolchain
2. Choose a proper Git branch:
```console
$ git checkout rvv-0.7.1
```
3. Compile the test:
```console
$ riscv64-unknown-elf-gcc -march=rv64gcv -nostdlib -nostartfiles -Trv32v_simple_selfcheck_0000.ld -o rv32v_simple_selfcheck_0000.o rv32v_simple_selfcheck_0000.s
```
4. Install the Spike simulator: https://github.com/riscv/riscv-isa-sim
5. Run the test:
```console
$ spike --isa=RV64IMAFDCV -l -p1 rv32v_simple_selfcheck_0000.o 2>log
```

## Contacts

For more information, please contact microtesk-support@ispras.ru.
