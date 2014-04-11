## Compile & run

    $ gfortran -o gol gol.f90; ./gol

## Info

main program loop:

    program name

    end

declare all variable types at top of program/subroutine/function before using them:

    integer :: i
    real :: x
    character(len=40) :: string
    integer :: array(8)
    integer :: function_name        ! declare your function return values too

delcare your INTENT with subroutine/function inputs (in/out/inout):

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
