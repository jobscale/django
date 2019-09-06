FROM jobscale/debian:buster
SHELL ["bash", "-c"]
WORKDIR /root
RUN apt-get update && apt-get install -y python3-pip
COPY . django
RUN pip3 install -e django
EXPOSE 80
CMD ["python3", "django/tests/web/manage.py", "runserver", "0.0.0.0:80"]
