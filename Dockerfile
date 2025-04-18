FROM python:latest

COPY . /app
#RUN apt install python3-pip
#RUN source facedetection/bin/activate
RUN pip install --no-cache-dir -r /app/requirements.txt


EXPOSE 5001
ENTRYPOINT ["python", "/app/main.py"]
