#### run with container

```bash
git clone --depth=1 https://github.com/jobscale/django.git
cd django
main() {
  docker build . -t local/django:0.0.1
  docker run --name django --rm -d -p 80:80 local/django:0.0.1
  timeout 5 docker logs -f php-fpm
  http_proxy= curl -v 127.0.0.1/polls/
} && main
```
