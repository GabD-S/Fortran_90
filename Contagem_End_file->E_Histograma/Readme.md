# Contagem e Histograma de Arquivos usando Fortran 📊

Implementação em Fortran para contar arquivos e gerar um histograma baseado nos tamanhos dos arquivos.

## Breve Descrição ℹ️

Este programa em Fortran realiza a contagem de arquivos em um diretório específico e gera um histograma que mostra a distribuição dos tamanhos dos arquivos encontrados. É útil para análise de dados relacionados aos arquivos presentes em um sistema de arquivos.

## Exemplo de Código em Fortran

Aqui está um exemplo do código em Fortran para realizar a contagem de arquivos e gerar um histograma:

![Exemplo de Histograma](./Contagem_End_file/E_Histograma.png)


```fortran
program contagem_histograma_arquivos
    implicit none
    integer :: i, num_files, file_size
    integer, dimension(100) :: histogram
    character(len=100) :: filename

    ! Inicializa histograma com zeros
    histogram = 0

    ! Simulação de contagem de arquivos e geração de histograma
    num_files = 10  ! Exemplo: número fictício de arquivos
    do i = 1, num_files
        ! Suponha que file_size seja o tamanho do arquivo em bytes
        file_size = 100 * i  ! Exemplo: tamanho fictício do arquivo
        histogram(file_size) = histogram(file_size) + 1
    end do

    ! Exibir histograma
    do i = 1, size(histogram)
        if (histogram(i) > 0) then
            print *, "Tamanho: ", i, " | Frequência: ", histogram(i)
        end if
    end do

end program contagem_histograma_arquivos
