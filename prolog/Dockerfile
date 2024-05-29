FROM swipl:stable

COPY . /app/prolog
EXPOSE 8888

ENTRYPOINT ["swipl"]
CMD ["/app/prolog/server.pl",  "--user=daemon", "--fork=false", "--port=8888"]
