program matriz
implicit none        
integer :: i,j        
real,dimension(5,5) :: mat_a,mat_b
real :: u,u2

open( unit=1, file= "matriz_1.in")
 do i = 1,5
  do j = 1,5
   call random_number(u)
    mat_a(i,j)=200*u-100s
    end do
  end do
write(1,10) mat_a
open( unit=1, file= "matriz_2.in")
 do i = 1,5
  do j = 1,5
    call random_number(u2)
    mat_b(i,j)=200*u2-100
   end do
  end do
write(1,10) mat_b

write(*,10) mat_a*mat_b

close(1)
10 format (5(f9.1,2x))  
end program matriz      
