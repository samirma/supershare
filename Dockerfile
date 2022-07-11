FROM ubuntu


ENV email John
ENV pass passss

COPY p2pclient.deb .

COPY start.sh .

RUN chmod +x /start.sh

RUN apt update  
RUN apt install wget git -y 
RUN apt install libxcb-icccm4  libxcb-image0  libxcb-keysyms1 libxcb-render-util0 libxcb-shape0  libxcb-render0  libxcb-xinerama0 libxkbcommon0 libxkbcommon-x11-0 libbsd0 libxdmcp6  libxau6  libxcb-util1  libgl1 -y

#RUN apt install curl -y ; curl -fsSL https://get.docker.com -o get-docker.sh ; sh ./get-docker.sh
#RUN wget -c  https://updates.peer2profit.app/peer2profit_0.48_amd64.deb
#RUN dpkg -i peer2profit*.deb
RUN dpkg -i p2pclient.deb


RUN wget -c https://download.iproyal.com/pawns-cli/latest/linux_x86_64/pawns-cli
RUN chmod +x pawns-cli

COPY ./libhg.so* /usr/lib/

COPY honeygain ./

CMD ["/start.sh"]




# clear ; docker build --no-cache -t s . ; docker run -e email=samirgmail s


