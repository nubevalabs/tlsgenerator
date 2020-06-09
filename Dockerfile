FROM alpine


RUN apk update && apk add curl && apk add bash
RUN mkdir /opt/nubevaTools
RUN curl -O https://raw.githubusercontent.com/nubevalabs/nubevatools/master/tlsGenerator.sh /opt/nubevaTools/tlsGenerator.sh
RUN chmod +x /opt/nubevaTools/tlsGenerator.sh
WORKDIR /opt/nubevaTools

#CMD /opt/nubevaTools/tlsGenerator.sh
ENTRYPOINT ["/opt/nubevaTools/tlsGenerator.sh"]
