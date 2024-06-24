# Aproximação do Número Pi usando Método de Monte Carlo em Fortran 🥧

Implementação da aproximação do número pi usando o método de Monte Carlo em Fortran.

O método de Monte Carlo é uma técnica estatística que utiliza números aleatórios para resolver problemas diversos. Neste caso, usamos o método para estimar o valor de pi.

## Sobre o Programa ℹ️

Este programa em Fortran utiliza o método de Monte Carlo para aproximar o valor de pi. Ele gera pontos aleatórios em um quadrado e verifica quantos estão dentro de um círculo inscrito. A razão entre os pontos dentro do círculo e o total de pontos gerados é usada para calcular uma aproximação de pi.

## Exemplo de Código

Aqui está um exemplo do código em Fortran para aproximar o número pi usando o método de Monte Carlo:

```fortran
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
```
## Resultados

![Aproximação de PI](./Fibonacci.gif)
