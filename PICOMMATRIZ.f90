!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!      Pi com MC
!!   by: Gabriel-Ago/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!!
module variaveis globais

call random_number(u)
call random_number(u2)
integer :: i,ncir,nt,n,nr=10
real    :: u1,u2,x,xo,y,yo,L,r,ac,a1,a2,ncir2,nt2,v1,v2,v3,v4,erro,pi
pibar=0
 sumxi2=0
  do i=1,nr
  xo=2.0
  yo=3.0
  l=5.0
  r=1.0
  ncir=0
end module variaveis globais
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
program main
use variaveis globais        
implicit none

         ac = l**2*ncir/nt
     xi2=ac**2
     sumxi2= sumxi2+xi2
     pibar=pibar+ac
     write(*,*) ac
    end do
 write(3,*) nt, pibar/nr
 write(*,*)"media", nt,pibar/nr
 erro=sqrt(sumxi2/nr-(pibar/nr)**2)
 write(4,*) nt, erro
 write(*,*) erro
end do

end program main
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
subroutine SEGUNDO PROGRAMA 
use variaveis globais         
do n=1,10000
      x=L*u1
      y=L*u2

      a1= (x-xo)**2+(y-yo)**2
      a2= r**2
      if(a1 .le. a2) then
        ncir=ncir+1
        write(1,*)x,y
      end if
      if( a1 .gt. a2) then
         write(2,*) x,y
      end if
  end do
end subroutine variaveis globais           
