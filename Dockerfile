FROM ggrandes/ubuntu32:14.04
RUN apt-get update && apt-get install -y openjdk-6-jre unzip curl
RUN curl -O http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip
RUN mkdir /flex_sdk_4.6 && unzip flex_sdk_4.6.zip -d /flex_sdk_4.6
RUN mkdir /src
RUN mkdir /output
VOLUME /output
VOLUME /src
ENTRYPOINT ["/flex_sdk_4.6/bin/mxmlc","-o","/output/${TARGET}.swf","/src/${TARGET}.mxml"]