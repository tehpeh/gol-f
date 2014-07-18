# GoL-f

## Compile & run

    $ gfortran -o gol gol.f90; ./gol

## Info

main program loop:

    program name

    end

declare all variable types at the TOP of the program/subroutine/function before
using them:

    integer :: i
    real :: x
    character(len=40) :: string
    integer :: array(8)
    integer :: array_2d(5, 5)
    integer :: function_name        ! declare your function return values too

declare your INTENT with subroutine/function inputs (in/out/inout):

    real, intent(in) :: y

functions return results:

    function function_name(attr1, attr2) result(return_val)
      integer, intent(in) :: attr1, attr2
      integer :: return_val
      return_val = attr1 + attr2
    end

    integer :: function_name, out
    out = function(1, 2)

(tip: can modify input values if intent is out/inout)

subroutines can only modify input values:

    subroutine do_it(a)
      integer, intent(inout) :: a
      a = a * 5
    end

    call do_it(1)

## License

The MIT License (MIT)

Copyright (c) 2014 Tim Preston

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
