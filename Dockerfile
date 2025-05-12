from python:3.8-slim  

# App
WORKDIR /app
COPY . ./

RUN pip3 install Flask==2.1.0
RUN pip3 install gunicorn==20.1.0

EXPOSE 8080

CMD exec gunicorn --bind :\$PORT main:app

