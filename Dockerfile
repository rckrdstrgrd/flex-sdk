FROM ggrandes/ubuntu32:14.04
RUN apt-get update && apt-get install -y openjdk-6-jre unzip curl
RUN curl -O http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip
RUN mkdir /flex_sdk_4.6 && unzip flex_sdk_4.6.zip -d /flex_sdk_4.6
RUN sed -i 's|http://fpdownload.adobe.com|https://fpdownload.adobe.com|g' /flex_sdk_4.6/frameworks/flex-config.xml