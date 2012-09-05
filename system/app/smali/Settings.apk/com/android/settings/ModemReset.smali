.class public Lcom/android/settings/ModemReset;
.super Landroid/app/Service;
.source "ModemReset.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/ModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ModemReset$1;-><init>(Lcom/android/settings/ModemReset;)V

    iput-object v0, p0, Lcom/android/settings/ModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModemReset;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/ModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .registers 3

    .prologue
    .line 104
    const-string v0, "ModemReset"

    const-string v1, "sendMasterClearIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "ModemReset"

    const-string v1, "sendBroadcast: android.intent.action.MASTER_CLEAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ModemReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private setEndModeData()[B
    .registers 8

    .prologue
    .line 51
    const-string v4, "ModemReset"

    const-string v5, "setEndModeData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_35

    .line 71
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2c

    .line 76
    :cond_27
    :goto_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_2b
    :goto_2b
    return-object v4

    .line 72
    :catch_2c
    move-exception v2

    .line 73
    .local v2, e:Ljava/io/IOException;
    const-string v4, "ModemReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 66
    .end local v2           #e:Ljava/io/IOException;
    :catch_35
    move-exception v2

    .line 67
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_36
    const-string v4, "ModemReset"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_4d

    .line 68
    const/4 v4, 0x0

    .line 71
    if-eqz v1, :cond_2b

    :try_start_40
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_2b

    .line 72
    :catch_44
    move-exception v2

    .line 73
    const-string v5, "ModemReset"

    const-string v6, "IOException : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    :catchall_4d
    move-exception v4

    .line 71
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 74
    :cond_53
    :goto_53
    throw v4

    .line 72
    :catch_54
    move-exception v2

    .line 73
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "ModemReset"

    const-string v6, "IOException : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ModemReset;->stopSelf()V

    .line 122
    :goto_c
    return-void

    .line 119
    :cond_d
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/ModemReset;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ModemReset"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 121
    .local v0, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_c
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 126
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 129
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 130
    const v3, 0x104015f

    invoke-virtual {p0, v3}, Lcom/android/settings/ModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 133
    const-string v3, "ModemReset"

    const-string v4, "Modem reset started..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 135
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/android/settings/ModemReset;->setEndModeData()[B

    move-result-object v0

    .line 136
    .local v0, data:[B
    iget-object v3, p0, Lcom/android/settings/ModemReset;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 138
    const/4 v3, 0x3

    return v3
.end method
