
program variables
  implicit none
  ! tells the compiler that all variables will be explicitly declared; 
  ! without this statement variables will be implicitly typed according to the letter they begin with.

    integer :: amount
    real :: pi
    complex :: frequency
    character :: initial
    logical :: isOkey

amount = 10
pi = 3.1415927
frequency = (1.0, -0.5)
initial = 'A'
isOkey = .false. ! or .true.

end program variables
