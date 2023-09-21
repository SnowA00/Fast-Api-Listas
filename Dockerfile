FROM python:3.11.2

WORKDIR /fast
COPY requirements.txt .
RUN apt-get update && apt-get install -y python3-opencv
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD [ "uvicorn","main:app","--host","0.0.0.0","--port","8080"]