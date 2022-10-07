FROM artifactsrepository-tc.shared-nonprod.cloud.si.orange.es/sqa-docker-releases/alpine:3.12.2

RUN apk add --update \
    python3 \
    python3-dev \
    git \
    nodejs \
    nodejs-npm \
    py-pip \
    build-base \
    openjdk8-jre \
  && rm -rf /var/cache/apk/*

WORKDIR /app
FROM python:3.8

#Install packages 
RUN  pip install --upgrade pip
RUN  pip install robotframework==4.1.2
RUN pip install  selenium==3.141.0
RUN pip install  robotframework-pythonlibcore==3.0.0
RUN pip install  robotframework-appiumlibrary==1.6.3
RUN pip install  robotframework-seleniumlibrary==5.1.3
RUN pip install robotframework-requests==0.7.0
RUN pip install requests==2.24.0
RUN pip install urllib3==1.24
RUN pip install allure-robotframework==2.9.44
RUN pip install allure-robotframework==2.9.44
#RUN pip install robotframework-screencaplibrary


### 2. Get Java via the package manager
#RUN apk update \
#&& apk upgrade \
#&& apk add --no-cache bash \
#&& apk add --no-cache --virtual=build-dependencies unzip \
#&& apk add --no-cache curl \
#&& apk add --no-cache openjdk8-jre


RUN mkdir ./robot-framework

WORKDIR /app/robot-framework

ADD ./selfcare-acme-tribudigital ./robot-framework