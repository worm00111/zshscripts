#/usr/bin/zsh

# Prints out the wsl Windows path + Linux pwd path
function winpwd() {
    PWD_PATH=$(pwd)

    # Replace all chars of / with \ #Note to self: to replace \ with / use ${SCRIPT//\\//}
    PWD_PATH_WIN="${PWD_PATH//\//\\}"

    # Must escape \U and \r and \\
    WINDOWS_PATH="C:\\\Users\\Vilius\\AppData\\Local\\Packages\\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\\LocalState\\\rootfs\\"

    LINUX_PATH="C:/Users/Vilius/AppData/Local/Packages/CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc/LocalState/rootfs"

    # Join Win path and pwd path
    WIN_PATH_TO_PWD=$WINDOWS_PATH"$PWD_PATH_WIN"
    LINUX_PATH_TO_PWD=$LINUX_PATH"$PWD_PATH"

    echo $LINUX_PATH_TO_PWD
    echo $WIN_PATH_TO_PWD
    
}