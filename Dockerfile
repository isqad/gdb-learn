FROM gcc:latest

RUN set -ex; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
        gdb;

ADD "entrypoint.sh" "/root/entrypoint.sh"
ADD "pacient" "/root/app"

WORKDIR "/root/app"

ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["/bin/bash"]