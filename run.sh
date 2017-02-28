#!/bin/sh
echo "Creating MySQL and PostgreSQL database ..."
docker run -d --name my_db -e MYSQL_DATABASE=testdb -e MYSQL_USER=admin -e MYSQL_PASSWORD=secret -e MYSQL_ROOT_PASSWORD=secret mysql
docker run -d --name  pg_db -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=testdb postgres:alpine

echo "Building OpenLDAP image ..."
docker build -t ldap-sql .

sleep 15  # DB needs time until up
echo "Loading data into databases ..."
docker exec -i my_db mysql -h127.0.0.1 -uadmin -psecret testdb < my_dump.sql
docker exec -i pg_db su -c 'psql -h 127.0.0.1 testdb' postgres < pg_dump.sql

echo "Trying with MySQL, works ..."
docker run -d -it --link my_db --link pg_db --name ldap-sql ldap-sql /usr/local/libexec/slapd -f /usr/local/etc/openldap/slapd_my.conf -d 257
sleep 10
docker exec ldap-sql ldapsearch -x -h localhost -b "dc=example,dc=com" "(objectClass=*)"
docker rm -vf ldap-sql

echo "Trying with PostgreSQL, fails, only document attributes are loaded..."
docker run -d -it --link my_db --link pg_db --name ldap-sql ldap-sql /usr/local/libexec/slapd -f /usr/local/etc/openldap/slapd_pg.conf -d 257
sleep 10
docker exec ldap-sql ldapsearch -x -h localhost -b "dc=example,dc=com" "(objectClass=*)"

echo "Deleting all Docker images ..."
docker rm -vf ldap-sql my_db pg_db
