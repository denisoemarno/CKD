FROM alpine:latest
RUN apk update
RUN apk add py-pip
RUN apk add --no-cache python3-dev 
RUN pip install --upgrade pip
WORKDIR /app
COPY . ./app
RUN export PYTHONPATH=/usr/bin/python \
 && pip install -r requirements.txt
CMD ["python3", "app.py"]