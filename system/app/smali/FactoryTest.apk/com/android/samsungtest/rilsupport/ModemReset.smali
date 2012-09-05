.class public Lcom/android/samsungtest/rilsupport/ModemReset;
.super Landroid/app/Service;
.source "ModemReset.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/ModemReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 79
    new-instance v0, Lcom/android/samsungtest/rilsupport/ModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/ModemReset$1;-><init>(Lcom/android/samsungtest/rilsupport/ModemReset;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/ModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/rilsupport/ModemReset;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/ModemReset;->runAndroidFactoryReset()V

    return-void
.end method

.method private runAndroidFactoryReset()V
    .registers 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/ModemReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 105
    const-string v2, "FACTORY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, callByFactory:Z
    if-nez v0, :cond_a

    .line 116
    :goto_9
    return-void

    .line 110
    :cond_a
    const-string v2, "ModemReset"

    const-string v3, "modem reset start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/ModemReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, data:[B
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/ModemReset;->setEndModeData()[B

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/ModemReset;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/ModemReset;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_9
.end method

.method setEndModeData()[B
    .registers 8

    .prologue
    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 56
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 59
    const-string v4, "SPH-D710"

    const-string v5, "SPH-D710"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 60
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_55
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_25} :catch_34

    .line 69
    :goto_25
    if-eqz v1, :cond_2a

    .line 70
    :try_start_27
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_4c

    .line 76
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_2e
    :goto_2e
    return-object v4

    .line 62
    :cond_2f
    const/4 v4, 0x2

    :try_start_30
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_55
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_25

    .line 64
    :catch_34
    move-exception v2

    .line 65
    .local v2, e:Ljava/io/IOException;
    :try_start_35
    const-string v4, "ModemReset"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_55

    .line 66
    const/4 v4, 0x0

    .line 69
    if-eqz v1, :cond_2e

    .line 70
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2e

    .line 71
    :catch_43
    move-exception v2

    .line 72
    const-string v5, "ModemReset"

    const-string v6, "IOException : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catch_4c
    move-exception v2

    .line 72
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "ModemReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    :catchall_55
    move-exception v4

    .line 69
    if-eqz v1, :cond_5b

    .line 70
    :try_start_58
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 73
    :cond_5b
    :goto_5b
    throw v4

    .line 71
    :catch_5c
    move-exception v2

    .line 72
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "ModemReset"

    const-string v6, "IOException : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method
