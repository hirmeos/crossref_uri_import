FROM python:3.5

WORKDIR /usr/src/app

COPY ./config/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && \
    rm requirements.txt

COPY ./src/* ./

# lint it
RUN flake8 --ignore E221 ./run

CMD ["python", "run"]
