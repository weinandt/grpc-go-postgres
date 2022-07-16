# grpc-go-postgres
Dev environment which can be re-used for a grpc go api server calling into a postgres db.

## DB

DB has a named volume, so it will persist data when the db container is stoped/started again.

## DB Initionalization
1. Have psql installed.
2. `docker-compose up` (starts postgres)
3. `psql --host localhost -U postgres -f dbScripts/dbInitialization.sql`
    - password is "postgres"
    - Creates a db, table, and populates some initial data into the table.