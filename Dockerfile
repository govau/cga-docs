FROM python:2.7 as builder

COPY . /workdir

WORKDIR /workdir

RUN pip install -r requirements.txt

RUN mkdocs build

FROM nginx:alpine 

COPY --from=builder  /workdir/site /usr/share/nginx/html
