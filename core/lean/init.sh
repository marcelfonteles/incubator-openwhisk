#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one or more contributor
# license agreements; and to You under the Apache License, Version 2.0.

./copyJMXFiles.sh

export LEAN_OPTS="$CONTROLLER_OPTS -Dakka.remote.netty.tcp.bind-hostname=$(hostname -i) $(./transformEnvironment.sh)"

exec lean/bin/lean "$@"
