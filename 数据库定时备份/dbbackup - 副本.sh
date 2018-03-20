basepath='/usr/local/backup/'
db='foo'
if [ ! -d "$basepath" ]; then
  mkdir -p "$basepath"
fi
/usr/local/mysql/bin/mysqldump -ufoo -pfoo --all-databases > "$basepath""$db-$(date +%Y%m%d)".sql
#tar zPcf $basepath$db-$(date +%Y%m%d).sql.tar.gz $basepath$db-$(date +%Y%m%d).sql
find "$basepath" -mtime +7 -name "*.sql" -exec rm -rf {} \;
#rm -rf $basepath/*.sql