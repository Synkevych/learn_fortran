program using_strings
  implicit none

  character(len=4) :: first_name
  character(len=5) :: last_name
  character(10) :: full_name
  character(:), allocatable :: user_first_name
  character(:), allocatable :: user_last_name

  first_name = 'John'
  last_name = 'Smith'

  ! String concatenation
  full_name = first_name//' '//last_name

  print *, full_name

  ! Explicit allocation statement
  allocate(character(4) :: user_first_name)
  user_first_name = 'John'

  ! Allocation on assignment
  user_last_name = 'Smith'

  print *, user_first_name//' '//user_last_name

end program using_strings
