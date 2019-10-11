# Guide for rv32v_simple_selfcheck_0000 test

## Test description

Simple vector instruction test.

## How to run

To compile the test and run on Spike emulator, do the following:
```console
$ riscv64-unknown-elf-gcc -march=rv64gcv -nostdlib -nostartfiles -Trv32v_simple_selfcheck_0000.ld -o rv32v_simple_selfcheck_0000.o rv32v_simple_selfcheck_0000.s
$ spike --isa=RV64IMAFDCV -l -p1 instruction_rv32v_gen1_0000.o 2>log
```

## Contacts

For more information, please contact microtesk-support@ispras.ru.
