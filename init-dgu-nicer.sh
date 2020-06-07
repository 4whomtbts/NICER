#!/bin/bash

rm -rf ~/DGU-NICER
mkdir ~/DGU-NICER
cp -r * ~/DGU-NICER/
cd ~/DGU-NICER/NICER/WebContent/
jar -cvf ROOT.war *
mv ROOT.war ../../apache-tomcat-9.0.17/webapps/
cd ~/DGU-NICER/apache-tomcat-9.0.17/bin/
chmod -R 777 *
sh ~/DGU-NICER/apache-tomcat-9.0.17/bin/shutdown.sh
sh ~/DGU-NICER/apache-tomcat-9.0.17/bin/startup.sh

