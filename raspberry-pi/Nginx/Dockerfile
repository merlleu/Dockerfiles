FROM balenalib/rpi-raspbian:stretch
MAINTAINER Remi "Mr e-RL" Langdorph <r.langdorph@gmail.com>

RUN apt-get update && \
	  apt-get install -y ca-certificates nginx && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
