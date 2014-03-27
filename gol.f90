program gol
  integer answer, adder !variable declaration

  answer = adder(1, 2)  !function call
  print *, answer

  call test_adder       !subroutine call
end program gol

function adder(a, b) result(c)
  integer a, b, c
  c = a + b
  return
end

subroutine test_adder
  integer adder
  if (adder(1,2).eq.3) then
    print *, 'test_adder ok'
  else
    print *, 'test_adder failed'
  endif
end