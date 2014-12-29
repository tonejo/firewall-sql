
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
#Instalación de PHP
# ----------------------

apt-get install php5 php5-pgsql php5-dev 

# ----------------------
#Instalación de rudiments
# ----------------------

wget "http://downloads.sourceforge.net/project/rudiments/rudiments/0.48/rudiments-0.48.tar.gz"

tar -xzvf rudiments-0.48.tar.gz

cd rudiments-0.48

./configure
make

make install

cd ..

# ----------------------
#Instalación de sqlrelay
# ----------------------


wget "http://downloads.sourceforge.net/project/sqlrelay/sqlrelay/0.57/sqlrelay-0.57.tar.gz"

tar -xzvf sqlrelay-0.57.tar.gz

cd sqlrelay-0.57

./configure
make

make install

cd ..

# ----------------------
# Iniciar servicio
# ----------------------

export PATH=$PATH:/usr/local/firstworks/bin

sqlr-start –id instanciapsql
sqlr-start –id router
