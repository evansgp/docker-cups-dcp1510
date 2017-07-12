FROM evansgp/cups

ENV VERSION 3.0.1-1

RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y libstdc++6:i386 && \
    wget -O /tmp/dcp1510lpr.i386.deb http://download.brother.com/welcome/dlf100455/dcp1510lpr-$VERSION.i386.deb && \
    wget -O /tmp/dcp1510cupswrapper.i386.deb http://download.brother.com/welcome/dlf100458/dcp1510cupswrapper-$VERSION.i386.deb && \
    dpkg -i /tmp/dcp1510lpr.i386.deb && \
    dpkg -i /tmp/dcp1510cupswrapper.i386.deb
