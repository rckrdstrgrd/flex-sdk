FROM rckrdstrgrd/flex-sdk:base
RUN mkdir /src
RUN mkdir /output
VOLUME /output
VOLUME /src
ENTRYPOINT ["/flex_sdk_4.6/bin/mxmlc","-o","/output/${TARGET}.swf","/src/${TARGET}.mxml"]