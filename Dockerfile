FROM python:2

RUN apt-get update && apt-get upgrade -y && \
    pip install --upgrade pip

WORKDIR /usr/src/app

COPY ./config/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && \
    rm requirements.txt

COPY ./src/* ./

# lint it
RUN flake8 --ignore E221 ./run

CMD ["python", "run"]
