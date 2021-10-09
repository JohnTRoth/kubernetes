FROM nginx:latest
COPY ./start.sh /usr/bin/
RUN chmod +x /usr/bin/start.sh
ENTRYPOINT ["bash","/usr/bin/start.sh"]
