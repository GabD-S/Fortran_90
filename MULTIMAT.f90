!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!    Multiplica Matrizes
!!  by: Gabriel - Ago/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!
module vg

real,dimension(5,4) :: B

end module vg
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
program multiplicaMat
use vg
implicit none
integer        :: i,j

call leitura

do i=1,5
  write(*,10) (b(i,j), j=1,4)
end do  

10 format (4(f4.1,2x))
end program multiplicaMat
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
subroutine leitura
use vg 
implicit none
integer :: i,j

open (1,file="matriz.txt")
  do i=1,5
    read(1,*) (b(i,j), j=1,4)
  end do
close(1) 

end subroutine leitura









!
