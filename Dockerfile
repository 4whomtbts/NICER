# java => openjdk 1.8
# R => 3.6.3
# ld-linux.so.2
# epel-release	

FROM 4whomtbts/centos:dgu-nicer

MAINTAINER Hyounjun kim <4whomtbt@gmail.com>

#ADD * /DGU-SOURCE/
EXPOSE 80
EXPOSE 8005
#RUN mkdir myvol
#RUN echo "hello world" > /myvol/greeting
#VOLUME myvol
#ENTRYPOINT init-dgu-nicer.sh
