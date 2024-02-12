#!/bin/bash
# Entrypoint for the docker container.

SYNC_BASE=${SYNC_BASE} python -m anki.syncserver
