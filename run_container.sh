#!/bin/bash
docker build -t script-ubuntu .
docker run -it --name script-ubuntu script-ubuntu