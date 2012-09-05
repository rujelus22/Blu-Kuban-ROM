.class public Lcom/android/MtpApplication/MtpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpReceiver.java"


# static fields
.field private static firstMediaMount:Z

.field static isSynchronizing:Z

.field static lockStatusSet:Z

.field static mContext:Landroid/content/Context;

.field static notifyAppHandler:Landroid/os/Handler;

.field static statusUpdate:Landroid/mtp/MTPJNIInterface;


# instance fields
.field private final MTPINITSTATUS_PATH:Ljava/lang/String;

.field private admin:Landroid/content/ComponentName;

.field private dpm:Landroid/app/admin/DevicePolicyManager;

.field iService:Landroid/content/Intent;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mNotiHandler:Landroid/os/Handler;

.field mStartMtpHandler:Landroid/os/Handler;

.field final toastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    sput-object v1, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 75
    sput-object v1, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    .line 77
    sput-boolean v0, Lcom/android/MtpApplication/MtpReceiver;->firstMediaMount:Z

    .line 99
    sput-boolean v0, Lcom/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    .line 108
    sput-boolean v0, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    const-string v0, "/sys/class/sec/switch/MtpInitStatusSel"

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->MTPINITSTATUS_PATH:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->toastHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.MtpApplication"

    const-string v2, "MtpReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    .line 82
    sget-object v0, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->toastHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    .line 86
    iput-object v3, p0, Lcom/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    .line 110
    iput-object v3, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 183
    new-instance v0, Lcom/android/MtpApplication/MtpReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/MtpReceiver$1;-><init>(Lcom/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/android/MtpApplication/MtpReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/MtpReceiver$2;-><init>(Lcom/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpReceiver;->isMusicPlayerRunning(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpReceiver;->usbRemoved(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/MtpApplication/MtpReceiver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    return-void
.end method

.method static getMtpContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isMusicPlayerRunning(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, am:Landroid/media/AudioManager;
    monitor-enter p1

    .line 428
    :try_start_2
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/AudioManager;

    move-object v1, v0

    .line 429
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_17

    .line 430
    if-nez v1, :cond_1a

    .line 431
    const-string v3, "MTPRx"

    const-string v4, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_16
    :goto_16
    return-void

    .line 429
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v3

    .line 434
    :cond_1a
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 435
    const-string v3, "MTPRx"

    const-string v4, "Music player is running, need to stop the same"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, i:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_16
.end method

.method private isTetheringEnabled(Landroid/content/Context;)Z
    .registers 16
    .parameter "context"

    .prologue
    .line 442
    const/4 v12, 0x0

    .line 443
    .local v12, usbTethered:Z
    const-string v13, "connectivity"

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 444
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, mUsbRegexs:[Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_15
    if-ge v4, v5, :cond_31

    aget-object v8, v0, v4

    .local v8, o:Ljava/lang/String;
    move-object v10, v8

    .line 447
    check-cast v10, Ljava/lang/String;

    .line 448
    .local v10, s:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1f
    if-ge v3, v6, :cond_2d

    aget-object v9, v1, v3

    .line 449
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2a

    const/4 v12, 0x1

    .line 448
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 446
    .end local v9           #regex:Ljava/lang/String;
    :cond_2d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_15

    .line 452
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #o:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_31
    return v12
.end method

.method private is_kieswifi_value()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 161
    new-array v3, v5, [B

    .line 164
    .local v3, status:[B
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    const-string v7, "/data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, input:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 166
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_2a

    .line 174
    .end local v2           #input:Ljava/io/FileInputStream;
    :goto_13
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 176
    .local v4, value:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 179
    :goto_20
    return v5

    .line 168
    .end local v4           #value:Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "MTPRx"

    const-string v8, "file kieswifi.dat is not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 171
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2a
    move-exception v1

    .line 172
    .local v1, f:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .end local v1           #f:Ljava/io/IOException;
    .restart local v4       #value:Ljava/lang/String;
    :cond_2f
    move v5, v6

    .line 179
    goto :goto_20
.end method

.method private launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 482
    return-void
.end method

.method private sendMsg(I)V
    .registers 6
    .parameter "what"

    .prologue
    const-wide/16 v2, 0x1388

    .line 375
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 377
    const/4 v1, 0x4

    if-ne v1, p1, :cond_13

    .line 378
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 386
    :goto_12
    return-void

    .line 379
    :cond_13
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1c

    .line 380
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 381
    :cond_1c
    const/4 v1, 0x6

    if-ne v1, p1, :cond_25

    .line 382
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 384
    :cond_25
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method private sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 395
    const-string v0, "mtp_usb_conditions_met"

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_30

    .line 396
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/MtpApplication/MtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    .line 397
    sget-object v0, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 398
    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpReceiver;->getMediaScannerStatus()Z

    move-result v0

    if-nez v0, :cond_31

    .line 399
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    .line 403
    :goto_25
    const-string v0, "mtp_running_status"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    const-string v0, "mtp_usb_conditions_met"

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    :cond_30
    return-void

    .line 401
    :cond_31
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    goto :goto_25
.end method

.method static setHandler(Landroid/os/Handler;)V
    .registers 1
    .parameter "handler"

    .prologue
    .line 285
    sput-object p0, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method private usbRemoved(Landroid/content/ContentResolver;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    const-string v0, "mtp_running_status"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 513
    const-string v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTP_RUNNING_STATUS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-ne v5, v0, :cond_6f

    .line 515
    sget-object v0, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MTP_FILE_SCAN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    const-string v0, "MTPRx"

    const-string v1, "Sending Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "mtp_usb_conditions_met"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    const-string v0, "mtp_running_status"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    const-string v0, "mtp_usb_connection_status"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    const-string v0, "mtp_drive_display"

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    const-string v0, "mtp_sync_alive"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    sget-object v0, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/MtpApplication/MtpService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 526
    :cond_6f
    return-void
.end method


# virtual methods
.method finishSync()V
    .registers 5

    .prologue
    .line 274
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    if-eqz v1, :cond_26

    .line 275
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtp_sync_alive"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .end local v0           #msg:Landroid/os/Message;
    :cond_26
    const-string v1, "MTPRx"

    const-string v2, "MS triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v1, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MTP_FILE_SCAN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public getMediaScannerStatus()Z
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method isCallScreen(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 133
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 134
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.InCallScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 144
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method isSyncFinished()V
    .registers 5

    .prologue
    const/16 v3, 0xc

    .line 266
    const-string v1, "MTPRx"

    const-string v2, "in isSyncFinished posting message with delay of 4sec"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 269
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v1, p0, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 529
    sput-object p1, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, action:Ljava/lang/String;
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In MtpReceiver"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 533
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string v8, "com.android.KIESWIFI_DISCONNECT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string v8, "com.intent.action.KIES_AUTHKEY_OK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20f

    .line 535
    :cond_42
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 536
    .local v6, pm:Landroid/os/PowerManager;
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 537
    const/4 v8, 0x1

    const-string v9, "mtp_running_status"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_82

    .line 538
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 539
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_82

    const/4 v8, 0x1

    sget-boolean v9, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-ne v8, v9, :cond_82

    .line 540
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 541
    const-string v8, "MTPRx"

    const-string v9, "MTP is already running. Setting the status to unlock"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    .line 543
    const-string v8, "mtp_drive_display"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    :cond_82
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpReceiver;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_90

    .line 549
    const-string v8, "MTPRx"

    const-string v9, "Tethering is enabled. dont launch MTP"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_90
    :goto_90
    return-void

    .line 553
    .restart local v6       #pm:Landroid/os/PowerManager;
    :cond_91
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12d

    .line 554
    const-string v8, "mtp_sync_alive"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 556
    .local v3, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    .line 557
    .local v7, screenLocked:Z
    const/4 v8, 0x1

    if-ne v8, v7, :cond_118

    .line 558
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Phone is locked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v9, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 560
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_118

    .line 561
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Secure lock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 563
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_118

    .line 564
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 565
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    .line 566
    const-string v8, "mtp_drive_display"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    const-string v8, "MTPRx"

    const-string v9, "Setting the status to phone Lock"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v3           #kgm:Landroid/app/KeyguardManager;
    .end local v7           #screenLocked:Z
    :cond_118
    invoke-direct {p0}, Lcom/android/MtpApplication/MtpReceiver;->is_kieswifi_value()Z

    move-result v8

    if-eqz v8, :cond_158

    .line 582
    const-string v8, "mtp_usb_conditions_met"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    const-string v8, "MTPRX"

    const-string v9, "kieswifi.dat having 1 so dont launch MTP App"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 571
    :cond_12d
    const-string v8, "com.intent.action.KIES_AUTHKEY_OK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_118

    .line 572
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 573
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_118

    .line 574
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 575
    const-string v8, "MTPRx"

    const-string v9, "MTP is already running. Setting the status to unlock_if"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    .line 577
    const-string v8, "mtp_drive_display"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_90

    .line 586
    :cond_158
    invoke-virtual {v6}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    .line 587
    .local v5, plugType:I
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Battery charging. plugType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v8, 0x2

    if-ne v5, v8, :cond_198

    .line 589
    const-string v8, "MTPRx"

    const-string v9, "USB charging"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1a1

    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    if-eqz v8, :cond_1a1

    .line 595
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_1a1

    .line 596
    const-string v8, "MTPRx"

    const-string v9, "desktop sync is not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 591
    :cond_198
    const-string v8, "MTPRx"

    const-string v9, "AC charging. Dont lauch MTP APP"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 600
    :cond_1a1
    const-string v8, "mtp_usb_conditions_met"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 602
    .local v2, default_usb_setting_mode:I
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usb mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v8, 0x1

    if-eq v8, v2, :cond_1d4

    if-eqz v2, :cond_1d4

    .line 604
    const-string v8, "MTPRx"

    const-string v9, "Not in media player mode"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 615
    :cond_1d4
    const-string v8, "device_provisioned"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1e6

    .line 616
    const-string v8, "MTPRx"

    const-string v9, "device is provisioned"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 620
    :cond_1e6
    const-string v8, "enterprise_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 621
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_20a

    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v8

    if-nez v8, :cond_20a

    .line 622
    const-string v8, "MTPRx"

    const-string v9, "MTP is blocked by admin"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 626
    :cond_20a
    invoke-direct {p0, p1, v1}, Lcom/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_90

    .line 646
    .end local v2           #default_usb_setting_mode:I
    .end local v5           #plugType:I
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_20f
    const-string v8, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_248

    .line 647
    const-string v8, "MTPRx"

    const-string v9, "MMC is disconnected"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v8, 0x1

    const-string v9, "mtp_running_status"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_90

    .line 650
    const-string v8, "MTPRx"

    const-string v9, "Top screen is MTP"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 652
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_90

    .line 653
    const-string v8, "MTPRx"

    const-string v9, "sending MMC disconnected noti to stack"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_90

    .line 658
    :cond_248
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_258

    const-string v8, "edm.intent.action.disable.mtp"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_288

    .line 659
    :cond_258
    const-string v8, "mtp_sync_alive"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    const-string v8, "MTPRx"

    const-string v9, "USB removed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0, v1}, Lcom/android/MtpApplication/MtpReceiver;->usbRemoved(Landroid/content/ContentResolver;)V

    .line 668
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 669
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_90

    const-string v8, "android.app.enterprise.action.MTP_BLOCKED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 670
    const-string v8, "end_key_press"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_90

    .line 674
    :cond_288
    const-string v8, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40c

    .line 676
    const-string v8, "MTPRx"

    const-string v9, "Media scanning is started, setting media scanner status"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v8, "mtp_running_status"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 678
    .local v4, mtpStatus:I
    if-eqz v4, :cond_2a4

    .line 679
    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    .line 682
    :cond_2a4
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_2be

    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    if-eqz v8, :cond_2be

    .line 683
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_2be

    .line 684
    const-string v8, "MTPRx"

    const-string v9, "desktop sync is not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 688
    :cond_2be
    invoke-direct {p0}, Lcom/android/MtpApplication/MtpReceiver;->is_kieswifi_value()Z

    move-result v8

    if-eqz v8, :cond_2d3

    .line 689
    const-string v8, "mtp_usb_conditions_met"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    const-string v8, "MTPRX"

    const-string v9, "kieswifi.dat having 1 so dont launch MTP App"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 694
    :cond_2d3
    const-string v8, "media_scanning_finished"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 719
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 720
    .restart local v6       #pm:Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->getPlugType()I

    move-result v5

    .line 721
    .restart local v5       #plugType:I
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Battery charging. plugType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v8, 0x2

    if-ne v5, v8, :cond_334

    .line 723
    const-string v8, "MTPRx"

    const-string v9, "USB charging"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 730
    .restart local v2       #default_usb_setting_mode:I
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usb mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v8, 0x1

    if-eq v8, v2, :cond_33d

    if-eqz v2, :cond_33d

    .line 733
    const-string v8, "MTPRx"

    const-string v9, "Not in media player mode"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 725
    .end local v2           #default_usb_setting_mode:I
    :cond_334
    const-string v8, "MTPRx"

    const-string v9, "AC charging. Dont lauch MTP APP"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 744
    .restart local v2       #default_usb_setting_mode:I
    :cond_33d
    const-string v8, "device_provisioned"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_34f

    .line 745
    const-string v8, "MTPRx"

    const-string v9, "device is provisioned"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 749
    :cond_34f
    const-string v8, "enterprise_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 750
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_373

    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v8

    if-nez v8, :cond_373

    .line 751
    const-string v8, "MTPRx"

    const-string v9, "MTP is blocked by admin"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 755
    :cond_373
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 756
    .restart local v3       #kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    .line 757
    .restart local v7       #screenLocked:Z
    const/4 v8, 0x1

    if-ne v8, v7, :cond_3ec

    .line 758
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Phone is locked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v9, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 760
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_3ec

    .line 761
    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Secure lock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v8

    sput-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 763
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v8, :cond_3ec

    .line 764
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 765
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    .line 766
    const-string v8, "mtp_drive_display"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    const-string v8, "MTPRx"

    const-string v9, "Setting the status to phone Lock"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_3ec
    const-string v8, "mtp_usb_connection_status"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    const/4 v8, 0x1

    const-string v9, "mtp_running_status"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_405

    .line 773
    const-string v8, "MTPRx"

    const-string v9, "mtp already running"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 778
    :cond_405
    sget-object v8, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v1}, Lcom/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_90

    .line 787
    .end local v2           #default_usb_setting_mode:I
    .end local v3           #kgm:Landroid/app/KeyguardManager;
    .end local v4           #mtpStatus:I
    .end local v5           #plugType:I
    .end local v6           #pm:Landroid/os/PowerManager;
    .end local v7           #screenLocked:Z
    :cond_40c
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_441

    .line 788
    const-string v8, "MTPRx"

    const-string v9, "BOOT COMPLETED"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v8, "mtp_usb_connection_status"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    const-string v8, "media_player_mode"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    const-string v8, "mtp_usb_conditions_met"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    const-string v8, "mtp_running_status"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    const-string v8, "media_mount_count"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    const-string v8, "mtp_sync_alive"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_90

    .line 795
    :cond_441
    const-string v8, "com.android.MTP.LAUNCH_MTP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 798
    const-string v8, "enterprise_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 799
    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_46d

    iget-object v8, p0, Lcom/android/MtpApplication/MtpReceiver;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v8

    if-nez v8, :cond_46d

    .line 800
    const-string v8, "MTPRx"

    const-string v9, "MTP is blocked by admin"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 804
    :cond_46d
    const-string v8, "MTPRx"

    const-string v9, "Launch MTP app"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-direct {p0, p1, v1}, Lcom/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_90
.end method
