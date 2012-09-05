.class public Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTestBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mMode:B


# instance fields
.field private final FACTORY_TEST:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-byte v0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mMode:B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->FACTORY_TEST:B

    .line 179
    return-void
.end method

.method private declared-synchronized HostRequestWIFIOFF(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 128
    monitor-enter p0

    const/4 v6, 0x1

    .line 130
    .local v6, Result:B
    :try_start_2
    const-string v1, "HostRequestWIFIOFF"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 135
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 136
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 138
    new-instance v0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;-><init>(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;JJ)V

    .line 139
    .local v0, counter:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
    invoke-virtual {v0}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->start()Landroid/os/CountDownTimer;

    .line 141
    const/4 v1, 0x2

    sput-byte v1, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mMode:B
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 142
    monitor-exit p0

    return-void

    .line 128
    .end local v0           #counter:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized HostRequestWIFION(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 94
    monitor-enter p0

    const/4 v6, 0x1

    .line 96
    .local v6, Result:B
    :try_start_2
    const-string v1, "HostRequestWIFION"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 100
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 102
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 104
    new-instance v0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;-><init>(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;JJ)V

    .line 105
    .local v0, counter:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
    invoke-virtual {v0}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->start()Landroid/os/CountDownTimer;

    .line 107
    const/4 v1, 0x1

    sput-byte v1, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mMode:B
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 109
    monitor-exit p0

    return-void

    .line 94
    .end local v0           #counter:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized HostRequestWIFISTATUS(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    .local v0, Result:B
    :try_start_2
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 120
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    .line 124
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->sendAck(B)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_18

    .line 125
    monitor-exit p0

    return-void

    .line 121
    :cond_16
    const/4 v0, 0x0

    goto :goto_11

    .line 112
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()B
    .registers 1

    .prologue
    .line 22
    sget-byte v0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mMode:B

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 175
    const-string v0, "WifiTestBroadcastReceiver.java"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 47
    const-string v3, "Received WIFI Message"

    const-string v4, "~"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.FactoryTest.WIFION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 49
    const-string v3, "WIFI ON"

    const-string v4, "show ~"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v3, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->HostRequestWIFION(Landroid/content/Context;)V

    .line 91
    :cond_25
    :goto_25
    return-void

    .line 52
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.FactoryTest.WIFISTATUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 54
    sget-object v3, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->HostRequestWIFISTATUS(Landroid/content/Context;)V

    goto :goto_25

    .line 56
    :cond_38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.FactoryTest.WIFIOFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 58
    sget-object v3, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->HostRequestWIFIOFF(Landroid/content/Context;)V

    goto :goto_25

    .line 61
    :cond_4a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 63
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 65
    .local v0, data:[B
    const-string v3, "S_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    const-string v3, "WifiTestBroadcastReceiver"

    const-string v4, "BROADCAST_SEC_WLAN_TEST_RESP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-nez v2, :cond_75

    .line 72
    :try_start_6a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 74
    const-string v3, "WLAN"

    const-string v4, "Got Phone Instance!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_7f

    .line 81
    :cond_75
    :goto_75
    if-nez v2, :cond_84

    .line 82
    const-string v3, "WLAN"

    const-string v4, "Not able to get the Phone Instance!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 76
    :catch_7f
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :cond_84
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_25
.end method

.method public sendAck(B)V
    .registers 9
    .parameter "Result"

    .prologue
    .line 146
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 147
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi sendack PhoneFactory.getDefaultPhone()  is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v5, 0x12

    :try_start_26
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 157
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_35} :catch_40

    .line 163
    :goto_35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 168
    .local v1, cmd:[B
    if-eqz v4, :cond_45

    .line 169
    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 172
    :goto_3f
    return-void

    .line 158
    .end local v1           #cmd:[B
    :catch_40
    move-exception v3

    .line 160
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 171
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #cmd:[B
    :cond_45
    const-string v5, "phone is null ~~~~~~~~~~~~"

    invoke-direct {p0, v5}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_3f
.end method
