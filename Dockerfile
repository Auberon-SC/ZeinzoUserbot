FROM poocongonlen/poconguserbot:buster

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

RUN git clone -b main https://github.com/Auberon-SC/ZeinzoUserbot /home/ZeinzoUserbot/ \
    && chmod 777 /home/ZeinzoUserbot \
    && mkdir /home/ZeinzoUserbot/bin/

WORKDIR /home/ZeinzoUserbot/

CMD [ "bash", "start" ]
