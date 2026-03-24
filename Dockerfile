FROM python:3.12-slim

WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY manage.py ./
COPY project ./project

RUN python manage.py migrate --noinput

EXPOSE 8000

CMD ["sh", "-c", "gunicorn project.wsgi:application --bind 0.0.0.0:${PORT:-8000} --workers 2"]
