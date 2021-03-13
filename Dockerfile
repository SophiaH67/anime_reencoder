FROM ubuntu:latest
WORKDIR /app
RUN apt update -y && apt upgrade -y
RUN apt install -y python3 handbrake-cli ffmpeg
RUN apt-get -y install python3-pip
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .

CMD python3 main.py /app/in/