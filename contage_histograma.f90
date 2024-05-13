!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!    Contagem e Histograma
!!     Gabriel Agosto/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!
module VG
integer :: n_linha
real,allocatable, dimension(:) :: time
real                           :: medio

end module VG

!!!!!!!!!!!!!!!!!!!!!!!!

program asd
use VG
implicit none

call contador
call ler

end program asd

!!!!!!!!!!!!!!!!!!!!!!!!

subroutine contador
use VG
implicit none
integer :: j,i

n_linha=-1
open (1, file="trpl.txt") 
  do 
   n_linha=n_linha+1
   read(1,*,iostat=j)
   if(j == -1) exit
  end do
write(*,*) n_linha
close(1)

end subroutine contador
!!!!!!!!!!!!!!!!!!!!!!!!!

subroutine ler

use VG
call contador 

n_linha=n_linha-1

allocate( time(n_linha))
 open(2,file="trpl.txt")
  read(2,*)
   do i=1,n_linha
    read(2,*) time(i)
   end do
 close(2)

medio=sum(time)/n_linha
write(*,10) medio
  
10 format(E12.6)

end subroutine ler         
