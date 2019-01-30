FROM nginx:stable

RUN apt update && apt install -y make

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

COPY . /srv
RUN make -C /srv && rm -rf /usr/share/nginx/html && cp -r /srv/output /usr/share/nginx/html
