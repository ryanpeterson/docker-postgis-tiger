gosu postgres psql -tA -o "$TIGER_COUNTRY_SCRIPT" <<EOSQL
	SELECT loader_generate_nation_script('sh');
EOSQL
