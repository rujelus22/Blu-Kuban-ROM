.class public Lcom/sec/android/app/FileTransferServer/FTSService;
.super Landroid/app/Service;
.source "FTSService.java"


# instance fields
.field private Busy_Check_Time:I

.field private Waiting_Time:I

.field private bRegisterReceiver:Z

.field private bShowAcceptDialog:Z

.field private bShowDownloadList:Z

.field private bStopDeviceFlag:Z

.field private connectedIP:I

.field private final mBinder:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMode:I

.field private mContext:Landroid/content/Context;

.field mDelayedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

.field mFileShareDevMgrHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHaveWaitSession:I

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSavePath:Ljava/lang/String;

.field mSenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalByte:J

.field private mTotalFileCount:I

.field private mUpdateProgress:I

.field private mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

.field mWaitSenderQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDelayedList:Ljava/util/ArrayList;

    .line 66
    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    .line 67
    const-string v0, "mnt/sdcard/ShareViaWifi"

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSavePath:Ljava/lang/String;

    .line 101
    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bRegisterReceiver:Z

    .line 108
    iput v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    .line 113
    iput v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->connectedIP:I

    .line 115
    iput v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    .line 118
    iput v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    .line 119
    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    .line 128
    const/16 v0, 0x7530

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->Waiting_Time:I

    .line 129
    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->Busy_Check_Time:I

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bStopDeviceFlag:Z

    .line 397
    new-instance v0, Lcom/sec/android/app/FileTransferServer/FTSService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/FTSService$1;-><init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    .line 1169
    new-instance v0, Lcom/sec/android/app/FileTransferServer/FTSService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/FTSService$2;-><init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mFileShareDevMgrHandler:Landroid/os/Handler;

    .line 1366
    new-instance v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/FTSService$3;-><init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1707
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1729
    new-instance v0, Lcom/sec/android/app/FileTransferServer/FTSService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/FTSService$4;-><init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBinder:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/FileTransferServer/FTSService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileReady(Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileStart(Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileDone(Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileProgress(Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_item(Lcom/samsung/android/application/fileshare/api/TransferItem;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/FileTransferServer/FTSService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/FileTransferServer/FTSService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/FileTransferServer/FTSService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->checkForDeviceRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/FileTransferServer/FTSService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionRegister()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/FileTransferServer/FTSService;Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->findCurrentSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;)Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileTransferServer/FTSService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    return p1
.end method

.method static synthetic access$610(Lcom/sec/android/app/FileTransferServer/FTSService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileTransferServer/FTSService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->Busy_Check_Time:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionClosed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    return-void
.end method

.method private checkForDeviceRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 524
    iget v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    if-lez v1, :cond_6

    .line 529
    :cond_5
    :goto_5
    return v0

    .line 526
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 529
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private findCurrentSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .registers 9
    .parameter "id"

    .prologue
    .line 366
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 367
    .local v3, size:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 369
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 386
    .end local v3           #size:I
    :goto_12
    return-object v4

    .line 371
    .restart local v3       #size:I
    :cond_13
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v3, :cond_2d

    .line 373
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 374
    .local v2, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v4, v2

    .line 376
    goto :goto_12

    .line 371
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 379
    .end local v2           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_2d
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :findCurrentSession  : can\'t find session"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    .line 386
    .end local v1           #i:I
    .end local v3           #size:I
    :goto_34
    const/4 v4, 0x0

    goto :goto_12

    .line 381
    :catch_36
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on findCurrentSession "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private sendMessageToActivity(I)V
    .registers 3
    .parameter

    .prologue
    .line 1765
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendMessageToActivity(ILjava/lang/String;)V

    .line 1766
    return-void
.end method

.method private sendMessageToActivity(ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1771
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_33

    .line 1775
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/FileTransferServer/Data/IRemoteServiceCallback;->MessageCallback(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_19

    .line 1771
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1777
    :catch_19
    move-exception v0

    .line 1779
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :(for Debug) sendMessageToActivity :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1782
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1783
    return-void
.end method

.method private sessionClosed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    .registers 9
    .parameter "sender"
    .parameter "fromHandler"

    .prologue
    .line 754
    if-eqz p1, :cond_13

    .line 756
    if-eqz p2, :cond_22

    .line 758
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDelayedList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 760
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService :Session Closed: this is already closed...stack is delayed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_13
    :goto_13
    return-void

    .line 765
    :cond_14
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService :Session Closed: this is normal closed action: remove handler"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x516

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 770
    :cond_22
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 771
    .local v1, index:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_13

    .line 773
    sget-object v3, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 775
    .local v2, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-nez v2, :cond_57

    .line 777
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService : can\'t find info :sessionClosed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_3d

    goto :goto_13

    .line 798
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_3d
    move-exception v0

    .line 800
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :Exception on sessionClosed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 782
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v2       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_57
    const/16 v3, 0x44f

    :try_start_59
    iput v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    .line 783
    iget v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalCount()I

    move-result v4

    if-ne v3, v4, :cond_6e

    .line 785
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    .line 786
    const/16 v3, 0x5e0

    iput v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    .line 793
    :goto_6a
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    goto :goto_13

    .line 790
    :cond_6e
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    .line 791
    const/16 v3, 0x5df

    iput v3, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_75} :catch_3d

    goto :goto_6a
.end method

.method private sessionError_item(Lcom/samsung/android/application/fileshare/api/TransferItem;I)V
    .registers 10
    .parameter "item"
    .parameter "result"

    .prologue
    .line 868
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v3

    .line 869
    .local v3, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 870
    .local v1, index:I
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :sessionError_item :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v4, -0x1

    if-le v1, v4, :cond_35

    .line 873
    sget-object v4, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 874
    .local v2, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    .line 875
    iput p2, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    .line 876
    invoke-direct {p0, v3}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 883
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v3           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_35
    :goto_35
    return-void

    .line 879
    :catch_36
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on sessionError_item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    .registers 10
    .parameter "sender"
    .parameter "result"

    .prologue
    .line 808
    if-eqz p1, :cond_d1

    .line 810
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 812
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :sessionError_sender  sender is mWaitSender"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    if-eqz v4, :cond_3e

    .line 815
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.FileTransferServer.REMOVE_ACCEPT_POPUP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "SESSIONID"

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x519

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :HANDLE_CHECK_POPUP_PRIORITY Removed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    .line 821
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 862
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3e
    :goto_3e
    return-void

    .line 825
    :cond_3f
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 827
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :sessionError_sender this sender is mWaitSenderQueue - remove handler Msg"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x515

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 829
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 830
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService : mWaitSenderQueue size(remove)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_79

    goto :goto_3e

    .line 858
    :catch_79
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on sessionError_sender "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 834
    .end local v0           #e:Ljava/lang/Exception;
    :cond_93
    :try_start_93
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 835
    .local v1, index:I
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :sessionError_sender :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v4, -0x1

    if-le v1, v4, :cond_3e

    .line 838
    sget-object v4, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 839
    .local v3, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-nez v3, :cond_c7

    .line 841
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService : can\'t find info :sessionError_sender"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 846
    :cond_c7
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    .line 847
    iput p2, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    .line 848
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    goto/16 :goto_3e

    .line 855
    .end local v1           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_d1
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :sessionError_sender: sender is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_d8} :catch_79

    goto/16 :goto_3e
.end method

.method private sessionFileDone(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 11
    .parameter "item"

    .prologue
    .line 705
    if-eqz p1, :cond_22

    .line 707
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v4

    .line 708
    .local v4, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    if-eqz v4, :cond_22

    .line 710
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 711
    .local v1, index:I
    const/4 v5, -0x1

    if-le v1, v5, :cond_22

    .line 713
    sget-object v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 714
    .local v3, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-nez v3, :cond_23

    .line 716
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : can\'t find info :sessionFileDone"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v1           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_22
    :goto_22
    return-void

    .line 721
    .restart local v1       #index:I
    .restart local v3       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_23
    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 723
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : don\'t match sessionID : sessionFileDone"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_22

    .line 744
    .end local v1           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :catch_37
    move-exception v0

    .line 746
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :Exception on sessionFileDone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 727
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v3       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_51
    :try_start_51
    iget-wide v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedByte:J

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getDownloadedSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedByte:J

    .line 728
    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadedByte:J

    .line 729
    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    .line 730
    invoke-virtual {v3, p1}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->addFiles(Lcom/samsung/android/application/fileshare/api/TransferItem;)I

    .line 732
    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    iget v6, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    if-ne v5, v6, :cond_7d

    .line 734
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x516

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 735
    .local v2, msgNew:Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->Busy_Check_Time:I

    int-to-long v6, v6

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 737
    .end local v2           #msgNew:Landroid/os/Message;
    :cond_7d
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_81} :catch_37

    goto :goto_22
.end method

.method private sessionFileProgress(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 9
    .parameter "item"

    .prologue
    .line 663
    if-eqz p1, :cond_22

    .line 665
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v3

    .line 666
    .local v3, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    if-eqz v3, :cond_22

    .line 669
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 670
    .local v1, index:I
    const/4 v4, -0x1

    if-le v1, v4, :cond_22

    .line 672
    sget-object v4, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 674
    .local v2, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-nez v2, :cond_23

    .line 676
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService : can\'t find DownloadSession :sessionFileProgress"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v3           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_22
    :goto_22
    return-void

    .line 681
    .restart local v1       #index:I
    .restart local v2       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v3       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_23
    invoke-virtual {v3}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 683
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService : don\'t match sessionID : sessionFileProgress"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_22

    .line 695
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v3           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :catch_37
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on sessionFileStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 686
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v2       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v3       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getDownloadedSize()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadedByte:J

    .line 688
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_37

    goto :goto_22
.end method

.method private sessionFileReady(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 606
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService : remove HANDLE_DATA_TRANSLATE_FAIL."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method private sessionFileStart(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 10
    .parameter "item"

    .prologue
    .line 614
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    .line 615
    if-eqz p1, :cond_79

    .line 617
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v4

    .line 618
    .local v4, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 619
    .local v2, index:I
    const/4 v5, -0x1

    if-le v2, v5, :cond_23

    .line 621
    sget-object v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 623
    .local v3, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-nez v3, :cond_24

    .line 625
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : can\'t find info :sessionFileStart"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .end local v2           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_23
    :goto_23
    return-void

    .line 630
    .restart local v2       #index:I
    .restart local v3       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_24
    const/16 v5, 0x44e

    iput v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    .line 631
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 632
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    .line 635
    :cond_34
    iget v5, v3, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    if-nez v5, :cond_74

    .line 637
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, devName:Ljava/lang/String;
    const v5, 0x7f06003e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 639
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5a

    goto :goto_23

    .line 653
    .end local v0           #devName:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :catch_5a
    move-exception v1

    .line 655
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :Exception on sessionFileStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 643
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #index:I
    .restart local v3       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_74
    const/4 v5, 0x1

    :try_start_75
    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V

    goto :goto_23

    .line 650
    .end local v2           #index:I
    .end local v3           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :cond_79
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : can\'t sessionFileStart : item is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_80} :catch_5a

    goto :goto_23
.end method

.method private sessionFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 12
    .parameter "sender"

    .prologue
    const/4 v9, 0x1

    .line 889
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 890
    .local v3, index:I
    const/4 v5, -0x1

    if-le v3, v5, :cond_56

    .line 892
    sget-object v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 893
    .local v4, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    const/16 v5, 0x44f

    iput v5, v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    .line 895
    iget-object v5, v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    .line 897
    .local v1, fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->path:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_1c

    .line 945
    .end local v1           #fi:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :catch_3d
    move-exception v0

    .line 947
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :Exception on sessionFinished "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v0           #e:Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-void

    .line 900
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v4       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_57
    :try_start_57
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : running Media Scanner"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    iget v6, v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    .line 902
    iget-wide v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    iget-wide v7, v4, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    .line 903
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->downloadDone(ILandroid/content/Context;)Z

    .line 904
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService : old senderlist.size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v9, :cond_fb

    .line 910
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v6, "FTServer"

    const/16 v7, 0x206d

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 917
    :goto_a5
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService : new senderlist.size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_100

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    if-nez v5, :cond_100

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v9, :cond_100

    .line 921
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z

    if-eqz v5, :cond_e0

    .line 923
    const/16 v5, 0x57b

    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendMessageToActivity(I)V

    .line 925
    :cond_e0
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v6, "FTServer"

    const/16 v7, 0x206d

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 926
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->releaseWakeLock()V

    .line 927
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService : stop Device : sessionFinished -I expect server is restarted by NetworkState"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    .line 942
    :cond_f6
    :goto_f6
    invoke-direct {p0, v4}, Lcom/sec/android/app/FileTransferServer/FTSService;->setResultNoti(Lcom/sec/android/app/FileTransferServer/Data/SessionData;)V

    goto/16 :goto_56

    .line 914
    :cond_fb
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V

    goto :goto_a5

    .line 932
    :cond_100
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f6

    .line 934
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    .line 935
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z

    if-eqz v5, :cond_f6

    .line 937
    const/16 v5, 0x57a

    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendMessageToActivity(I)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_120} :catch_3d

    goto :goto_f6
.end method

.method private sessionRegister()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 575
    :try_start_1
    new-instance v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/16 v4, 0x44d

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;-><init>(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    .line 578
    .local v2, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    iget v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    .line 579
    iget-wide v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    .line 580
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 583
    .local v1, index:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_50

    .line 585
    sget-object v3, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 586
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z

    .line 587
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->setWaitingNotify()V

    .line 591
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_4d

    .line 593
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    .line 595
    :cond_4d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_51

    .line 602
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    :cond_50
    :goto_50
    return-void

    .line 598
    :catch_51
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :Exception on sessionRegister "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private sessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 8
    .parameter "sender"

    .prologue
    .line 540
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v3, :cond_17

    .line 542
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 543
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    const-string v4, "FTS Wifi Lock"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 545
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_32

    .line 547
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mPowerManager:Landroid/os/PowerManager;

    .line 548
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "FTS wake Lock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->acquireWakeLock()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_7b

    .line 557
    :goto_35
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService :sessionRequested  : sender.getSessionID"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHaveWaitSession:I

    .line 560
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 562
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :mWaitSenderQueue size(add)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_6d
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x515

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 566
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void

    .line 552
    .end local v1           #msg:Landroid/os/Message;
    :catch_7b
    move-exception v0

    .line 554
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :Exception on sessionRequested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private setBroadcastReceiver()V
    .registers 5

    .prologue
    .line 1306
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bRegisterReceiver:Z

    if-nez v0, :cond_ab

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_SERVICE_FINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_SHOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_OK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCELED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCEL_ALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_SHOW_DOWNLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferServer.FTS_DESTROY_DOWNLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileShareServer.SERVER_CHECK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileShareServer.REMOVE_DOWN_NOTI"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1335
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1336
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1337
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1338
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1339
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bRegisterReceiver:Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ac

    .line 1348
    :cond_ab
    :goto_ab
    return-void

    .line 1344
    :catch_ac
    move-exception v0

    .line 1346
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab
.end method

.method private setDownloadNoti(Z)V
    .registers 16
    .parameter

    .prologue
    .line 998
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    .line 999
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1002
    :cond_e
    if-nez p1, :cond_13

    .line 1004
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    .line 1007
    :cond_13
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17d

    .line 1009
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z

    if-eqz v0, :cond_21

    .line 1011
    const/16 v0, 0x57a

    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendMessageToActivity(I)V

    .line 1015
    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    .line 1016
    if-eqz p1, :cond_6a

    .line 1018
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    move-object v4, v0

    .line 1024
    :goto_2c
    const v0, 0x1080081

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 1025
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 1027
    const/4 v3, 0x0

    .line 1028
    const-wide/16 v1, 0x0

    .line 1029
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v5, v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    .line 1030
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v12, v1

    move v1, v3

    move-wide v2, v12

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 1032
    iget v7, v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    add-int/2addr v1, v7

    .line 1033
    iget v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    if-le v1, v7, :cond_63

    .line 1034
    iget v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    .line 1035
    :cond_63
    iget-wide v7, v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedByte:J

    iget-wide v9, v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadedByte:J

    add-long/2addr v7, v9

    add-long/2addr v2, v7

    goto :goto_4e

    .line 1022
    :cond_6a
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080081

    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object v4, v0

    goto :goto_2c

    .line 1038
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    .line 1040
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_126

    .line 1042
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f030005

    invoke-direct {v0, v1, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    .line 1060
    :goto_93
    const v0, 0x7f070011

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f060001

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f060028

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1061
    const v5, 0x7f070013

    const/16 v6, 0x64

    iget-wide v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    invoke-static {v2, v3, v7, v8}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->calPercent(JJ)I

    move-result v7

    iget-wide v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-nez v0, :cond_160

    const/4 v0, 0x1

    :goto_d8
    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1062
    const v0, 0x7f070010

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalByte:J

    invoke-static {v2, v3, v6, v7}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->calPercent(JJ)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1063
    const v0, 0x7f07000f

    const v2, 0x1080081

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1065
    iput-object v1, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1067
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1069
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1070
    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v1, "FTServer"

    const/16 v2, 0x206d

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1084
    :goto_125
    return-void

    .line 1046
    :cond_126
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030004

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1047
    const v6, 0x7f070012

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mTotalFileCount:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_15d} :catch_163

    move-object v1, v0

    goto/16 :goto_93

    .line 1061
    :cond_160
    const/4 v0, 0x0

    goto/16 :goto_d8

    .line 1074
    :catch_163
    move-exception v0

    .line 1076
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on setDownloadNoti "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_125

    .line 1081
    :cond_17d
    iget v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mUpdateProgress:I

    goto :goto_125
.end method

.method private setResultNoti(Lcom/sec/android/app/FileTransferServer/Data/SessionData;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1089
    if-nez p1, :cond_b

    .line 1091
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService : fatal error : setResultNoti info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_a
    :goto_a
    return-void

    .line 1094
    :cond_b
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1106
    :try_start_13
    iget-boolean v0, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    if-eqz v0, :cond_97

    .line 1108
    const v0, 0x7f060023

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1109
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080082

    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1110
    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    move-object v3, v0

    .line 1128
    :goto_3b
    sget v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    if-nez v0, :cond_e1

    sget v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    if-ne v0, v5, :cond_e1

    .line 1130
    iget-object v2, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    .line 1131
    const v0, 0x7f060022

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSavePath:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1133
    const/high16 v4, 0x1080

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1150
    :goto_62
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1151
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1152
    invoke-virtual {v3, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v1, "FTServer"

    const/16 v2, 0x206e

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_7b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7b} :catch_120

    goto :goto_a

    .line 1156
    :catch_7c
    move-exception v0

    .line 1158
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :NotFoundException on setResultNoti "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1114
    :cond_97
    :try_start_97
    const-string v0, ""

    .line 1115
    iget v0, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    iget v1, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_d9

    .line 1117
    const v0, 0x7f060026

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    iget v4, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    :goto_b6
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1124
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080082

    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1125
    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    move-object v3, v0

    goto/16 :goto_3b

    .line 1121
    :cond_d9
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 1135
    :cond_e1
    sget v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    if-ne v0, v5, :cond_13b

    sget v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    if-nez v0, :cond_13b

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1138
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1139
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1140
    const/high16 v4, 0x1080

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_11e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_97 .. :try_end_11e} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_11e} :catch_120

    goto/16 :goto_62

    .line 1160
    :catch_120
    move-exception v0

    .line 1162
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on setResultNoti "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1144
    :cond_13b
    :try_start_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1145
    const v0, 0x7f060040

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget v5, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1147
    const/high16 v4, 0x1002

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_18a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13b .. :try_end_18a} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_18a} :catch_120

    goto/16 :goto_62
.end method

.method private setWaitingNotify()V
    .registers 5

    .prologue
    .line 958
    :try_start_0
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 959
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 961
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService : can\'t find info :sessionClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_14
    :goto_14
    return-void

    .line 964
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 966
    iget v0, v0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    const/16 v1, 0x44d

    if-ne v0, v1, :cond_86

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_32

    .line 969
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    .line 971
    :cond_32
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 972
    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 973
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 975
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 977
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 978
    const v2, 0x7f060047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 980
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 981
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTServer"

    const/16 v3, 0x206d

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_14

    .line 989
    :catch_6c
    move-exception v0

    .line 991
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on setWaitingNotify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 985
    :cond_86
    const/4 v0, 0x0

    :try_start_87
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->setDownloadNoti(Z)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_6c

    goto :goto_14
.end method

.method private startHandler(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 205
    iput-object p0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 208
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :startHandler:MEDIA_MOUNTED is  faile...can\'t start server.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    .line 307
    :goto_18
    return-void

    .line 212
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->setBroadcastReceiver()V

    .line 213
    if-eqz p1, :cond_a5

    .line 215
    const-string v5, "com.sec.android.app.FileTransferServer.BIND_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 217
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    if-nez v5, :cond_4c

    .line 219
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :startHandler: receive BIND_SERVICE intent. but..servce is not normal state.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    goto :goto_18

    .line 224
    :cond_39
    const-string v5, "com.sec.android.app.FileTransferServer.FTS_SERVICE_START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 226
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :startHandler :Normal Start receive :FTS_SERVICE_START "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->checkForDeviceRunning()Z

    move-result v5

    if-nez v5, :cond_159

    .line 242
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    if-eqz v5, :cond_ad

    .line 244
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :start Handler...mDeviceManager is alive."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    .line 246
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    .line 294
    :goto_63
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :FileShareDeviceManager: is created"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6a} :catch_6b

    goto :goto_18

    .line 302
    :catch_6b
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :Exception on startHandler "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V

    goto :goto_18

    .line 230
    .end local v2           #e:Ljava/lang/Exception;
    :cond_88
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :startHandler :intent Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 235
    :cond_a5
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :intent is null....maybe started by task manager"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 250
    :cond_ad
    :try_start_ad
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :FileShareDeviceManager: is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/high16 v5, 0x7f04

    const v6, 0x7f040001

    invoke-static {p0, v5, v6}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->createInstance(Landroid/content/Context;II)Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    .line 253
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    if-nez v5, :cond_cc

    .line 254
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :FileShareDeviceManager: fail to create instance"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 258
    :cond_cc
    if-eqz p1, :cond_12f

    .line 260
    const-string v5, "MODE"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    .line 272
    :cond_d7
    :goto_d7
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSService :startHandler DirectMode checker"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.FTS_SERVICE_START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v3, it:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 278
    .local v1, deviceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_151

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_p2p_ssid"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_10d
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mFileShareDevMgrHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->setEventHandler(Landroid/os/Handler;)V

    .line 288
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->start()V

    .line 289
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    invoke-virtual {v5, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->setDeviceFriendlyName(Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iget v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->Waiting_Time:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->setReadyForTransferdTimeout(J)Z

    .line 291
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSavePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->setUploadPath(Ljava/lang/String;)Z

    goto/16 :goto_63

    .line 264
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v3           #it:Landroid/content/Intent;
    :cond_12f
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 265
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 266
    .local v4, netInfo:Landroid/net/NetworkInfo;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 268
    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    goto :goto_d7

    .line 284
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v3       #it:Landroid/content/Intent;
    :cond_151
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :device Name ERROR getContentResolver is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 299
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v3           #it:Landroid/content/Intent;
    :cond_159
    const-string v5, "[FT]-Server"

    const-string v6, "FTSService :Device is already running."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_160} :catch_6b

    goto/16 :goto_18
.end method

.method private stopDevice()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 312
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bStopDeviceFlag:Z

    if-nez v1, :cond_96

    .line 314
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bStopDeviceFlag:Z

    .line 317
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 321
    :cond_14
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :stopDevice :  check DirectMode (Must 0)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I

    if-eqz v1, :cond_3c

    .line 324
    const-string v1, "[FT]-Server"

    const-string v2, "FTSService :please check connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_60

    .line 334
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    if-eqz v1, :cond_4a

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->stop()V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->terminate()V

    .line 339
    :cond_4a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_5a

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTServer"

    const/16 v3, 0x206d

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 344
    :cond_5a
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->stopSelf()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5d} :catch_7a

    .line 351
    :goto_5d
    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bStopDeviceFlag:Z

    .line 357
    :goto_5f
    return-void

    .line 328
    :catch_60
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on stopDevice1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 346
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7a
    move-exception v0

    .line 348
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on stopDevice2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bStopDeviceFlag:Z

    goto :goto_5d

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :cond_96
    const-string v1, "[FT]-Server"

    const-string v2, "FTSService :already stop device..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private unregisterBroadcastReceiver()V
    .registers 5

    .prologue
    .line 1354
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bRegisterReceiver:Z

    if-eqz v0, :cond_c

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/FTSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->bRegisterReceiver:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 1364
    :cond_c
    :goto_c
    return-void

    .line 1360
    :catch_d
    move-exception v0

    .line 1362
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 5

    .prologue
    .line 1789
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_16

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1795
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1797
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1803
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1810
    :cond_2c
    :goto_2c
    return-void

    .line 1806
    :catch_2d
    move-exception v0

    .line 1808
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on acquireWakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter

    .prologue
    .line 1714
    :try_start_0
    const-class v0, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.FileTransferServer.Data.IRemoteService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1716
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :onBind FTS Service: success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mBinder:Lcom/sec/android/app/FileTransferServer/Data/IRemoteService$Stub;

    .line 1726
    :goto_17
    return-object v0

    .line 1720
    :cond_18
    const-string v0, "[FT]-Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTSService :onBind FTS Service: fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/FileTransferServer/Data/IRemoteService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    .line 1726
    :goto_36
    const/4 v0, 0x0

    goto :goto_17

    .line 1722
    :catch_38
    move-exception v0

    .line 1724
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on Bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public onCreate()V
    .registers 7

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    const-string v2, "[FT]-Server"

    const-string v3, "FTSService :onCreate FTSService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 144
    .local v0, builder:Landroid/os/StrictMode$ThreadPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 145
    .local v1, policy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    if-nez v2, :cond_27

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x51a

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    :cond_27
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    .line 173
    :try_start_0
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService :Send android.intent.action.FTS_SERVICE_FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->releaseWakeLock()V

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferServer/FTSService;->unregisterBroadcastReceiver()V

    .line 178
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_24

    .line 180
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v4, "FTServer"

    const/16 v5, 0x206d

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 183
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 193
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v3, "[FT]-Server"

    const-string v4, "FTSService :receive FTS_SERVICE_FINISH: finish service: onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_39

    .line 200
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 201
    return-void

    .line 196
    :catch_39
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSService :Exception on destroy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 154
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :onStart FTSService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->startHandler(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 161
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :onStartCommand FTSService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSService;->startHandler(Landroid/content/Intent;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public releaseWakeLock()V
    .registers 5

    .prologue
    .line 1814
    const-string v0, "[FT]-Server"

    const-string v1, "FTSService :release Wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1821
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1823
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    .line 1830
    :cond_29
    :goto_29
    return-void

    .line 1826
    :catch_2a
    move-exception v0

    .line 1828
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSService :Exception on releaseWakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
