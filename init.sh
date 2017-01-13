SRC_DIR=installs
EAP=jboss-eap-6.4.0-installer.jar
EAP_PATCH=jboss-eap-6.4.7-patch.zip
SUPPORT_DIR=support
JBOSS_HOME=target/jboss-eap-6.4
DIR_PATCH=$(pwd)
BPMS=jboss-bpmsuite-6.4.0.GA-installer.jar


echo "instalar eap"
java -jar $DIR_PATCH/$SRC_DIR/$EAP $DIR_PATCH/$SUPPORT_DIR/installation-eap -variablefile $DIR_PATCH/$SUPPORT_DIR/installation-eap.variables
echo "parchear eap"
$DIR_PATCH/$JBOSS_HOME/bin/jboss-cli.sh --command="patch apply $DIR_PATCH/$SRC_DIR/$EAP_PATCH --override-all"
echo "instalar bpms"
java -jar $DIR_PATCH/$SRC_DIR/$BPMS $DIR_PATCH/$SUPPORT_DIR/installation-bpms -variablefile $DIR_PATCH/$SUPPORT_DIR/installation-bpms.variables
