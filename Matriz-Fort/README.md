# Multiplicação de Matrizes em Fortran 🧮

Implementação da multiplicação de matrizes em Fortran.

A multiplicação de matrizes é uma operação fundamental em álgebra linear e é amplamente utilizada em diversas áreas da ciência computacional.

## Sobre o Programa ℹ️

Este programa em Fortran demonstra como realizar a multiplicação de matrizes. Ele utiliza uma abordagem simples, onde duas matrizes são inicializadas e multiplicadas elemento por elemento para gerar o resultado final.

## Exemplo de Uso 🖥️

Para utilizar o programa, basta compilar o código-fonte (`multiplicacao_matrizes.f90`) em um compilador Fortran compatível e executar o executável gerado.

![Captura de tela de 2024-06-24 11-09-22](./Captura%20de%20tela%20de%202024-06-24%2011-09-22.png)

## Resultado da Multiplicação 📊

O resultado da multiplicação das matrizes pode ser visualizado através da exibição do resultado no terminal ou da gravação em um arquivo de saída, dependendo da implementação específica do programa.

## Exemplo de Código

Aqui está um exemplo simplificado do código em Fortran para multiplicação de matrizes:

```fortran
program multiplicacao_matrizes
    implicit none
    integer, parameter :: n = 3
    integer :: i, j, k
    real :: matrizA(n,n), matrizB(n,n), matrizC(n,n)

    ! Inicializa as matrizes A e B (exemplo simplificado)
    matrizA = reshape((/1.0, 2.0, 3.0, &
                       4.0, 5.0, 6.0, &
                       7.0, 8.0, 9.0/), shape(matrizA))
    
    matrizB = reshape((/9.0, 8.0, 7.0, &
                       6.0, 5.0, 4.0, &
                       3.0, 2.0, 1.0/), shape(matrizB))

    ! Calcula a multiplicação das matrizes
    do i = 1, n
        do j = 1, n
            matrizC(i,j) = 0.0
            do k = 1, n
                matrizC(i,j) = matrizC(i,j) + matrizA(i,k) * matrizB(k,j)
            end do
        end do
    end do

    ! Exibe a matriz resultado C
    print *, "Matriz Resultado C:"
    do i = 1, n
        print *, matrizC(i,:)
    end do

end program multiplicacao_matrizes
