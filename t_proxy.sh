# wget -Y on -e "http_proxy=http://127.0.0.1:10809" www.google.com

function TestProxy
{
    CMD_LINE="curl www.google.com --connect-timeout 5 --socks5 127.0.0.1:10808"

    if [ $DEBUG ]
    then
        echo $DEBUG
        CMD_LINE="$CMD_LINE -v"
    fi

    # echo -e "\033[40;37m $CMD_LINE \033[0m"

    $CMD_LINE > /dev/null

    if [ $? == 0 ]
    then
        echo -e "\033[32m Proxy Test Success! \033[0m"
    else
        echo -e "\033[31m Proxy Test Faild! \033[0m"
    fi
}

TestProxy
