n = 4
#n = 5
#n = 10
erroR = 0
total = 0
lista = c(0)
cont = 0
sumaNumerosNaturales = function(n, lista, cont){
  i = 0
  while(i<=n){
    total = total + i^2
    cont = cont + 2
    lista[i] = cont
    i = i + 1
  }
  cat("La suma al cuadrado de los ", n," primeros numeros naturales es: ", total,"\n")
  t = length(lista)
  errorR = errorRelativo(total, errorR)
  return(lista)
}
errorRelativo = function(total, errorR){
  errorR = (abs((total-(total+0.1)))/total)*100
  cat("El error relativo porcetual es de ", formatC(errorR,format = "f", digits = 32), "%\n")
}
lista = sumaNumerosNaturales(n,lista, cont)

plot(lista,type = 'o', main = "n vs numero de operaciones", ylab = "numero de operaciones", xlab = "n")

