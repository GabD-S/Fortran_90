!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!   Projeto 2 - bêbado 
!!   Gabriel Ago/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!

module vava

integer, parameter :: nb=1
integer,parameter  :: nt=500
real,dimension(nb,nt) :: matriz

end module vava

!!!!!!!!!!!!!!!!!!!!!!!!

program main
implicit none        
real :: ent1,ent2,ent3

ent1=1.0 
ent2=1.0 
ent3=0.5

call percurso(ent1,ent2,ent3)

end program main

!!!!!!!!!!!!!!!!!!!!!!!!

subroutine percurso(deltax,deltat,q)
use vava
implicit none
real :: deltax,deltat,x,t,q,u,media,variancia,vdif
integer :: j,i,g
character(len=1000) :: arquivo

open(1,file="percurso.txt")
  do j= 1,nb
     x=0.0
     t=0.0
     write(1,*) t,x
     do i=1,nt 
        call random_number(u)
    if (u .lt. q) x=x+deltax
    if (u .ge. q) x=x-deltax
    t=t+deltat
    write(1,*) t,x
    matriz(j,i) = x
  enddo
enddo   
close(1)

open(2,file="variancia.txt")
  do i=1,nt
    media=sum(matriz(:,i))/nb
    variancia=sum(matriz(:,i)*matriz(:,i))/nb-media**2
    write(2,*) i*deltat,media,variancia 
  end do
close(2)

open(3,file="media.txt")
  do i=1,nt 
    media=sum(matriz(:,i))/nb
    write(3,*) i,media
  end do
close(3)
write(arquivo,10) deltax,deltat,q
open(4,file=arquivo)
  do i=1,nt
    media=sum(matriz(:,i))/nb
    variancia= sum(matriz(:,i)*matriz(:,i))/nb-media**2
    write(4,*) i*deltat,variancia, media
  end do
close(4)
open(5,file="drift5.txt")
do g=1,5
   vdif=(2*(g*0.2)-1)*deltax/deltat
   write(5,*) g*0.2, vdif
end do


10 format("saida_dx",f0.2,"_dt",f0.2,"_q"f0.2,"_.txt" )

end subroutine percurso

!!!!!!!!!!!!!!!!!!!!!!


