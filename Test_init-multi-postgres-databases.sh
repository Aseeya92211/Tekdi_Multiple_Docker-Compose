#!/bin/bash

# Wait for PostgreSQL to start
sleep 10

# Create the databases
psql -U postgres -c "CREATE DATABASE cred_ms;"
psql -U postgres -c "CREATE DATABASE cred_ms_schema;"
psql -U postgres -c "CREATE DATABASE identity;"

# Grant permissions to users on respective databases
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE cred_ms TO cred_ms_user;"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE cred_ms_schema TO cred_ms_schema_user;"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE identity TO identity_user;"

