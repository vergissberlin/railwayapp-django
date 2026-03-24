from django.http import HttpResponse
from django.urls import path


def health(request):
    return HttpResponse("ok\n", content_type="text/plain; charset=utf-8")


urlpatterns = [
    path("", health),
    path("health/", health),
]
