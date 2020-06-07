#!/bin/bash

TOMCAT_PATH="/DGU-NICER/apache-tomcat-9.0.17" 
TOMCAT_WEBAPPS=${TOMCAT_PATH}/webapps
TOMCAT_BIN_PATH=${TOMCAT_PATH}/bin
WEBCONTENT_PATH="/DGU-NICER/NICER/WebContent"

chmod 777 * -R
rm -rf ${TOMCAT_WEBAPPS}/ROOT*
echo "WAR 빌드 시작...."  
cd ${WEBCONTENT_PATH}
jar -cvf ROOT.war *
mv ROOT.war ${TOMCAT_WEBAPPS}
chmod 777 * -R
echo "WAR 빌드 완료!"
fuser -k 8005/tcp
fuser -k 80/tcp
#sh ${TOMCAT_BIN_PATH}/shutdown.sh 
echo "기존 서버  중지..." 
cd ${TOMCAT_BIN_PATH}
sh startup.sh

echo " ####################################################"
echo " ####################################################"
echo " ################ DGU NICER 배포 완료 ###############" 
echo " ####################################################"
echo " ####################################################"

