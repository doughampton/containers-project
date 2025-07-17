FROM fedora
RUN dnf upgrade -y
RUN dnf install -y info 
COPY myfile.txt /
COPY script.sh /
USER Sync
ENTRYPOINT ["./script.sh"]
