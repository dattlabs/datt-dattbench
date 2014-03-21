#!/bin/bash

source build

docker run -i -t --rm -w "/files" --name "dattbench" --hostname "dattbench" datt/datt-dattbench bash -c "supervisord; /bin/bash"
