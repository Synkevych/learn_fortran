program loop_constructs
  implicit none
  integer :: i

do i = 1, 10, 2
  print *, 'Print odd numbers: ', i ! Print odd numbers
end do

i = 1
do while (i < 11)
  print *, '', i ! printed 1..10
  i = i + 1
end do
! here i = 11 as in javascript

end program loop_constructs
