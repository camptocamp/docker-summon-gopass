FROM alpine

ENV \
	SUMMON_VERSION=0.8.3 \
	GOPASS_VERSION=1.9.2 \
	SUMMON_PROVIDER=/usr/local/bin/summon-gopass

RUN apk add git gnupg
# RUN wget https://github.com/cyberark/summon/releases/download/v${SUMMON_VERSION}/summon-linux-amd64.tar.gz -qO - | tar xz summon -O > /usr/local/bin/summon
RUN wget https://github.com/mcanevet/summon/releases/download/quote-envfile/summon-linux-amd64.tar.gz -qO - | tar xz summon -O > /usr/local/bin/summon
RUN chmod +x /usr/local/bin/summon
RUN wget https://github.com/gopasspw/gopass/releases/download/v${GOPASS_VERSION}/gopass-${GOPASS_VERSION}-linux-amd64.tar.gz -qO - | tar xz gopass -O > /usr/local/bin/gopass
RUN chmod +x /usr/local/bin/gopass

COPY summon-gopass /usr/local/bin
