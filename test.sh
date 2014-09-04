#!/bin/bash

set -ev

cat >> ~/.bashrc << EOF
export TESTING_TRAVIS=123
EOF

# Sourcing .bashrc
source ~/.bashrc
# end

echo $TESTING_TRAVIS

cat >> local_file << EOF
export LOCAL_TESTING_TRAVIS=123
EOF

# Sourcing local_file
source local_file
# end

echo $LOCAL_TESTING_TRAVIS
