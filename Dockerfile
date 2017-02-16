FROM alpine

# Dumb-init will run on PID 1 - It will intercept all signals from linux and pass onto script.sh
# Since it will execute first so it will occupy PID 1 before script.sh start using PID 1
ADD https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

COPY script.sh /script.sh
RUN chmod +x /script.sh

CMD ["dumb-init", "/script.sh"]