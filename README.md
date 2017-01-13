# Instalación automática de BPMS

Esta es una pequeña aplicación disenañada para realizar en forma rápida una instalación de Red Hat JBoss BPMS.

Para poder hacer usarla, es necesario copiar en la carpeta installs los siguientes paquetes:
* Red Hat JBoss EAP: jboss-eap-6.4.0-installer.jar
* Parch de EAP: jboss-eap-6.4.7-patch.zip
* Red Hat JBoss BPMS: jboss-bpmsuite-6.4.0.GA-installer.jar

Si se quieren usasr otras versiones de los paquetes, se debe modificar el nombre del mismo en el archivo init.sh


## La ejecución
Una vez se tienen todos los paquetes encesarios copiados en la carpeta installs, se ejecuta init.sh y este se encarga de la instalación en forma automática



### Nota
En la carpeta support se encuentran todos los parámetros de configuración de EAP y BPMS, donde se definen los usuarios, claves y permisos de cada uno.
