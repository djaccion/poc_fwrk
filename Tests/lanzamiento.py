#!usr/bin/env Python
# -*- coding: utf-8 -*-

import os, sys
import shutil
from datetime import date
from datetime import datetime

#print ("Number of arguments:", len(sys.argv), "arguments")
#print ("Argument List:", str(sys.argv))

entorno = sys.argv[1]
hub = sys.argv[2]
navega = sys.argv[3]
testsplan = sys.argv[4]
tests =  sys.argv[5]
print(tests)
parte1 = 'robot -d ./output/robotframework --variable entorno:'
parte2 = ' --variable grid:'
parte3 = ' --variable navega:'
parte4 = ' --listener allure_robotframework '
parte5 = ' ./tests/'
parte6 = '.robot'

lista = []
if "*" in (tests):
    print("Pasamos todos los test porque me has dado asterisco")
elif 'ARCLMU-' in (tests):
    lista.append("--test PRECONDICION")
    x = sys.argv[5].split(",")
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

ejecuto = (parte1)+(entorno)+(parte2)+(hub)+(parte3)+(navega)+(parte4)+(tests_formateados)+(parte5)+(testsplan)+(parte6)

valor1 = os.system(ejecuto)
print("Resultado:", ejecuto)

today = date.today()
now = datetime.now()
d1 = today.strftime("%d_%b_%Y")
dt_string = now.strftime("%H_%M")
output = './output/robotframework/'
html = '.html'
log = (output)+(testsplan)+"_"+(entorno)+"_"+(navega)+"_"+(d1)+"_"+(dt_string)+(html)
shutil.copyfile('./output/robotframework/log.html', (log))
print(" ")
print("**********************************************************************************************************************************************")
print("**********************************************************************************************************************************************")
print(" ")
print("Resultado:", ejecuto)
print(" ")
print("*********************************************************************************************************************************************")
print("*********************************************************************************************************************************************")
print(" ")
print("He dejado un fichero html con la info de la ejecución en ", log)
print(" ")
print("*********************************************************************************************************************************************")
print("*********************************************************************************************************************************************")
print(" ")