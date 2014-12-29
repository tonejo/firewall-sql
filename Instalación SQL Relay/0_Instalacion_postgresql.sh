#!/bin/bash


# verificar tipo de sistema
UNIX_KIND=`uname -s`
if [ "`echo Linux | grep \"$UNIX_KIND\"`" ] #si es linux
then
	echo "Tu sistema es: '$UNIX_KIND'"
		
else
	echo "El sistema: '$UNIX_KIND' no es soportado por este script"
	exit 1
fi

# Verificar root
if [ -z "`id | grep \"uid=0(root)\"`" ] #si no hay string que concuerde con el uid root...
then
	echo "Necesitas ser root para instalar!!"
	echo " "
	echo "Abortando instalacion..."
	exit 1
fi

# ----------------------
# Instalación de servicios y bibliotecas
# ----------------------
# Instalación de Postgres
apt-get -y install postgresql
# Instalación de bibliotecas para desarrollo en postgres
apt-get -y install postgresql-server-dev-all
# Instalación del compilador
apt-get -y install g++


echo “----------------------“
echo “Instalación Finalizada”
echo “----------------------“


