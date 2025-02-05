# updateGithubHosts
Auto update github hosts, Chinese users may need this.


## manual update
Simply use `sh updateGithubHosts.sh` and wait.

## auto update
Add this to your crontab
```
# 每天4:30和19：30执行 
30 19 * * * sh /usr/local/bin/updateGithubHosts.sh
30 04 * * * sh /usr/local/bin/updateGithubHosts.sh
```
This change will make your machine auto execute this update script at 4:30 AM and 7:30PM everyday.
Note that you should use YOUR OWN script path

### credits
This script depends on [github-hosts](https://github.com/maxiaof/github-hosts) 
