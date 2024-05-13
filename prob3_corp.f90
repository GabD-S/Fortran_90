module VG
implicit none
integer, parameter    :: Nt =10000, N=100
real, parameter       :: dt = 0.01, pi=acos(float(-1))
real, dimension (N,2) :: v, r
real                  :: o, c, e, u
real                  :: vxi, vyi, vm, vin, v2xf, v1xf, v1yf, v2yf, Vel
real                  :: D, dif
end module VG

program main
Use VG
implicit none
integer :: i, j, k, t

call condi

um:do t=1,Nt
  dois:do i=1,N
!Colisoes com as paredes 
   if (r(i,1) .ge. 50.0 .or. r(i,1) .le. -50.0) v(i,1) = -v(i,1) 
     if (r(i,2) .ge. 50.0 .or. r(i,2) .le. -50.0) v(i,2) = -v(i,2)
       r(i,1)=r(i,1)+v(i,1)*dt
       r(i,2)=r(i,2)+v(i,2)*dt
       write(1,*) r(i,1), r(i,2) !Escrevendo em um arquivo texto fort.2
        tres:do j=1,N !Colisoes das particulas com elas mesmas

          if (i .ne. j) then
            dif=sqrt((r(i,1)-r(j,1))**2.0+(r(i,2)-r(j,2))**2)
               if (dif .le. 0.5 ) then
                 vm=((v(i,1)+v(j,1))+sqrt((v(i,1)-v(j,1))**2.0+(v(i,2)-v(j,2))**2.0))/2.0
                 vin=((v(i,1)+v(j,1))-sqrt((v(i,1)-v(j,1))**2.0+(v(i,2)-v(j,2))**2.0))/2.0

                 call random_number(v1xf)!Atribuicao das velocidades finais
                 v1xf=v1xf*(vm-vin)+vin
                 v2xf=((v(i,1)+v(j,1))-v1xf)
                 c=(v(i,2)+v(j,2))
                 e=(v(i,1)**2.0+v(i,2)**2.0+v(j,1)**2.0+v(j,2)**2)
                 D=(c**2.0-2.0*(c**2.0-(e-(v1xf**2.0+v2xf**2.0))))
                 v1yf=(c-sqrt(D))/2.0
                 v2yf=(v(i,2)+v(j,2))-v1yf
                 v(i,1)=v1xf
                 v(i,2)=v1yf
                 v(j,1)=v2xf
                 v(j,2)=v2yf
               end if
          end if
        end do tres
  end do dois
end do um
!Escrevendo em um arquivo texto fort.2
do i=1,N
    Vel=sqrt(v(i,1)**2+v(i,2)**2)
    write(2,*) Vel
end do

end program main

subroutine condi
Use VG
implicit none
integer :: i

!condicoes iniciais das particulas
call random_number(vxi)
call random_number(vyi)
do i=1,N
    call random_number(o)
    v(i,1)=sqrt(vxi**2.0+vyi**2.0)*cos(o*2.0*pi)
    v(i,2)=sqrt(vxi**2.0+vyi**2.0)*sin(o*2.0*pi)
    call random_number(u)
    u=u*100.0-50.0
    r(i,1)=u
    call random_number(u)
    u=u*100.0-50.0
    r(i,2) = u
end do
end subroutine condi
