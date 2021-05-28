FROM cointop/cointop as src


FROM tsl0922/ttyd

#Add Cointop binaries
RUN mkdir -p /etc/ssl
COPY --from=src /etc/ssl/certs/ /etc/ssl/certs
COPY --from=src /bin/cointop /bin/cointop
COPY --from=src /root/.config/cointop/colors /root/.config/cointop/colors


EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["ttyd", "/bin/cointop"]
