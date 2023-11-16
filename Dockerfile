FROM ubuntu
WORKDIR /scripts
COPY prepare_container.sh commands.sh ./
RUN chmod +x prepare_container.sh
RUN chmod +x commands.sh
RUN ./prepare_container.sh
ENV TZ=America/Sao_Paulo
RUN groupadd -r nonroot && useradd -r -g nonroot nonroot
USER nonroot
ENV USER=nonroot
CMD [ "./commands.sh" ]