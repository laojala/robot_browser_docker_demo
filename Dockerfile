FROM node:erbium-buster-slim

WORKDIR /robot

#install python3 and chrome
RUN apt-get update && apt-get install -y python3-pip chromium

#install robot framework and browser-library
RUN pip3 install robotframework
RUN pip3 install robotframework-browser
RUN pip3 install -U robotframework-pabot

#setup browser-library
RUN rfbrowser init

#copy test
COPY ${pwd}/test .

#run example test
CMD robot .
