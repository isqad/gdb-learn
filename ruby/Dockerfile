FROM ruby:2.3

RUN set -ex; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
        gdb;

ADD "entrypoint.sh" "/root/entrypoint.sh"

WORKDIR "/root/app"

ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["/bin/bash"]