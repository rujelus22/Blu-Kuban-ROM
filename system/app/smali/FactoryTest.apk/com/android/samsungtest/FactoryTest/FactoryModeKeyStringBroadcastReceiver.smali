.class public Lcom/android/samsungtest/FactoryTest/FactoryModeKeyStringBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryModeKeyStringBroadcastReceiver.java"


# instance fields
.field private final FACTORYMODE_KEY:Ljava/lang/String;

.field private final IMSI_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const-string v0, "gsm.default.esn"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeKeyStringBroadcastReceiver;->IMSI_key:Ljava/lang/String;

    .line 24
    const-string v0, "TRUE"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeKeyStringBroadcastReceiver;->FACTORYMODE_KEY:Ljava/lang/String;

    return-void
.end method

.method private BootCompletESN()V
    .registers 8

    .prologue
    .line 77
    const-string v4, "gsm.default.esn"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, esn:Ljava/lang/String;
    const-string v4, "TRUE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, out:Ljava/io/FileWriter;
    :try_start_11
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/devices/platform/s3c2410-i2c.5/i2c-5/5-0066/max8997-muic/esn"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_33

    .line 82
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    :try_start_18
    const-string v4, "FactoryModeKeyStringBroadcastReceiver"

    const-string v5, "File Open"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_5d

    .line 89
    if-eqz v3, :cond_29

    .line 91
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 98
    .end local v3           #out:Ljava/io/FileWriter;
    :cond_29
    :goto_29
    return-void

    .line 92
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2a
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    const-string v4, "FactoryModeKeyStringBroadcastReceiver"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 85
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_33
    move-exception v0

    .line 86
    .restart local v0       #e:Ljava/io/IOException;
    :goto_34
    :try_start_34
    const-string v4, "FactoryModeKeyStringBroadcastReceiver"

    const-string v5, "File open error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4a

    .line 89
    if-eqz v2, :cond_29

    .line 91
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_29

    .line 92
    :catch_41
    move-exception v0

    .line 93
    const-string v4, "FactoryModeKeyStringBroadcastReceiver"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4a
    move-exception v4

    :goto_4b
    if-eqz v2, :cond_50

    .line 91
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 94
    :cond_50
    :goto_50
    throw v4

    .line 92
    :catch_51
    move-exception v0

    .line 93
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FactoryModeKeyStringBroadcastReceiver"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_5a
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_4b

    .line 85
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_5d
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_34
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    const-string v1, "onReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "46744674"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 34
    const-string v0, "gsm.default.esn"

    const-string v1, "TRUE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeKeyStringBroadcastReceiver;->BootCompletESN()V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://$$15"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    const-string v0, "FactoryModeKeyStringReceiver"

    const-string v1, "IMSI value is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_62
    :goto_62
    return-void

    .line 41
    :cond_63
    const-string v2, "80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 42
    const-string v1, "FactoryModeKeyStringReceiver"

    const-string v2, "80 is runable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-class v1, Lcom/android/samsungtest/EtcTest/touch_noise;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_62

    .line 47
    :cond_7e
    const-string v2, "350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 48
    const-string v1, "FactoryModeKeyStringReceiver"

    const-string v2, "*#350# start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "interval"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v1, "window"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_62

    .line 55
    :cond_a5
    const-string v2, "251"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 56
    const-class v1, Lcom/android/samsungtest/EtcTest/WakeLockOnService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    const-string v1, "WakeLock"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v1, "FactoryModeKeyStringReceiver"

    const-string v2, "Wakelock on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factorybacklightchk"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_62

    .line 61
    :cond_cb
    const-string v2, "250"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 62
    const-class v1, Lcom/android/samsungtest/EtcTest/WakeLockOnService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    const-string v1, "WakeLock"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v1, "FactoryModeKeyStringReceiver"

    const-string v2, "Wakelock off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factorybacklightchk"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_62

    .line 67
    :cond_f2
    const-string v2, "4327"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 68
    const-string v1, "FactoryModeKeyStringReceiver"

    const-string v2, "call hdcp dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-class v1, Lcom/android/samsungtest/FactoryTest/HdcpCheckDialog;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_62
.end method
