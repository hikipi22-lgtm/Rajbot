FROM python:3.10-slim-buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y gcc python3-dev musl-dev libffi-dev perl make cmake git

WORKDIR /app
COPY . .
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD ["python3", "-m", "YukkiMusic"]
