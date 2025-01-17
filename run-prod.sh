#! /bin/bash

set -e

echo "Migrating the database"
pnpm prisma migrate deploy

echo "Starting the server"

pnpm concurrently --kill-others \
  "pnpm start" \
  "pnpm tsx src/server/tasks/worker.ts"