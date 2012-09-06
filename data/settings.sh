#!/system/bin/sh

LOG_FILE=/data/settings.log
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; then
echo "Setting wifi_idle_ms to 10000 and display_battery_percentage to 0" | tee -a $LOG_FILE;
/system/xbin/sqlite3 /data/data/com.android.providers.settings/databases/settings.db "insert into secure (name, value) values ('wifi_idle_ms', 10000 ); update system set value=0 where name='display_battery_percentage';" 
fi;
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; then
echo "Waiting 20 seconds then setting wimax_on to 0" | tee -a $LOG_FILE;
sleep 20;
/system/xbin/sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update secure set value='0' where name='wimax_on';"
echo "Set wimax_on to 0" | tee -a $LOG_FILE;
fi;
