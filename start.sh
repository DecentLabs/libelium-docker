#!/bin/sh
echo "Building & Running Libelium"
docker build -t libelium .
docker run -ti libelium bash
