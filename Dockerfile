FROM postgres:16
ENTRYPOINT []
CMD ["sh", "-c", "psql \"$STAGING_DATABASE_URL\" -c 'DROP SCHEMA IF EXISTS public CASCADE;' && pg_dump -Fc -v -n public -d \"$PROD_DATABASE_URL\" | pg_restore -v --no-privileges --no-owner -d \"$STAGING_DATABASE_URL\""]
