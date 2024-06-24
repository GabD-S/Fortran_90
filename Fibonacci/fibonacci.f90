module vg
integer :: i
real(8) :: d,e,f,a,b,c

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

do i=1,100
 c=a
 a=b
 b= a + c

write(1,*) b,i

end do 
        
end subroutine pr1        
        
