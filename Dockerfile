FROM mono:latest
RUN apt-get update
RUN apt-get install -y wget unzip
RUN mkdir /osgrid
RUN mkdir /osgrid/data
WORKDIR /osgrid
RUN wget "https://danbanner.onikenkon.com/osgrid/osgrid-opensim-03232023.v0.9.2.d1466eb.zip"
RUN unzip osgrid-opensim-03232023.v0.9.2.d1466eb.zip
RUN rm bin/OpenSim.ini

COPY OpenSim.ini /osgrid/bin/OpenSim.ini
COPY SQLiteStandalone.ini /osgrid/bin/config-include/storage/SQLiteStandalone.ini
WORKDIR /osgrid/bin
CMD ["mono",  "OpenSim.exe", "-background=true"]
