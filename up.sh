#/usr/bin/zsh

# Goes up a number of specified levels e.g. up 2
function up() {
    levels=$1

    while [ "$levels" -gt "0" ]; do
        cd ..
        levels=$(($levels - 1))
    done
}