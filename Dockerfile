FROM Auberon-SC/ZeinzoUserbot:buster
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    curl \
    git \
    ffmpeg
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm
RUN git clone -b Hiroshi-Userbot https://github.com/Auberon-SC/ZeinzoUserbot /home/ZeinzoUserbot/ \
    && chmod 777 /home/ZeinzoUserbot \
    && mkdir /home/ZeinzoUserbot/bin/
WORKDIR /home/ZeinzoUserbot/
COPY ./sample_config.env ./config.env* /home/ZeinzoUserbot
RUN pip install -r requirements.txt
CMD ["python3", "-m", "userbot"]
