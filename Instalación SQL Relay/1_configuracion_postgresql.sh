#!/bin/bash

# Cambio de contraseña
echo "Se recomiendan hacer las siguientes configuraciones"
echo "----------------------"
echo "Cambie la contrasenna del usuario postgres"
echo "Con el comando"
echo "# passwd postgres"
echo ""
sleep 15

echo "Cambie la contraseña del usuario postgres en la bd ejecutando los siguientes comandos"
echo "#postgres@nombre_maquina:/directorio$ psql postgres"
echo "#postgres=# ALTER ROLE postgres PASSWORD 'hola123,';"
echo "#postgres=# \q"
echo "#postgres@nombre_maquina:/directorio$ exit"
echo ""
sleep 15

#Modificar archivos de configuración
echo "Configuración del archivo postgresql.conf"
echo "Busque la línea listen_addresses y verifique que su valor sea el siguiente:"
echo "listen_addresses = 'localhost'"
echo "Con el comando"
echo "# vim /etc/postgresql/9.1/main/postgresql.conf"
echo ""
sleep 15

echo "Configuración del archivo pg_hba.conf"
echo "Agregue debajo de la linea ‘# IPv4 local connections:’la siguiente instrucción, posteriormente reinicie el servidor de BD"
echo "host ejemplodb postgres  127.0.0.1/32  password"
echo "Con los comandos"
echo "# vim /etc/postgresql/9.1/main/pg_hba.conf"
echo "# service postgresql restart"
echo ""
sleep 15
# Crear base de datos

echo "Para crear la base de datos ejecute los siguientes comandos siendo el usuario postgres:"
echo "postgres@nombre_maquina:/directorio$ createdb -Ttemplate0 -O postgres -EUTF-8 ejemplodb"
echo "postgres@nombre_maquina:/directorio$ psql postgres"
echo "Al estar en la sesión conectado otorgue todos los privilegios al usuario ‘postgres’ en la base de datos ‘ejemplodb’, con el siguiente comando:"
echo "postgres=# GRANT ALL PRIVILEGES ON DATABASE ejemplodb TO postgres;"
echo "Luego salga de la sesión de base de datos, ejecutando el siguiente comando:"
echo "postgres=# \q"
echo "#postgres@nombre_maquina:/directorio$ exit"
echo ""
sleep 15

# Cargar estructura de datos y registros
echo "Ejecute los siguientes comandos, para la carga de registros"
echo "postgres@nombre_maquina:/directorio$ psql -U postgres -f /home/macagua/script.sql"
echo "#postgres@nombre_maquina:/directorio$ exit"
echo "----------------------"
echo ""
sleep 15
