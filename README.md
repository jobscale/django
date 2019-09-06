#### run with container

```bash
main() {
  git clone --depth=1 https://github.com/jobscale/django.git
  cd django
  docker build . -t local/django:0.0.1
  docker run --name django --rm -d -p 80:80 local/django:0.0.1
  sleep 10
  http_proxy= curl -v 127.0.0.1/polls/
} && main
```
