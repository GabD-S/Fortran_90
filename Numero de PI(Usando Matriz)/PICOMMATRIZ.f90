!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!      Pi com MC
!!   by: Gabriel-Ago/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!!

module variaveis_globais
  implicit none
  integer :: i,n, ncir, nt, nr = 1000
  real :: u1, u2, x, xo, y, yo, L, r, ac, a1, a2, ncir2, nt2, v1, v2, v3, v4, erro, pibar, sumxi2

  contains

  subroutine inicializa()
    pibar = 0
    sumxi2 = 0
    xo = 2.0
    yo = 3.0
    L = 5.0
    r = 1.0
    ncir = 0
  end subroutine inicializa
end module variaveis_globais

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
program main
  use variaveis_globais
  implicit none
  call inicializa()

  do i = 1, nr
    call SEGUNDO_PROGRAMA()
    ac = (L**2) * ncir / nt
    sumxi2 = sumxi2 + ac**2
    pibar = pibar + ac
    write(*,*) 'Área calculada:', ac
  end do

  write(*,*) 'Média da área:', nt, pibar / nr
  erro = sqrt(sumxi2 / nr - (pibar / nr)**2)
  write(*,*) 'Erro:', erro
end program main

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
subroutine SEGUNDO_PROGRAMA()
  use variaveis_globais
  implicit none
  ncir = 0
  nt = 100000  ! ou qualquer valor desejado para o número de tentativas

  do n = 1, nt
    call random_number(u1)
    call random_number(u2)
    x = L * u1
    y = L * u2

    a1 = (x - xo)**2 + (y - yo)**2
    a2 = r**2

    if (a1 <= a2) then
      ncir = ncir + 1
      ! write(1,*) x, y
    else
      ! write(2,*) x, y
    end if
  end do
end subroutine SEGUNDO_PROGRAMA
