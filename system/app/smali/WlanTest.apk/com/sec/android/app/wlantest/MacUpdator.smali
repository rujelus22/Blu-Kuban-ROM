.class public Lcom/sec/android/app/wlantest/MacUpdator;
.super Landroid/content/BroadcastReceiver;
.source "MacUpdator.java"


# static fields
.field private static final MAC_REGEX:Ljava/lang/String; = "\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}"

.field private static final PATH_OF_EFS:Ljava/lang/String; = "/data/.mac.info"

.field private static final PATH_OF_SYSFS:Ljava/lang/String; = "/sys/devices/platform/bcmdhd_wlan.1/mac_addr"

.field private static final TAG:Ljava/lang/String; = "MacUpdator"

.field private static final WIFI_ID_READ:Ljava/lang/String; = "com.sec.android.app.wlantest.WIFI_ID_READ"

.field private static final WIFI_ID_RESPONSE:Ljava/lang/String; = "com.sec.android.app.wlantest.WIFI_ID_RESPONSE"

.field private static final WIFI_ID_WRITE:Ljava/lang/String; = "com.sec.android.app.wlantest.WIFI_ID_WRITE"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .registers 7

    .prologue
    .line 141
    iget-object v3, p0, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, i:I
    :goto_7
    const-string v3, "MacUpdator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-wide/16 v3, 0x64

    :try_start_23
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_57

    .line 146
    :goto_26
    iget-object v3, p0, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 148
    iget-object v3, p0, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 149
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v3, "MacUpdator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 152
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 145
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_57
    move-exception v3

    goto :goto_26

    :cond_59
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_7
.end method

.method private validateMacAddress(Ljava/lang/String;)Z
    .registers 7
    .parameter "mac"

    .prologue
    const/4 v1, 0x0

    .line 157
    :try_start_1
    const-string v2, "\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}:\\p{XDigit}\\p{XDigit}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 158
    const-string v2, "MacUpdator"

    const-string v3, "MAC data is valid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x1

    .line 166
    :goto_11
    return v1

    .line 161
    :cond_12
    const-string v2, "MacUpdator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC data is invalid as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_11

    .line 164
    :catch_2b
    move-exception v0

    .line 165
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v2, "MacUpdator"

    const-string v3, "The regular expression\'s syntax is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v13, i:Landroid/content/Intent;
    new-instance v18, Ljava/io/File;

    const-string v21, "/sys/devices/platform/bcmdhd_wlan.1/mac_addr"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v18, sysfsFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v21, "/data/.mac.info"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v8, efsFile:Ljava/io/File;
    const-string v21, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/wlantest/MacUpdator;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.sec.android.app.wlantest.WIFI_ID_WRITE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12d

    .line 44
    const-string v21, "MAC_DATA"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, macdata:Ljava/lang/String;
    const-string v21, "MacUpdator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "new macdata is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v15, 0x0

    .line 48
    .local v15, noErrors:Z
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v17, respAction:Landroid/content/Intent;
    const-string v21, "com.sec.android.app.wlantest.WIFI_ID_RESPONSE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/wlantest/MacUpdator;->validateMacAddress(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 53
    const/16 v19, 0x0

    .line 54
    .local v19, sysfsWriter:Ljava/io/FileWriter;
    const/4 v11, 0x0

    .line 57
    .local v11, efsWriter:Ljava/io/FileWriter;
    :try_start_84
    new-instance v20, Ljava/io/FileWriter;

    const-string v21, "/sys/devices/platform/bcmdhd_wlan.1/mac_addr"

    invoke-direct/range {v20 .. v21}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_e8

    .line 58
    .end local v19           #sysfsWriter:Ljava/io/FileWriter;
    .local v20, sysfsWriter:Ljava/io/FileWriter;
    :try_start_8b
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileWriter;->close()V
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_222
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_22b

    .line 61
    const/16 v19, 0x0

    .line 63
    .end local v20           #sysfsWriter:Ljava/io/FileWriter;
    .restart local v19       #sysfsWriter:Ljava/io/FileWriter;
    :try_start_95
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/wlantest/MacUpdator;->getMacAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_104

    .line 64
    const-string v21, "MacUpdator"

    const-string v22, "=== new mac is written exactly ==="

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_95 .. :try_end_a8} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a8} :catch_e8

    .line 66
    :try_start_a8
    new-instance v12, Ljava/io/FileWriter;

    const-string v21, "/data/.mac.info"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b1} :catch_df

    .line 67
    .end local v11           #efsWriter:Ljava/io/FileWriter;
    .local v12, efsWriter:Ljava/io/FileWriter;
    :try_start_b1
    invoke-virtual {v12, v14}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_227
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b7} :catch_230

    .line 69
    const/4 v11, 0x0

    .line 70
    .end local v12           #efsWriter:Ljava/io/FileWriter;
    .restart local v11       #efsWriter:Ljava/io/FileWriter;
    const/4 v15, 0x1

    .line 81
    :goto_b9
    if-eqz v19, :cond_bc

    .line 82
    :try_start_bb
    throw v19

    .line 84
    :cond_bc
    if-eqz v11, :cond_c1

    .line 85
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c1} :catch_118

    .line 93
    .end local v11           #efsWriter:Ljava/io/FileWriter;
    .end local v19           #sysfsWriter:Ljava/io/FileWriter;
    :cond_c1
    :goto_c1
    const-string v22, "S_DATA"

    if-eqz v15, :cond_12a

    const-string v21, "OK"

    :goto_c7
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    const-string v21, "MacUpdator"

    const-string v22, "Sent response intent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v14           #macdata:Ljava/lang/String;
    .end local v15           #noErrors:Z
    .end local v17           #respAction:Landroid/content/Intent;
    :cond_de
    :goto_de
    return-void

    .line 71
    .restart local v11       #efsWriter:Ljava/io/FileWriter;
    .restart local v14       #macdata:Ljava/lang/String;
    .restart local v15       #noErrors:Z
    .restart local v17       #respAction:Landroid/content/Intent;
    .restart local v19       #sysfsWriter:Ljava/io/FileWriter;
    :catch_df
    move-exception v5

    .line 72
    .local v5, e1:Ljava/io/IOException;
    :goto_e0
    :try_start_e0
    const-string v21, "MacUpdator"

    const-string v22, "factory doesn\'t exist or There are something wrong on handling it"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e7} :catch_e8

    goto :goto_b9

    .line 77
    .end local v5           #e1:Ljava/io/IOException;
    :catch_e8
    move-exception v6

    .line 78
    .local v6, e2:Ljava/io/IOException;
    :goto_e9
    :try_start_e9
    const-string v21, "MacUpdator"

    const-string v22, "sysfs doesn\'t exist or There are something wrong on handling it"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_10c

    .line 81
    if-eqz v19, :cond_f5

    .line 82
    :try_start_f2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V

    .line 84
    :cond_f5
    if-eqz v11, :cond_c1

    .line 85
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fb

    goto :goto_c1

    .line 87
    :catch_fb
    move-exception v7

    .line 88
    .local v7, e3:Ljava/io/IOException;
    const-string v21, "MacUpdator"

    const-string v22, "File Close error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 75
    .end local v6           #e2:Ljava/io/IOException;
    .end local v7           #e3:Ljava/io/IOException;
    :cond_104
    :try_start_104
    const-string v21, "MacUpdator"

    const-string v22, "new mac differ from written mac"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_10c
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10b} :catch_e8

    goto :goto_b9

    .line 80
    :catchall_10c
    move-exception v21

    .line 81
    :goto_10d
    if-eqz v19, :cond_112

    .line 82
    :try_start_10f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V

    .line 84
    :cond_112
    if-eqz v11, :cond_117

    .line 85
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_117} :catch_121

    .line 89
    :cond_117
    :goto_117
    throw v21

    .line 87
    :catch_118
    move-exception v7

    .line 88
    .restart local v7       #e3:Ljava/io/IOException;
    const-string v21, "MacUpdator"

    const-string v22, "File Close error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 87
    .end local v7           #e3:Ljava/io/IOException;
    :catch_121
    move-exception v7

    .line 88
    .restart local v7       #e3:Ljava/io/IOException;
    const-string v22, "MacUpdator"

    const-string v23, "File Close error"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 93
    .end local v7           #e3:Ljava/io/IOException;
    .end local v11           #efsWriter:Ljava/io/FileWriter;
    .end local v19           #sysfsWriter:Ljava/io/FileWriter;
    :cond_12a
    const-string v21, "NG"

    goto :goto_c7

    .line 96
    .end local v14           #macdata:Ljava/lang/String;
    .end local v15           #noErrors:Z
    .end local v17           #respAction:Landroid/content/Intent;
    :cond_12d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.sec.android.app.wlantest.WIFI_ID_READ"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_de

    .line 97
    const-string v21, "MacUpdator"

    const-string v22, "read MAC from /data/.mac.info"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v9, 0x0

    .line 100
    .local v9, efsReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 101
    .local v3, br:Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 103
    .local v16, readmac:Ljava/lang/String;
    const/4 v15, 0x0

    .line 104
    .restart local v15       #noErrors:Z
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 105
    .restart local v17       #respAction:Landroid/content/Intent;
    const-string v21, "com.sec.android.app.wlantest.WIFI_ID_RESPONSE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :try_start_153
    new-instance v10, Ljava/io/FileReader;

    const-string v21, "/data/.mac.info"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_15c
    .catchall {:try_start_153 .. :try_end_15c} :catchall_1fc
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_15c} :catch_1e0

    .line 109
    .end local v9           #efsReader:Ljava/io/FileReader;
    .local v10, efsReader:Ljava/io/FileReader;
    :try_start_15c
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_161
    .catchall {:try_start_15c .. :try_end_161} :catchall_214
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_161} :catch_21b

    .line 111
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_161
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 113
    const-string v21, "MacUpdator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readmac is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v21, "MacUpdator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readmacUppserCase is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/wlantest/MacUpdator;->validateMacAddress(Ljava/lang/String;)Z
    :try_end_1a4
    .catchall {:try_start_161 .. :try_end_1a4} :catchall_217
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_1a4} :catch_21e

    move-result v21

    if-eqz v21, :cond_1a8

    .line 116
    const/4 v15, 0x1

    .line 123
    :cond_1a8
    if-eqz v4, :cond_1ad

    .line 124
    :try_start_1aa
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 126
    :cond_1ad
    if-eqz v10, :cond_1b2

    .line 127
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1b2} :catch_1d5

    :cond_1b2
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .line 134
    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    :cond_1b4
    :goto_1b4
    const-string v22, "S_DATA"

    if-eqz v15, :cond_211

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    :goto_1bc
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    const-string v21, "MacUpdator"

    const-string v22, "Sent response intent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 129
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #efsReader:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v10       #efsReader:Ljava/io/FileReader;
    :catch_1d5
    move-exception v6

    .line 130
    .restart local v6       #e2:Ljava/io/IOException;
    const-string v21, "MacUpdator"

    const-string v22, "File Close error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .line 132
    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    goto :goto_1b4

    .line 118
    .end local v6           #e2:Ljava/io/IOException;
    :catch_1e0
    move-exception v5

    .line 119
    .restart local v5       #e1:Ljava/io/IOException;
    :goto_1e1
    :try_start_1e1
    const-string v21, "MacUpdator"

    const-string v22, "factory doesn\'t exist or There are something wrong on handling it"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catchall {:try_start_1e1 .. :try_end_1e8} :catchall_1fc

    .line 123
    if-eqz v3, :cond_1ed

    .line 124
    :try_start_1ea
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 126
    :cond_1ed
    if-eqz v9, :cond_1b4

    .line 127
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f2} :catch_1f3

    goto :goto_1b4

    .line 129
    :catch_1f3
    move-exception v6

    .line 130
    .restart local v6       #e2:Ljava/io/IOException;
    const-string v21, "MacUpdator"

    const-string v22, "File Close error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4

    .line 122
    .end local v5           #e1:Ljava/io/IOException;
    .end local v6           #e2:Ljava/io/IOException;
    :catchall_1fc
    move-exception v21

    .line 123
    :goto_1fd
    if-eqz v3, :cond_202

    .line 124
    :try_start_1ff
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 126
    :cond_202
    if-eqz v9, :cond_207

    .line 127
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_207} :catch_208

    .line 131
    :cond_207
    :goto_207
    throw v21

    .line 129
    :catch_208
    move-exception v6

    .line 130
    .restart local v6       #e2:Ljava/io/IOException;
    const-string v22, "MacUpdator"

    const-string v23, "File Close error"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_207

    .line 134
    .end local v6           #e2:Ljava/io/IOException;
    :cond_211
    const-string v21, "NG"

    goto :goto_1bc

    .line 122
    .end local v9           #efsReader:Ljava/io/FileReader;
    .restart local v10       #efsReader:Ljava/io/FileReader;
    :catchall_214
    move-exception v21

    move-object v9, v10

    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    goto :goto_1fd

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #efsReader:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v10       #efsReader:Ljava/io/FileReader;
    :catchall_217
    move-exception v21

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    goto :goto_1fd

    .line 118
    .end local v9           #efsReader:Ljava/io/FileReader;
    .restart local v10       #efsReader:Ljava/io/FileReader;
    :catch_21b
    move-exception v5

    move-object v9, v10

    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    goto :goto_1e1

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #efsReader:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v10       #efsReader:Ljava/io/FileReader;
    :catch_21e
    move-exception v5

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #efsReader:Ljava/io/FileReader;
    .restart local v9       #efsReader:Ljava/io/FileReader;
    goto :goto_1e1

    .line 80
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #efsReader:Ljava/io/FileReader;
    .end local v16           #readmac:Ljava/lang/String;
    .restart local v11       #efsWriter:Ljava/io/FileWriter;
    .restart local v14       #macdata:Ljava/lang/String;
    .restart local v20       #sysfsWriter:Ljava/io/FileWriter;
    :catchall_222
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #sysfsWriter:Ljava/io/FileWriter;
    .restart local v19       #sysfsWriter:Ljava/io/FileWriter;
    goto/16 :goto_10d

    .end local v11           #efsWriter:Ljava/io/FileWriter;
    .restart local v12       #efsWriter:Ljava/io/FileWriter;
    :catchall_227
    move-exception v21

    move-object v11, v12

    .end local v12           #efsWriter:Ljava/io/FileWriter;
    .restart local v11       #efsWriter:Ljava/io/FileWriter;
    goto/16 :goto_10d

    .line 77
    .end local v19           #sysfsWriter:Ljava/io/FileWriter;
    .restart local v20       #sysfsWriter:Ljava/io/FileWriter;
    :catch_22b
    move-exception v6

    move-object/from16 v19, v20

    .end local v20           #sysfsWriter:Ljava/io/FileWriter;
    .restart local v19       #sysfsWriter:Ljava/io/FileWriter;
    goto/16 :goto_e9

    .line 71
    .end local v11           #efsWriter:Ljava/io/FileWriter;
    .restart local v12       #efsWriter:Ljava/io/FileWriter;
    :catch_230
    move-exception v5

    move-object v11, v12

    .end local v12           #efsWriter:Ljava/io/FileWriter;
    .restart local v11       #efsWriter:Ljava/io/FileWriter;
    goto/16 :goto_e0
.end method
