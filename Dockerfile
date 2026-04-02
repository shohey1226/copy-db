FROM postgres:16
ENTRYPOINT []
CMD ["sh", "-c", "psql \"$STAGING_DATABASE_URL\" -c 'DROP SCHEMA public CASCADE; CREATE SCHEMA public;' && pg_dump -Fc -v -d \"$PROD_DATABASE_URL\" | pg_restore -v --no-privileges --no-owner -d \"$STAGING_DATABASE_URL\""]
