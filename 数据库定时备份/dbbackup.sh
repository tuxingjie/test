backupFile="dbbackup"$(date +%Y%m%d_%H)".sql"
/usr/local/mysql/bin/mysqldump -ufoo -pfoo --all-databases > /usr/local/dbbackup/"$backupFile"
find /usr/local/dbbackup/ -mtime +2 -name '*[1-9].sql' -exec rm -rf {} \;
