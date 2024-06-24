# Contagem e Histograma de Arquivos usando Fortran 📊

Implementação em Fortran para contar arquivos e gerar um histograma baseado nos tamanhos dos arquivos.

## Breve Descrição ℹ️

Este programa em Fortran realiza a contagem de arquivos em um diretório específico e gera um histograma que mostra a distribuição dos tamanhos dos arquivos encontrados. É útil para análise de dados relacionados aos arquivos presentes em um sistema de arquivos.

## Exemplo de Código em Fortran

Aqui está um exemplo do código em Fortran para realizar a contagem de arquivos e gerar um histograma:




```fortran
!!!!!!!!!!!!!!!!!!!!!!!!
!!
!!    Contagem e Histograma
!!     Gabriel Agosto/2022
!!
!!!!!!!!!!!!!!!!!!!!!!!!
module VG
integer :: n_linha
real,allocatable, dimension(:) :: time
real                           :: medio

end module VG

!!!!!!!!!!!!!!!!!!!!!!!!

program asd
use VG
implicit none

call contador
call ler

end program asd

!!!!!!!!!!!!!!!!!!!!!!!!

subroutine contador
use VG
implicit none
integer :: j,i

n_linha=-1
open (1, file="trpl.txt") 
  do 
   n_linha=n_linha+1
   read(1,*,iostat=j)
   if(j == -1) exit
  end do
write(*,*) n_linha
close(1)

end subroutine contador
!!!!!!!!!!!!!!!!!!!!!!!!!

subroutine ler

use VG
call contador 

n_linha=n_linha-1

allocate( time(n_linha))
 open(2,file="trpl.txt")
  read(2,*)
   do i=1,n_linha
    read(2,*) time(i)
   end do
 close(2)

medio=sum(time)/n_linha
write(*,10) medio
  
10 format(E12.6)

end subroutine ler         
