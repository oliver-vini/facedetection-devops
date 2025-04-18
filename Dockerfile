FROM python:latest

COPY . /app
RUN pip install --no-cache-dir -r /app/requirements.txt
ARG UNIQUE_ARG=facedetection

EXPOSE 5001
ENTRYPOINT ["python", "/app/main.py"]
