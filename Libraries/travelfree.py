#!/usr/bin/python
# -*- coding: utf-8 -*-
#
#### Función para eliminar los warnings
def warning():
	import urllib3
	import ssl
	ssl.match_hostname = lambda cert, hostname: True
	urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

#### Función para saltarse la verificación de ssl y certificados
def verify(hub):	
	import requests
	import logging
	requests.get(hub, verify = False)
	requests.post(hub, verify = False)

#### Función para pasarle la variable de entorno de node que evita la verificación del site. En principio no es necesaria
#def enviro():
#	import os
#	varnode = os.environ['NODE_TLS_REJECT_UNAUTHORIZED'] = '0'
#	return(varnode)