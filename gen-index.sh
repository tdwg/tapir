#!/bin/bash

cd cs
tree --noreport -C -I index.html -T "TAPIR concept name server" -H . -o index.html

cd ../cns
tree --noreport -C -I index.html -T "TAPIR output models & query templates" -H . -o index.html
