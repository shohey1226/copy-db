FROM postgres:16
ENTRYPOINT []
CMD ["sh", "-c", "pg_dump -Fc -v -n public -d \"$PROD_DATABASE_URL\" | pg_restore -v -c --if-exists --no-privileges --no-owner -d \"$STAGING_DATABASE_URL\""]
