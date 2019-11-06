# RISC-V Test Suite

This directory contains a test suite for RISC-V microprocessors, so-called RISC-V architecture
verification suite (AVS). The suite does not claim to be complete though it is a good point to
start from. You may modify the test programs or the underlying templates and generators to achieve
a better test coverage.

## Test Generation

Unless otherwise stated, a test program has been generated using
[MicroTESK for RISC-V](https://forge.ispras.ru/projects/microtesk-riscv) by processing the test
template from the distribution package. The version is indicated in `README` in the corresponding directory (if not, use the recent one).

For example, to produce `algorithms/integer/int_divide_0000.s`:

* download MicroTESK for RISC-V (version 0.0.9 or higher) from [here](https://forge.ispras.ru/projects/microtesk-riscv/files)
* unpack the package and set the `MICROTESK_HOME` environment variable
(see the [installation guide](https://forge.ispras.ru/projects/microtesk/wiki/Installation_Guide))
* do the following:

  ```
  > cd $MICROTESK_HOME/arch/riscv/templates/algorithms/integer
  > make int_divide
  ```
* the results will appear at `$MICROTESK_HOME/output/algorithms/integer/int_divide`

## Contacts

Let us know if you have any questions.

### Bug Trackers

* https://github.com/ispras/riscv-avs/issues
* https://github.com/ispras/microtesk/issues

### E-mail

* microtesk-support@ispras.ru