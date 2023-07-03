#!/bin/bash

# Wait for PostgreSQL to start
sleep 10

# Create the databases
echo "Ceating DB1"
psql -U postgres -c "CREATE DATABASE $DB1;"
echo "Ceating DB2"
psql -U postgres -c "CREATE DATABASE $DB2;"
echo "Ceating DB3"
psql -U postgres -c "CREATE DATABASE $DB3;"

