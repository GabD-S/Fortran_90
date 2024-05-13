module vg
integer :: a,b,c,i
real :: d,e,f

end module vg      

program main
use vg

call pr1

end program main

subroutine pr1
use vg

a=1
c=1
b=1

do i=1,10
 c=a
 a=b
 b= a + c

write(*,*) b

end do 
        
end subroutine pr1        
        
