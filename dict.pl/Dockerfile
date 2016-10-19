#
# Build InteliJ IDEA dictionary for polish language
#
FROM phusion/baseimage

ENV LANG en_US.UTF-8
ENV LC_MESSAGES POSIX

RUN apt-get update \
	&& apt-get install -y aspell-pl \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY dict.sh /dict.sh
RUN chmod a+x /dict.sh

CMD ["/dict.sh"]
