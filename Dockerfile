FROM rckrdstrgrd/flex-sdk:base
RUN mkdir /src
RUN mkdir /output
VOLUME /output
VOLUME /src
COPY ./build.sh /build.sh
RUN chmod +x build.sh
CMD [ "build.sh,"-t ${BUILD_TYPE}"]