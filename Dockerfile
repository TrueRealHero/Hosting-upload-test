FROM python:3

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

WORKDIR /app/dockertest

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]