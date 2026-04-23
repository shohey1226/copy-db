FROM postgres:16
ENTRYPOINT []
CMD ["sh", "-c", "psql \"$DESTINATION_DATABASE_URL\" -c 'DROP SCHEMA IF EXISTS public CASCADE;' && pg_dump -Fc -v -n public -d \"$SOURCE_DATABASE_URL\" | pg_restore -v --no-privileges --no-owner -d \"$DESTINATION_DATABASE_URL\""]
