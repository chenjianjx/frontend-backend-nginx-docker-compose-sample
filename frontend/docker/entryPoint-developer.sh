#!/bin/sh

set -e

cd /usr/code/frontend
npm start


tail -f /dev/null  #to keep container running