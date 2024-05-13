program main
implicit none
integer :: a,fat
fat=1

do a=1,5
 fat=fat*a
 enddo
write(*,*) fat 

end program main      
