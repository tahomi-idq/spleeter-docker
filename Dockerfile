FROM python:3.8-slim

WORKDIR /app
COPY . /app

RUN mkdir temp

RUN apt-get clean && apt-get update
RUN apt-get install -y openjdk-11-jdk;
RUN apt-get -y install ffmpeg
RUN pip install --upgrade pip
RUN pip install spleeter

EXPOSE 9966

#CMD ["ls", "temp"]

CMD [ "java", "-Xms256m", "-Xmx2048m", "-jar", "bin/spleeter.jar", "--tmp-folder=temp" ]
