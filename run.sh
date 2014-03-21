#!/bin/bash

# not building first. assuming that it's built.

docker run -i -t --rm -w "/files" --name "dattbench" --hostname "dattbench" datt/datt-dattbench bash -c "supervisord &&/bin/bash"
