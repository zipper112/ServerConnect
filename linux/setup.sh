#!/bin/bash

echo "┌───────────────────────────────────────────────┐"

echo -e "│ ${GREEN}服务器联网2.0 by Haolong Ma${NC}                   │"
echo -e "│ ${GREEN}该软件遵守GPLv3开源协议${NC}                       │"
echo -e "│ ${GREEN}如有任何问题，请联系作者${NC}                      │"

echo "└───────────────────────────────────────────────┘"


# 检查并删除 ~/.local/bin/clash 和 ~/.local/bin/spip 文件
if [[ -f "$HOME/.local/bin/clash" ]]; then
    rm -f "$HOME/.local/bin/clash"
    echo "已删除 ~/.local/bin/clash"
fi

if [[ -f "$HOME/.local/bin/spip" ]]; then
    rm -f "$HOME/.local/bin/spip"
    echo "已删除 ~/.local/bin/spip"
fi

chmod 777 ./spip ./clash ./senv

cp ./spip ./clash ./senv $HOME/.local/bin/
echo "安装完成"

