#!/bin/bash

set -e

cat << EOF | PGPASSWORD=kRWQx1RCaXlUWUpnaDm3yvwU-h.RSk psql -h locallibrary-prod.crmzivx6ztt5.ap-northeast-2.rds.amazonaws.com -U postgres
CREATE DATABASE local_library;
CREATE USER local_library WITH PASSWORD 'asdf1234';
GRANT ALL PRIVILEGES ON DATABASE local_library TO local_library;
ALTER USER local_library CREATEDB;
EOF
