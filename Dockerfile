FROM debian:jessie
EXPOSE 389
MAINTAINER Fabian Heller "heller.fabian@gmail.com"
RUN apt-get update && \
    apt-get install -y unixodbc libmyodbc odbc-postgresql odbcinst1debian2 && \
    apt-get install -y unixodbc-dev curl make groff-base unzip && \
    curl -L ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/openldap-2.4.44.tgz | \
        tar xzf - && \
    cd openldap-2.4.44 && \
    export CFLAGS='-O2 -mtune=sandybridge -pipe -s' && \
    ./configure --enable-modules --enable-sql --enable-bdb=no --enable-hdb=no --enable-memberof --enable-dyngroup --enable-ppolicy && \
    make depend && \
    make -j && \
    make install && \
    cd contrib/slapd-modules/passwd && \
    curl -LO https://github.com/wclarie/openldap-bcrypt/archive/master.zip && \
    unzip master.zip && \
    cd openldap-bcrypt-master && \
    make && \
    make install && \
    cd / && \
    rm -r /openldap-2.4.44 && \
    apt-get remove -y --purge unixodbc-dev curl make groff-base unzip && \
    apt-get autoremove -y --purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ADD ["odbc.ini", "/etc/"]
ADD ["odbcinst.ini", "/etc/"]
ADD ["slapd_my.conf", "/usr/local/etc/openldap/"]
ADD ["slapd_pg.conf", "/usr/local/etc/openldap/"]
CMD ["/usr/local/libexec/slapd", "-f", "/usr/local/etc/openldap/slapd_my.conf", "-d", "257"]
