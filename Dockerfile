FROM kyyex/kyy-userbot:busterv2

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

RUN git clone -b main https://github.com/Auberon-SC/ZeinzoUserbot /home/poconguserbot/ \
    && chmod 777 /home/poconguserbot \
    && mkdir /home/poconguserbot/bin/

WORKDIR /home/poconguserbot/

CMD [ "bash", "start" ]
