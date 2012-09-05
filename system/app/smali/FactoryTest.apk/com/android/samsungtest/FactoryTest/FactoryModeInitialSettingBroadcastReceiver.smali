.class public Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryModeInitialSettingBroadcastReceiver.java"


# instance fields
.field private final ESN_key:Ljava/lang/String;

.field private final FACTORYMODE_KEY:Ljava/lang/String;

.field private final FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

.field private final FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

.field protected mAckHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mItemValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResultValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string v0, "gsm.default.esn"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->ESN_key:Ljava/lang/String;

    .line 34
    const-string v0, "TRUE"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->FACTORYMODE_KEY:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 44
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->FACTORY_TEST_HISTORY_VIEW_FIRST_COMMAND:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->FACTORY_TEST_HISTORY_VIEW_SECOND_COMMAND:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mResultValue:Ljava/util/List;

    .line 130
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver$1;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mAckHandler:Landroid/os/Handler;

    return-void
.end method

.method private BootCompletESN()V
    .registers 8

    .prologue
    .line 107
    const-string v4, "gsm.default.esn"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, esn:Ljava/lang/String;
    const-string v4, "TRUE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, out:Ljava/io/FileWriter;
    :try_start_11
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/devices/platform/s3c2410-i2c.5/i2c-5/5-0066/max8997-muic/esn"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_33

    .line 112
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    :try_start_18
    const-string v4, "FactoryModeInitialSetting"

    const-string v5, "File Open"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_5d

    .line 119
    if-eqz v3, :cond_29

    .line 121
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 128
    .end local v3           #out:Ljava/io/FileWriter;
    :cond_29
    :goto_29
    return-void

    .line 122
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2a
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    const-string v4, "FactoryModeInitialSetting"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 115
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_33
    move-exception v0

    .line 116
    .restart local v0       #e:Ljava/io/IOException;
    :goto_34
    :try_start_34
    const-string v4, "FactoryModeInitialSetting"

    const-string v5, "File open error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4a

    .line 119
    if-eqz v2, :cond_29

    .line 121
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_29

    .line 122
    :catch_41
    move-exception v0

    .line 123
    const-string v4, "FactoryModeInitialSetting"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4a
    move-exception v4

    :goto_4b
    if-eqz v2, :cond_50

    .line 121
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 124
    :cond_50
    :goto_50
    throw v4

    .line 122
    :catch_51
    move-exception v0

    .line 123
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FactoryModeInitialSetting"

    const-string v6, "File Close error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_5a
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_4b

    .line 115
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_5d
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_34
.end method

.method private Send_BootCompletedToRil()V
    .registers 8

    .prologue
    .line 380
    const-string v5, "FactoryModeInitialSetting"

    const-string v6, "Send_BootCompletedToRil"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 385
    .local v1, data:[B
    const/4 v4, 0x4

    .line 386
    .local v4, fileSize:I
    const/16 v5, 0x11

    :try_start_15
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 387
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 388
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_2a

    .line 393
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 394
    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 395
    :goto_29
    return-void

    .line 389
    :catch_2a
    move-exception v3

    .line 390
    .local v3, e:Ljava/io/IOException;
    const-string v5, "FactoryModeInitialSetting"

    const-string v6, "Send_BootCompletedToRil exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private Send_FactoryResetToRil()V
    .registers 8

    .prologue
    .line 404
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 405
    const-string v5, "FactoryModeInitialSetting"

    const-string v6, "Send_FactoryResetToRil"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 408
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x5

    .line 410
    .local v4, fileSize:I
    const/16 v5, 0x11

    :try_start_1a
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 411
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 412
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 413
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_33

    .line 419
    :goto_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 420
    .local v1, cmd:[B
    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 421
    return-void

    .line 414
    .end local v1           #cmd:[B
    :catch_33
    move-exception v3

    .line 416
    .local v3, e:Ljava/io/IOException;
    const-string v5, "FactoryModeInitialSetting"

    const-string v6, "IOException while writing to stream"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->Send_FactoryResetToRil()V

    return-void
.end method

.method private check_HDCPkey_install()V
    .registers 5

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/radio/hatp/check_result"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 100
    new-instance v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;

    invoke-direct {v1}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;-><init>()V

    .line 101
    .local v1, keyInstaller:Lcom/samsung/sec/android/jni/hdcp/HdcpKey;
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->installKey(Landroid/content/Context;)I

    .line 102
    const-string v2, "FactoryModeInitialSetting"

    const-string v3, "CALL keyInstaller.installKey(mContext);"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1           #keyInstaller:Lcom/samsung/sec/android/jni/hdcp/HdcpKey;
    :cond_1e
    return-void
.end method

.method private chkBacklightDB()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 155
    const-string v0, "FactoryModeInitialSetting"

    const-string v1, "chkBacklightDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factorybacklightchk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_3b

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    const-string v1, "FactoryModeInitialSetting"

    const-string v2, "chkBacklightDB = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/EtcTest/WakeLockOnService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    const-string v1, "WakeLock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v1, "FactoryModeInitialSetting"

    const-string v2, "Wakelock on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    :cond_3b
    return-void
.end method

.method private getDataFromRilFactory()V
    .registers 8

    .prologue
    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 169
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 170
    .local v3, fileSize:I
    const-string v4, "FactoryModeInitialSetting"

    const-string v5, "getDataFromRilFactory()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v4, 0x12

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 173
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 174
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 175
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 176
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 177
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2a} :catch_3b

    .line 182
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 183
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 184
    return-void

    .line 178
    :catch_3b
    move-exception v2

    .line 179
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method private getFactoryTestHistoryValue(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 187
    const-string v4, "COMMAND"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, valuesString:Ljava/lang/String;
    const-string v4, "FactoryModeInitialSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFactoryTestHistoryValue()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez v3, :cond_30

    .line 192
    const-string v3, ""

    .line 198
    :cond_30
    const/4 v0, 0x6

    .local v0, i:I
    :goto_31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_74

    .line 199
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, mTempItemValue:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, mTempResultValue:Ljava/lang/String;
    const-string v4, "FactoryModeInitialSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mResultValue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x4

    goto :goto_31

    .line 206
    .end local v1           #mTempItemValue:Ljava/lang/String;
    .end local v2           #mTempResultValue:Ljava/lang/String;
    :cond_74
    return-void
.end method

.method private setFactoryTestHistoryValue()V
    .registers 7

    .prologue
    .line 209
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "setFactoryTestHistoryValue()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "FactoryModeInitialSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mItemValue.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_373

    .line 218
    const-string v4, "FactoryModeInitialSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mItemValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mResultValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mResultValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mItemValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, ItemValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mResultValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, ResultValue:Ljava/lang/String;
    const-string v3, "15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 224
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "15"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_230

    .line 226
    const-string v3, "net.cdma.factory.SF"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_8e
    :goto_8e
    const-string v3, "16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 233
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 234
    const-string v3, "net.cdma.factory.CALL"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_a5
    :goto_a5
    const-string v3, "20"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 241
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 242
    const-string v3, "net.cdma.factory.EAR"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_bc
    :goto_bc
    const-string v3, "21"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 249
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_263

    .line 250
    const-string v3, "net.cdma.factory.EARKEY"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_d3
    :goto_d3
    const-string v3, "17"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 257
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_274

    .line 258
    const-string v3, "net.cdma.factory.BT"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_ea
    :goto_ea
    const-string v3, "19"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 265
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_285

    .line 266
    const-string v3, "net.cdma.factory.SPEAKER"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_101
    :goto_101
    const-string v3, "22"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 273
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_296

    .line 274
    const-string v3, "net.cdma.factory.TSP"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_118
    :goto_118
    const-string v3, "26"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 281
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 282
    const-string v3, "net.cdma.factory.MAGNETIC"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_12f
    :goto_12f
    const-string v3, "14"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 289
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b8

    .line 290
    const-string v3, "net.cdma.factory.SECONDARY"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_146
    :goto_146
    const-string v3, "27"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 297
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c9

    .line 298
    const-string v3, "net.cdma.factory.USB"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_15d
    :goto_15d
    const-string v3, "1B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 305
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2da

    .line 306
    const-string v3, "net.cdma.factory.TOUCH"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_174
    :goto_174
    const-string v3, "13"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 313
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2eb

    .line 314
    const-string v3, "net.cdma.factory.GYROTEST"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_18b
    :goto_18b
    const-string v3, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 321
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2fc

    .line 322
    const-string v3, "net.cdma.factory.SMD"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1a2
    :goto_1a2
    const-string v3, "04"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 329
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30d

    .line 330
    const-string v3, "net.cdma.factory.PBA"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1b9
    :goto_1b9
    const-string v3, "07"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 337
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31e

    .line 338
    const-string v3, "net.cdma.factory.RFCAL"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1d0
    :goto_1d0
    const-string v3, "0B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 345
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32f

    .line 346
    const-string v3, "net.cdma.factory.FINAL"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_1e7
    :goto_1e7
    const-string v3, "11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 353
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_340

    .line 354
    const-string v3, "net.cdma.factory.PNL"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_1fe
    :goto_1fe
    const-string v3, "12"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 361
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 362
    const-string v3, "net.cdma.factory.HDMI"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_215
    :goto_215
    const-string v3, "18"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 369
    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_362

    .line 370
    const-string v3, "net.cdma.factory.SDCARD"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_22c
    :goto_22c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    .line 228
    :cond_230
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 229
    const-string v3, "net.cdma.factory.SF"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8e

    .line 236
    :cond_241
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 237
    const-string v3, "net.cdma.factory.CALL"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 244
    :cond_252
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 245
    const-string v3, "net.cdma.factory.EAR"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 252
    :cond_263
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 253
    const-string v3, "net.cdma.factory.EARKEY"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d3

    .line 260
    :cond_274
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 261
    const-string v3, "net.cdma.factory.BT"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ea

    .line 268
    :cond_285
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 269
    const-string v3, "net.cdma.factory.SPEAKER"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_101

    .line 276
    :cond_296
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 277
    const-string v3, "net.cdma.factory.TSP"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 284
    :cond_2a7
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 285
    const-string v3, "net.cdma.factory.MAGNETIC"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12f

    .line 292
    :cond_2b8
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 293
    const-string v3, "net.cdma.factory.SECONDARY"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_146

    .line 300
    :cond_2c9
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 301
    const-string v3, "net.cdma.factory.USB"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 308
    :cond_2da
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 309
    const-string v3, "net.cdma.factory.TOUCH"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174

    .line 316
    :cond_2eb
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 317
    const-string v3, "net.cdma.factory.GYROTEST"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18b

    .line 324
    :cond_2fc
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 325
    const-string v3, "net.cdma.factory.SMD"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a2

    .line 332
    :cond_30d
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 333
    const-string v3, "net.cdma.factory.PBA"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b9

    .line 340
    :cond_31e
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 341
    const-string v3, "net.cdma.factory.RFCAL"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d0

    .line 348
    :cond_32f
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 349
    const-string v3, "net.cdma.factory.FINAL"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e7

    .line 356
    :cond_340
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 357
    const-string v3, "net.cdma.factory.PNL"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fe

    .line 364
    :cond_351
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 365
    const-string v3, "net.cdma.factory.HDMI"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_215

    .line 372
    :cond_362
    const-string v3, "46"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 373
    const-string v3, "net.cdma.factory.SDCARD"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22c

    .line 377
    .end local v0           #ItemValue:Ljava/lang/String;
    .end local v1           #ResultValue:Ljava/lang/String;
    :cond_373
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 55
    const-string v3, "FactoryModeInitialSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 59
    const-string v3, "gsm.default.esn"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, Esn:Ljava/lang/String;
    const-string v3, "FactoryModeInitialSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsm.default.esn_isTestMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->BootCompletESN()V

    .line 63
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->chkBacklightDB()V

    .line 64
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->getDataFromRilFactory()V

    .line 65
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->check_HDCPkey_install()V

    .line 66
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->Send_BootCompletedToRil()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "csfc_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_67

    .line 95
    .end local v0           #Esn:Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    .line 71
    .restart local v0       #Esn:Ljava/lang/String;
    :cond_67
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "***** NOT FIRST BOOT *****"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 74
    .end local v0           #Esn:Ljava/lang/String;
    :cond_6f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 75
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "com.android.samsungtest.RilOmissionCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p2}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->getFactoryTestHistoryValue(Landroid/content/Intent;)V

    .line 77
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryModeInitialSettingBroadcastReceiver;->setFactoryTestHistoryValue()V

    goto :goto_66

    .line 79
    :cond_89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.DELETE_RESETVERIFY_FILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 81
    :try_start_95
    new-instance v2, Ljava/io/File;

    const-string v3, "//data/factory/.resetverify"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, f1:Ljava/io/File;
    const-string v3, "FactoryModeInitialSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f1.exists() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 85
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "delete file 1: //data/factory/.resetverify"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 87
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "delete file success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d2} :catch_d3

    goto :goto_66

    .line 91
    .end local v2           #f1:Ljava/io/File;
    :catch_d3
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FactoryModeInitialSetting"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 89
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #f1:Ljava/io/File;
    :cond_de
    :try_start_de
    const-string v3, "FactoryModeInitialSetting"

    const-string v4, "delete file fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e5} :catch_d3

    goto :goto_66
.end method
