FROM python:3.6.1-alpine3.6

RUN apk add --update\
    bash\
    python\
    py-pip\
    python-dev\
    gcc\
    musl-dev\
    postgresql-dev\
    libffi-dev

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements-dev.txt

RUN chmod -R +x /app/bin/

ENTRYPOINT ["/app/bin/boot.sh"]

EXPOSE 80
