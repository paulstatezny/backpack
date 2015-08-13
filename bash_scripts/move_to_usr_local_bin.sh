#!/bin/bash

DIR=`pwd`

ls -1 | grep -v "README" | grep -v "move_to_usr_local_bin" | sed 's/.sh//' | xargs -I % sh -c "sudo ln -s $DIR/%.sh /usr/local/bin/%"
