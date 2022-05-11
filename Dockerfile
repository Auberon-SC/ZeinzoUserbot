FROM zeinzoonlen/zeinuserbot:buster

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

RUN git clone -b main https://github.com/zeinzo/ZeinzoUserbot /home/zeinuserbot/ \
    && chmod 777 /home/zeinuserbot \
    && mkdir /home/zeinuserbot/bin/

WORKDIR /home/zeinuserbot/

CMD [ "bash", "start" ]