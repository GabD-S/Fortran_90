# Aproximação do Número Pi usando Método de Monte Carlo em Fortran 🥧

Implementação da aproximação do número pi usando o método de Monte Carlo em Fortran.

O método de Monte Carlo é uma técnica estatística que utiliza números aleatórios para resolver problemas diversos. Neste caso, usamos o método para estimar o valor de pi.

## Sobre o Método de Monte Carlo ℹ️

O método de Monte Carlo é aplicado aqui para calcular pi gerando aleatoriamente pontos dentro de um quadrado e verificando quantos estão dentro de um círculo inscrito. A razão entre os pontos dentro do círculo e o total de pontos gerados é utilizada para calcular uma aproximação de pi.

## Exemplo de Código em Fortran

Aqui está um exemplo do código em Fortran para aproximar o número pi usando o método de Monte Carlo:

![Exemplo de aproximação de pi](./Captura%20de%20tela%20de%202024-06-23%2020-01-45.png)


```fortran
program aproximacao_pi_monte_carlo
    implicit none
    integer, parameter :: num_pontos = 1000000
    real :: x, y, pi_aprox
    integer :: i, pontos_dentro_circulo

    pontos_dentro_circulo = 0

    ! Gerando pontos aleatórios e contando quantos estão dentro do círculo
    do i = 1, num_pontos
        x = random_number()
        y = random_number()

        if (x**2 + y**2 <= 1.0) then
            pontos_dentro_circulo = pontos_dentro_circulo + 1
        end if
    end do

    ! Calculando a aproximação de pi
    pi_aprox = 4.0 * real(pontos_dentro_circulo) / real(num_pontos)

    ! Exibindo o resultado
    print *, "Aproximação de pi usando Método de Monte Carlo: ", pi_aprox

end program aproximacao_pi_monte_carlo
