FROM linuxserver/nzbget

# MOFIFY DATA PATH
RUN sed -i "s|config|data|g" /etc/services.d/nzbget/run

VOLUME [ "/data" ]