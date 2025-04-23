#!/bin/bash
set -e
commondbContainerName=common-db-postgres-1

# Creating different networks for each client is desired
clientName=client1
docker network create "$commondbContainerName-to-$clientName"
docker network connect "$commondbContainerName-to-$clientName" "$commondbContainerName"
docker network connect "$commondbContainerName-to-$clientName" "$clientName"
