program gol
  implicit none
  integer :: answer, adder    ! variable type declarations

  answer = adder(1, 2)        ! function call
  print *, answer             ! print to stdout

  call test_adder             ! subroutine call
  call test_sumer
  call test_scaler
end program gol

! functions

function adder(a, b) result(c)
  integer, intent(in) :: a, b
  integer :: c
  c = a + b
end function adder

function sumer(n, a) result(c)
  integer, intent(in) :: a(n)
  integer :: i, c
  c = 0
  do i = 1, n
    c = c + a(i)
  enddo
end function sumer

! subroutines

subroutine scaler(n, a, mult)
  integer, intent(in) :: mult
  integer, intent(inout) :: a(n)
  integer :: i
  do i = 1, n
    a(i) = a(i) * mult
  enddo
end subroutine scaler

! unit tests

subroutine test_adder
  integer :: adder
  if (adder(1,2).eq.3) then
    print *, 'test_adder ok'
  else
    print *, 'test_adder failed'
  endif
end subroutine test_adder

subroutine test_sumer
  integer :: sumer
  if (sumer(3, [ 1, 2, 3 ]).eq.6) then
    print *, 'test_sumer ok'
  else
    print *, 'test_sumer failed'
  endif
end subroutine test_sumer

subroutine test_scaler
  integer :: in(3), expected(3)
  in = [ 1, 2, 3 ]
  expected = [ 3, 6, 9 ]
  call scaler(3, in, 3)
  if (all(in.eq.expected)) then
    print *, 'test_scaler ok'
  else
    print *, 'test_scaler failed'
  endif
end subroutine test_scaler
