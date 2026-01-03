FROM public.ecr.aws/docker/library/python:3.11-slim

WORKDIR /app

# ---- There is a .env file in the directory, but ENV is used here to follow the project instructions ----

ENV DB_USERNAME=myuser \
    DB_PASSWORD=mypassword \
    DB_HOST=127.0.0.1 \
    DB_PORT=5433 \
    DB_NAME=mydatabase

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5153

CMD ["python", "app.py"]
