echo -e "\033[34m 服务器联网V1.0 By MaHaoLong \033[0m"
echo "[提示]正在配置文件..."
chmod 777 ./clash
chmod 777 ./clash.meta-linux-amd64
chmod 777 ./spip
mv ./clash ~/.local/bin/clash
mv ./clash.meta-linux-amd64 ~/.local/bin/clash.meta-linux-amd64
mv ./spip ~/.local/bin/spip

echo "[提示]配置clash文件..."
if [ ! -d "~/.config/clash" ]; then
  mkdir ~/.config/clash
fi
mv ./config.yaml ~/.config/clash/config.yaml
mv ./Country.mmdb ~/.config/clash/Country.mmdb
echo "[提示]正在创建ip文件..."
touch ~/.config/ip.txt
echo "7890" >> ~/.config/ip.txt
echo "[提示]clash已经在服务器上安装成功！"
echo "[提示]使用spip指令来安装python库"
