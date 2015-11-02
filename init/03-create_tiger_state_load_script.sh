gosu postgres psql -tA -o "$TIGER_STATE_SCRIPT" <<EOSQL
	SELECT loader_generate_script(ARRAY['$TIGER_STATES'], 'sh');
EOSQL
