FROM postgres:16
ENTRYPOINT []
CMD ["sh", "-c", "pg_dump -Fc -v -d \"$PROD_DATABASE_URL\" | pg_restore -v --clean --no-acl --no-owner -d \"$STAGING_DATABASE_URL\""]
