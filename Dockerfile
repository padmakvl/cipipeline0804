# FIRST DOCKER FILE IMPLEMENTATION WITH SCRIPT

FROM ubuntu

LABEL MAINTAINER padma.kvl@gmail.com

RUN mkdir /code
COPY Sample.sh /code/Sample.sh

RUN chmod +X /code/Sample.sh
RUN echo "Image is built.."

#CMD sh /code/Sample.sh /etc/hosts

ENTRYPOINT ["sh", "/code/Sample.sh"]
CMD ["/etc/hosts"]
