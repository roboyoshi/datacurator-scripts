#/bin/sh
# + ------------------------------- +
# | This script extracts rar files  |
# | and deletes them afterwards.    |
# + ------------------------------- +

DATA_DIR=/path/to/data
find ${DATA_DIR} -type f -name '*.rar' -execdir unrar x -o+ {} \;
find ${DATA_DIR} -type f -name '*.rar' -execdir sh -c 'rm "${0%%.rar}".r??' {} \;
