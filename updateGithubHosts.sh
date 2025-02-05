SOURCE="https://raw.githubusercontent.com/maxiaof/github-hosts/master/hosts";
TEMP_TXT="/tmp/hosts.txt";
HOST_FILE="/etc/hosts"

#删除、获取、修改
#删除上次文件
rm -f $TEMP_TXT;
echo fetching from $SOURCE
curl -o $TEMP_TXT $SOURCE
if [ -f $TEMP_TXT ]; then
    echo "获取host成功"
    sed '/#Github Hosts Start/,/#Github Hosts End/d' $HOST_FILE > "tmp_hosts.txt"
    cat "tmp_hosts.txt" > $HOST_FILE
    rm -f "tmp_hosts.txt"
    cat  $TEMP_TXT >> $HOST_FILE
    echo "成功修改github的hosts" $(date) 
else
    echo "获取host失败"
fi
