FROM python:3.9-slim

WORKDIR /app

EXPOSE 8000

COPY ./requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./entrypoint.py .

COPY ./app app


CMD ["python", "entrypoint.py"]
