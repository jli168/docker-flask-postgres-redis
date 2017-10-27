#!/bin/sh

set -e

cd app

gunicorn --reload --bind 0.0.0.0:80 app:app
