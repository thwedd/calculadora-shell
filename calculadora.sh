#!/bin/bash

echo "Escolha um número:"
echo "1 - adição "
echo "2 - subtração "
echo "3 - Multiplicação"
echo "4 - Dividisão "
echo "5 - radiciação"
echo "6 - potenciação "

read equacao
echo "Digite um número:"
  read num1
echo "Digite outro número:"
  read num2

function somar(){
resultado=$(($num1+$num2))
echo $resultado
}

function subtrair(){
resultado=$(($num1-$num2))
echo $resultado
}

function multiplicar(){
resultado=$(($num1*$num2))
echo $resultado
}

function dividir(){
resultado=$(($num1/$num2))
echo $resultado
}

function raiz(){
resultado=$((sqrt$num1))
echo $resultado
}

function potencia(){
reultado=$(($num1**$num2))
echo $resultado
}

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( subtrair num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt($num1)" | bc )
elif [ $equacao -eq 6 ]; then
  resultado=$(potencia num1 num2)

else
  echo "Opção inválida."
fi
echo "O resultado é: $resultado"
