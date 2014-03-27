## Compile & run

$ gfortran-4.2 -o gol gol.f90; ./gol

## Info

main program loop:

    program name

    end

functions return results:

    function function_name(attr1, attr2) result(return_val)
      integer attr1, attr2, return_val
      return
    end

subroutines can modify input values:

    subroutine do_it(a)
      integer a
      a = 5
    end

declare all variable types before using them, even functions:

    integer i
    real x
    character*40 string
    integer array(80)
    integer function_name