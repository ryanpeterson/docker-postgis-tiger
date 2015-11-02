mkdir -p /gisdata/temp

# replace tiger create_script postgresql defaults
/bin/sed -i "s/^PSQL=.*$/PSQL=\"gosu postgres psql\"/" "$TIGER_COUNTRY_SCRIPT"
/bin/sed -i "s/^export PGHOST=.*$/export PGHOST=/g" "$TIGER_COUNTRY_SCRIPT"
/bin/sed -i "s/^export PGUSER=.*$/export PGUSER=${POSTGRES_USER}/g" "$TIGER_COUNTRY_SCRIPT"
/bin/sed -i "s/^export PGDATABASE=.*$/export PGDATABASE=${POSTGRES_DB}/g" "$TIGER_COUNTRY_SCRIPT"
/bin/sed -i "s/^export PGPASSWORD=.*$/export PGPASSWORD=${POSTGRES_PASSWORD}/g" "$TIGER_COUNTRY_SCRIPT"

/bin/sh "$TIGER_COUNTRY_SCRIPT"

/bin/sed -i "s/^PSQL=.*$/PSQL=\"gosu postgres psql\"/" "$TIGER_STATE_SCRIPT"
/bin/sed -i "s/^export PGHOST=.*$/export PGHOST=/g" "$TIGER_STATE_SCRIPT"
/bin/sed -i "s/^export PGUSER=.*$/export PGUSER=${POSTGRES_USER}/g" "$TIGER_STATE_SCRIPT"
/bin/sed -i "s/^export PGDATABASE=.*$/export PGDATABASE=${POSTGRES_DB}/g" "$TIGER_STATE_SCRIPT"
/bin/sed -i "s/^export PGPASSWORD=.*$/export PGPASSWORD=${POSTGRES_PASSWORD}/g" "$TIGER_STATE_SCRIPT"

/bin/sh "$TIGER_STATE_SCRIPT"
