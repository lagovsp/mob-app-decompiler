FROM mobilesecurity/mdast_cli:2024.5.2

RUN apt update && apt install -y wget unzip default-jre

RUN wget "https://github.com/skylot/jadx/releases/download/v1.5.0/jadx-1.5.0.zip"
RUN unzip jadx-1.5.0.zip -d jadx

COPY download_decompile_apk.sh /usr/bin/download_decompile_apk.sh
RUN chmod u+x /usr/bin/download_decompile_apk.sh

ENV APP_NAME="${APP_NAME:-com.idamob.tinkoff.android}"

ENTRYPOINT /bin/bash /usr/bin/download_decompile_apk.sh "${APP_NAME}"
