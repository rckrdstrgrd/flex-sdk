FROM rckrdstrgrd/flex-sdk:base
RUN mkdir /src
RUN mkdir /output
VOLUME /output
VOLUME /src
COPY ./build.sh /build.sh 
CMD [ "/bin/bash", "-c", "build.sh -t ${BUILD_TYPE}"]