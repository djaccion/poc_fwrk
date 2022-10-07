#!usr/bin/env Python
# -*- coding: utf-8 -*-

import os, sys

#print ("Number of arguments:", len(sys.argv), "arguments")
print ("Argument List:", str(sys.argv))

robote = sys.argv[1]
iteraciones = int(sys.argv[2])
tests = sys.argv[3]
farm = sys.argv[4]

print("Ejecutando en :",farm )
print("Resultado:", iteraciones)

dir = 'robot -d ./output/S20 --variable entorno:PROD '

lista = []
if "*" in (tests):
    print("Pasamos todos los test porque me has dado asterisco")
elif 'ARCLMU-' in (tests):
    lista.append("--test PRECONDICION")
    x = sys.argv[3].split(",")
    for y in x:
        if 'ARCLMU-' in y:
            lista.append("--test "+(y))
        else:
            print("Hay que tener cuidado con lo que se escribe")
    lista.append("--test POSTCONDICION")
    print("Ejecutamos los tests que nos dices")
else:
    print("Pasamos todos los test porque no sabes lo que quieres")

lista = [str(i) for i in lista] 
tests_formateados = ' '.join(lista)
farmEnv = ' --variable farm:{}'.format(farm)
dirTest = ' ./Tests/'

ejecuto = (dir)+(farmEnv)+(dirTest)+(robote)
print ("Ejecuto:", (ejecuto))
for y in range(iteraciones):
    print("Iteración:", y)
    valor1 = os.system(ejecuto)
    #print("Resultado:", ejecuto)