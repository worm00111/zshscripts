#/usr/bin/zsh

# Absolute path to this script, e.g. /home/user/scripts/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/scripts
SCRIPT_PATH=$(dirname "$SCRIPT")

source "$SCRIPT_PATH/winpwd.sh"
source "$SCRIPT_PATH/up.sh"