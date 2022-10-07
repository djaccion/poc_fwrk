#!usr/bin/env Python
# -*- coding: utf-8 -*-

import os, sys

#print ("Number of arguments:", len(sys.argv), "arguments")
print ("Argument List:", str(sys.argv))

robote = sys.argv[1]
iteraciones = int(sys.argv[2])

print("Resultado:", iteraciones)

dir = 'robot -d ./output/HWP40 --variable entorno:PROD ./tests/'
ejecuto = (dir)+(robote)
print ("Ejecuto:", (ejecuto))
for y in range(iteraciones):
    print("Iteración:", y)
    valor1 = os.system(ejecuto)
    #print("Resultado:", ejecuto)