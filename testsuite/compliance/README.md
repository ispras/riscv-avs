# RISC-V Compliance Tests

This directory contains RISC-V ISA compliance tests.

Many tests were created by porting [RISC-V tests](https://github.com/riscv/riscv-tests)
into [MicroTESK](https://forge.ispras.ru/projects/microtesk) template description language and
generating the assembly code. These tests are:

* `rv32ua` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32ua)
* `rv32uc` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32uc)
* `rv32ud` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32ud)
* `rv32uf` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32uf)
* `rv32ui` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32ui)
* `rv32um` (https://github.com/riscv/riscv-tests/tree/master/isa/rv32um)
* `rv64mi` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64mi)
* `rv64si` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64si)
* `rv64ua` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64ua)
* `rv64uc` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64uc)
* `rv64ud` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64ud)
* `rv64uf` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64uf)
* `rv64ui` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64ui)
* `rv64um` (https://github.com/riscv/riscv-tests/tree/master/isa/rv64um)

The original RISC-V tests are distributed under the following license:

```
Copyright (c) 2012-2015, The Regents of the University of California (Regents).
All Rights Reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of the Regents nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING
OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS
BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
```