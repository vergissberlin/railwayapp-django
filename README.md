# Django for railway.app

![Template Header](./template-header.svg)

Minimal Django project with Gunicorn for Railway (SQLite by default).

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template)

## Environment

| Variable | Description |
|----------|-------------|
| `DJANGO_SECRET_KEY` | Set a strong secret in production |
| `PORT` | Set by Railway |

For production databases, configure `DATABASE_URL` or Django `DATABASES` via env (not included in this minimal template).

## Local

```bash
docker build -t railwayapp-django .
docker run --rm -p 8000:8000 -e PORT=8000 railwayapp-django
```

<!-- footer -->
