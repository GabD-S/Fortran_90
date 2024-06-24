program main
implicit none
real(8) :: fat
integer :: a,b
fat=1
do b = 1,28
    do a=1,b
     fat=fat*a
    enddo
write(1,*) fat,b 
enddo
10 format(F8.3)

end program main      
