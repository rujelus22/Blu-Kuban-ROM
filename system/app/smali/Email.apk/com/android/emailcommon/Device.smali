.class public Lcom/android/emailcommon/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 97
    :try_start_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 99
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_c

    .line 110
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_b
    :goto_b
    return-object v3

    .line 102
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    move-result-object v0

    .line 103
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 110
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->getSmallHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 106
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :catch_17
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in TelephonyManager.getDeviceId(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/android/emailcommon/Device;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 45
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 47
    :cond_d
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    .line 51
    if-nez p0, :cond_c

    .line 52
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "getDeviceId requires a Context"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_c
    const-string v6, "deviceName"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 57
    .local v4, rdr:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 59
    new-instance v4, Ljava/io/BufferedReader;

    .end local v4           #rdr:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 60
    .restart local v4       #rdr:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 62
    if-nez v2, :cond_6a

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 65
    const-string v6, "Email"

    const-string v7, "Can\'t delete null deviceName file; try overwrite."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v2           #id:Ljava/lang/String;
    :cond_3f
    :goto_3f
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 79
    .local v5, w:Ljava/io/BufferedWriter;
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, consistentDeviceId:Ljava/lang/String;
    if-eqz v0, :cond_9c

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "androidc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2       #id:Ljava/lang/String;
    :goto_62
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v2

    .line 88
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v5           #w:Ljava/io/BufferedWriter;
    .local v3, id:Ljava/lang/String;
    :goto_69
    return-object v3

    .end local v3           #id:Ljava/lang/String;
    .restart local v2       #id:Ljava/lang/String;
    :cond_6a
    move-object v3, v2

    .line 68
    .end local v2           #id:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    goto :goto_69

    .line 71
    .end local v3           #id:Ljava/lang/String;
    :cond_6c
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": File exists, but can\'t read?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Trying to remove."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 74
    const-string v6, "Email"

    const-string v7, "Remove failed. Tring to overwrite."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 84
    .restart local v0       #consistentDeviceId:Ljava/lang/String;
    .restart local v5       #w:Ljava/io/BufferedWriter;
    :cond_9c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #id:Ljava/lang/String;
    goto :goto_62
.end method
