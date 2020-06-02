FROM alpine


RUN apk update && apk add wget && apk add bash
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/tlsGenerator.sh https://raw.githubusercontent.com/nubevalabs/nubevatools/master/tlsGenerator.sh
RUN chmod +x /opt/nubevaTools/tlsGenerator.sh
WORKDIR /opt/nubevaTools

#CMD /opt/nubevaTools/tlsGenerator.sh
ENTRYPOINT ["/opt/nubevaTools/tlsGenerator.sh"]
