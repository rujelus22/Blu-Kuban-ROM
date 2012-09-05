.class public Lcom/sec/android/app/FileTransferClient/FTCService;
.super Landroid/app/Service;
.source "FTCService.java"


# instance fields
.field private bHaveUnregisterSession:Z

.field private bRegisterCancelSession:Z

.field private bShowUploadList:Z

.field private bWaitSessionRequest:Z

.field fileArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private haveUploadSession:Z

.field private mAlreadyCanceledSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMode:I

.field private mContext:Landroid/content/Context;

.field mControlResponseHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotiResultID:I

.field private mNotiUploadID:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRegisterReciver:Z

.field private mResultFailFileCnt:I

.field private mResultSuccessFileCnt:I

.field private mUpdateCounter:I

.field private mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    .line 65
    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 67
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mRegisterReciver:Z

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I

    .line 71
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I

    .line 78
    const v0, 0x1002901

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    .line 79
    const v0, 0x1002902

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiResultID:I

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    .line 124
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    .line 128
    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 131
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I

    .line 132
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I

    .line 259
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCService$1;-><init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    .line 1506
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCService$2;-><init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1735
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1751
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCService$4;-><init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBinder:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;

    .line 1812
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCService$5;-><init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mControlResponseHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferClient/FTCService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->setBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/FileTransferClient/FTCService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/FileTransferClient/FTCService;Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SessionInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->findSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/FileTransferClient/FTCService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->cancelWaitingSessionByUser()V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->readySession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->updateSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->startSesssion(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/FileTransferClient/FTCService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferClient/FTCService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileTransferClient/FTCService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/FileTransferClient/FTCService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/FileTransferClient/FTCService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I

    return p1
.end method

.method private cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    .registers 16
    .parameter "session"
    .parameter "errorType"

    .prologue
    const/4 v12, 0x0

    .line 993
    if-nez p1, :cond_1b

    .line 995
    const-string v10, "[FT]-Client"

    const-string v11, "FTCService : fatal error : cancelSessionByServer session is null:"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_51

    .line 998
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 1009
    .restart local p1
    :cond_1b
    :try_start_1b
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x7d5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1010
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    .line 1011
    .local v9, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    if-eqz v9, :cond_50

    .line 1014
    const-string v10, "[FT]-Client"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FTCService : cancelSessionByServer::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4d} :catch_c6

    packed-switch v10, :pswitch_data_1c2

    .line 1118
    .end local v9           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_50
    :goto_50
    return-void

    .line 1002
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 1003
    const v10, 0x7f060030

    invoke-virtual {p0, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 1018
    .restart local v9       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :pswitch_63
    const/16 v10, 0x839

    :try_start_65
    iput v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 1019
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 1020
    iput p2, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 1021
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    .line 1022
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 1023
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1027
    .local v1, index:I
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1030
    new-instance v5, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v5, p0, v9}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1031
    .local v5, rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1032
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-direct {p0, v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1034
    iget-boolean v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v10, :cond_e1

    .line 1035
    const/16 v10, 0x968

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 1041
    :goto_b1
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_50

    .line 1043
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v11, "FTClient"

    iget v12, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v10, v11, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1044
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_c5} :catch_c6

    goto :goto_50

    .line 1114
    .end local v1           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .end local v9           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_c6
    move-exception v0

    .line 1116
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "[FT]-Client"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FTCService :Exception on cancelSessionByServer :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 1038
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .restart local v9       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_e1
    :try_start_e1
    const-string v10, "[FT]-Client"

    const-string v11, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 1049
    .end local v1           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    :pswitch_e9
    const/16 v10, 0x839

    iput v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 1050
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 1051
    iput p2, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 1052
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 1054
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1055
    .local v2, index2:I
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1056
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1058
    new-instance v6, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v6, p0, v9}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1059
    .local v6, rd2:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1060
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-direct {p0, v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1062
    iget-boolean v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v10, :cond_140

    .line 1063
    const/16 v10, 0x968

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 1069
    :goto_12a
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_50

    .line 1071
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v11, "FTClient"

    iget v12, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v10, v11, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_50

    .line 1066
    :cond_140
    const-string v10, "[FT]-Client"

    const-string v11, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 1076
    .end local v2           #index2:I
    .end local v6           #rd2:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    :pswitch_148
    const/16 v10, 0x839

    iput v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 1077
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 1078
    iput p2, v9, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 1080
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 1082
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1083
    .local v3, index3:I
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1084
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1086
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1087
    .local v8, sendingTarget:I
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1088
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1090
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_188

    .line 1091
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    .line 1093
    :cond_188
    new-instance v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v7, p0, v9}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1094
    .local v7, rd3:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1095
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-direct {p0, v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 1097
    iget-boolean v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v10, :cond_1ba

    .line 1098
    const/16 v10, 0x967

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 1104
    :goto_1a4
    sget-object v10, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_50

    .line 1106
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v11, "FTClient"

    iget v12, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v10, v11, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_50

    .line 1101
    :cond_1ba
    const-string v10, "[FT]-Client"

    const-string v11, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_1c1} :catch_c6

    goto :goto_1a4

    .line 1015
    :pswitch_data_1c2
    .packed-switch 0x835
        :pswitch_63
        :pswitch_e9
        :pswitch_148
    .end packed-switch
.end method

.method private cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 14
    .parameter "session"

    .prologue
    const/4 v11, 0x0

    .line 865
    if-nez p1, :cond_1b

    .line 867
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService : fatal error : cancelSessionByUser session is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4f

    .line 870
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 881
    .restart local p1
    :cond_1b
    :try_start_1b
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x7d5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    .line 884
    .local v8, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :session State is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4b} :catch_bc

    packed-switch v9, :pswitch_data_1bc

    .line 989
    .end local v8           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_4e
    :goto_4e
    return-void

    .line 874
    :cond_4f
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 875
    const v9, 0x7f060030

    invoke-virtual {p0, v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_4e

    .line 888
    .restart local v8       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :pswitch_61
    const/16 v9, 0x839

    :try_start_63
    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 889
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 890
    const/16 v9, 0x9c6

    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 891
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    .line 892
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 894
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 895
    .local v1, index:I
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 896
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 898
    new-instance v4, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v4, p0, v8}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 899
    .local v4, rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 900
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-direct {p0, v8}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 903
    iget-boolean v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v9, :cond_d7

    .line 904
    const/16 v9, 0x968

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 910
    :goto_a7
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4e

    .line 912
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v10, "FTClient"

    iget v11, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 913
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_bb} :catch_bc

    goto :goto_4e

    .line 985
    .end local v1           #index:I
    .end local v4           #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .end local v8           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_bc
    move-exception v0

    .line 987
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :Exception on cancelSessionByUser :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 907
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v4       #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .restart local v8       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_d7
    :try_start_d7
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 918
    .end local v1           #index:I
    .end local v4           #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    :pswitch_df
    const/16 v9, 0x839

    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 919
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 920
    const/16 v9, 0x9c6

    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 921
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 923
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 924
    .local v2, index2:I
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 925
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 927
    new-instance v5, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v5, p0, v8}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 928
    .local v5, rd2:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 929
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-direct {p0, v8}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 931
    iget-boolean v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v9, :cond_138

    .line 932
    const/16 v9, 0x968

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 938
    :goto_122
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4e

    .line 940
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v10, "FTClient"

    iget v11, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 941
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_4e

    .line 935
    :cond_138
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 946
    .end local v2           #index2:I
    .end local v5           #rd2:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    :pswitch_140
    const/16 v9, 0x839

    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 947
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 948
    const/16 v9, 0x9c6

    iput v9, v8, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 949
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 951
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 952
    .local v3, index3:I
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 953
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 955
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 956
    .local v7, sendingTarget:I
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 957
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 959
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_182

    .line 960
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    .line 962
    :cond_182
    new-instance v6, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v6, p0, v8}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 963
    .local v6, rd3:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 964
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-direct {p0, v8}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 968
    iget-boolean v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v9, :cond_1b4

    .line 969
    const/16 v9, 0x967

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 975
    :goto_19e
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4e

    .line 977
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v10, "FTClient"

    iget v11, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 978
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_4e

    .line 972
    :cond_1b4
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :bShowUploadList is false => not update the upload list"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_1bb} :catch_bc

    goto :goto_19e

    .line 885
    :pswitch_data_1bc
    .packed-switch 0x835
        :pswitch_61
        :pswitch_df
        :pswitch_140
    .end packed-switch
.end method

.method private cancelWaitingSessionByUser()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 853
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    if-eqz v0, :cond_18

    .line 855
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z

    .line 861
    :cond_17
    :goto_17
    return-void

    .line 857
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

    if-eqz v0, :cond_17

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    goto :goto_17
.end method

.method private findSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SessionInfo;
    .registers 7
    .parameter

    .prologue
    .line 1670
    const/4 v0, 0x0

    .line 1671
    :try_start_1
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 1673
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1675
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " equals?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_63

    .line 1685
    :goto_5e
    return-object v0

    .line 1678
    :cond_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1681
    :catch_63
    move-exception v0

    .line 1683
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on BroadcastReceiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_7c
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method private finishSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 12
    .parameter "session"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 774
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :finishSession : enter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    if-nez p1, :cond_22

    .line 778
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService : fatal error : finishSession session is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_101

    .line 781
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 790
    .restart local p1
    :cond_22
    const/4 v5, 0x0

    .line 793
    .local v5, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :try_start_23
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_130

    .line 796
    :try_start_2a
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    move-object v5, v0

    .line 797
    iget-object v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 798
    iget-object v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 799
    iget-object v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 801
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :notSendFiles remains...:finishSession."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_4f
    const/16 v6, 0x838

    iput v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 804
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 805
    const/16 v6, 0x9c9

    iput v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_5a} :catch_115
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_130

    .line 812
    :goto_5a
    :try_start_5a
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 814
    .local v2, index:I
    if-eqz v2, :cond_80

    .line 815
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :on updateSession : finish session index number is wrong"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_80
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 818
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 820
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 821
    .local v4, sendingTarget:I
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 822
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 823
    new-instance v3, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/FileTransferClient/Data/ResultData;-><init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 824
    .local v3, rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 825
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-direct {p0, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 829
    iget-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v6, :cond_bb

    .line 830
    const/16 v6, 0x967

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 832
    :cond_bb
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :finishSession : mSessionList {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "} "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_14a

    iget-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    if-nez v6, :cond_14a

    .line 835
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    .line 836
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v7, "FTClient"

    iget v8, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_100} :catch_130

    .line 848
    .end local v2           #index:I
    .end local v3           #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .end local v4           #sendingTarget:I
    .end local v5           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :goto_100
    return-void

    .line 785
    :cond_101
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_100

    .line 807
    .restart local v5       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_115
    move-exception v1

    .line 809
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_116
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :finishSession error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12e} :catch_130

    goto/16 :goto_5a

    .line 844
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_130
    move-exception v1

    .line 846
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :Exception on finishSession :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 841
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #index:I
    .restart local v3       #rd:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    .restart local v4       #sendingTarget:I
    :cond_14a
    :try_start_14a
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :finishSession remains SessionSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_168} :catch_130

    goto :goto_100
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .registers 14
    .parameter "intent"
    .parameter "startId"

    .prologue
    const v10, 0x7f060046

    const/4 v9, 0x1

    .line 163
    iput-object p0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    .line 168
    :try_start_6
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_1d

    .line 170
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 171
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v6, 0x1

    const-string v7, "FTC Wifi Lock"

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 174
    .end local v5           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1d
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v6, :cond_38

    .line 176
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mPowerManager:Landroid/os/PowerManager;

    .line 177
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "FTC wake Lock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->acquireWakeLock()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_4f

    .line 186
    :goto_3b
    const-string v6, "com.sec.android.app.FileShareTransfer.SCREEN_RESUME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 188
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :device screen is resumed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_4e
    return-void

    .line 181
    :catch_4f
    move-exception v1

    .line 183
    .local v1, e1:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :Exception on HandleStart . wifilock :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 190
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_69
    const-string v6, "com.sec.android.app.FileTransferClient.FTC_SERVICE_START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 192
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :start FTC Service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_7c
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.FTC_SERVICE_START"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, intentStart:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    const-string v6, "MODE"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I

    .line 199
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :start FTC Service -- mDirectConnection :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    .line 208
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :start FTC Service : MEDIA_MOUNTED is fail: critical."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 210
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v6, :cond_db

    .line 212
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 214
    :cond_db
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/NotificationManager;->cancelAll()V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 242
    :goto_e3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 243
    .local v2, extras:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d1

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 244
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_f4} :catch_f6

    goto/16 :goto_4e

    .line 246
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #intentStart:Landroid/content/Intent;
    .end local v4           #msg:Landroid/os/Message;
    :catch_f6
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :Exception on HandleStart . start :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_4e

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #intentStart:Landroid/content/Intent;
    :cond_121
    :try_start_121
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v6

    if-eqz v6, :cond_15b

    .line 225
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mControlResponseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->removeEventHandler(Landroid/os/Handler;)V

    .line 226
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mControlResponseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->setEventHandler(Landroid/os/Handler;)V

    .line 227
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :mControllerAPI is started"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catch Ljava/lang/NullPointerException; {:try_start_121 .. :try_end_140} :catch_141
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_140} :catch_f6

    goto :goto_e3

    .line 236
    :catch_141
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_142
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :handleStart error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_15a} :catch_f6

    goto :goto_e3

    .line 231
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_15b
    :try_start_15b
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :cp is not null. But can\'t get mControllerAPI"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_176
    .catch Ljava/lang/NullPointerException; {:try_start_15b .. :try_end_176} :catch_141
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_176} :catch_f6

    goto/16 :goto_e3

    .line 255
    .end local v3           #intentStart:Landroid/content/Intent;
    :cond_178
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :WrongIntent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e
.end method

.method private readySession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 10
    .parameter "session"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 552
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x7d4

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 553
    if-nez p1, :cond_ed

    .line 555
    const-string v4, "[FT]-Client"

    const-string v5, "FTCService : fatal error : readySession session is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_d9

    .line 558
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 575
    .restart local p1
    :cond_22
    :try_start_22
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    .line 576
    .local v3, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 577
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    .line 578
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 580
    iget v4, v3, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    const/16 v5, 0x835

    if-ne v4, v5, :cond_d8

    .line 583
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 585
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 587
    .local v2, sendingTarget:I
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 588
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCService : add to mSendingList 1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v4, "[FT]-Client"

    const-string v5, "FTCService : mControllerAPI.requestTransferStar"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v2           #sendingTarget:I
    :cond_86
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCService : add to mSendingList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_f7

    .line 594
    const/16 v4, 0x836

    iput v4, v3, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 595
    const-string v4, "[FT]-Client"

    const-string v5, "FTCService :(( sessionState = STATE_WAITING_OTHER_SESSION_FINISH ))"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 599
    .local v1, index:I
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v4, p1, v3}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->updateSessionData(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 601
    iget-boolean v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v4, :cond_d3

    .line 602
    const/16 v4, 0x962

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 604
    :cond_d3
    iget v4, v3, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/FileTransferClient/FTCService;->setUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_d8} :catch_ff

    .line 616
    .end local v1           #index:I
    .end local v3           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_d8
    :goto_d8
    return-void

    .line 562
    :cond_d9
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v5, 0x7f060046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_d8

    .line 567
    :cond_ed
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkCanceledSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_d8

    .line 608
    .restart local v3       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_f7
    :try_start_f7
    const-string v4, "[FT]-Client"

    const-string v5, "FTCService :this is first session..wait startSession"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fe} :catch_ff

    goto :goto_d8

    .line 612
    .end local v3           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_ff
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCService :Exception on readySession :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method

.method private refreshUploadNotifyView()Landroid/widget/RemoteViews;
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1284
    .line 1288
    const-string v0, ""

    .line 1292
    :try_start_4
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 1293
    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1295
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v2

    move v3, v2

    move v7, v2

    move v5, v2

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalCount()I

    move-result v4

    add-int/2addr v5, v4

    .line 1298
    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    long-to-int v4, v10

    add-int/2addr v4, v3

    .line 1299
    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getSentByteSize()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    long-to-int v3, v10

    add-int/2addr v3, v6

    .line 1300
    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItemIndex()I

    move-result v0

    add-int/2addr v0, v7

    move v6, v3

    move v7, v0

    move v3, v4

    goto :goto_1f

    .line 1309
    :cond_4b
    if-le v5, v1, :cond_fa

    .line 1311
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f030003

    invoke-direct {v0, v4, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1312
    sget-object v4, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    .line 1313
    if-le v4, v5, :cond_63

    move v4, v5

    .line 1315
    :cond_63
    const v7, 0x7f07000c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1322
    :goto_8c
    if-nez v3, :cond_8f

    move v3, v1

    .line 1324
    :cond_8f
    int-to-double v4, v6

    int-to-double v9, v3

    div-double/2addr v4, v9

    const-wide v9, 0x3f747ae147ae147bL

    add-double/2addr v4, v9

    .line 1325
    const v7, 0x7f07000b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f060001

    invoke-virtual {p0, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060035

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1326
    const v7, 0x7f07000d

    const/4 v8, -0x1

    if-ne v3, v8, :cond_122

    :goto_cf
    invoke-virtual {v0, v7, v3, v6, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1327
    const v1, 0x7f07000a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v6, 0x4059

    mul-double v3, v4, v6

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1328
    const v1, 0x7f070009

    const v2, 0x1080088

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1334
    :goto_f9
    return-object v0

    .line 1319
    :cond_fa
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030004

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_106} :catch_107

    goto :goto_8c

    .line 1331
    :catch_107
    move-exception v0

    .line 1333
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on refreshUploadNotifyView :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v0, 0x0

    goto :goto_f9

    :cond_122
    move v1, v2

    .line 1326
    goto :goto_cf
.end method

.method private registerSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 10
    .parameter "session"

    .prologue
    .line 501
    if-nez p1, :cond_17

    .line 503
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v6, 0x7f060046

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 548
    :goto_16
    return-void

    .line 510
    :cond_17
    const/4 v5, 0x0

    :try_start_18
    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z

    .line 511
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService :REMOVE EVENT_CONNECTION_FAIL msg"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    new-instance v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    invoke-direct {v4}, Lcom/sec/android/app/FileTransferClient/Data/SessionState;-><init>()V

    .line 518
    .local v4, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    const/16 v5, 0x835

    iput v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 519
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService :(( sessionState = STATE_WAITING_RESPONSE_FROM_SERVER ))"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getSessionID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionID:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->targetDevice:Ljava/lang/String;

    .line 522
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 525
    .local v1, index:I
    new-instance v3, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-direct {v3, p1, v4}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;-><init>(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V

    .line 526
    .local v3, newData:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 527
    iget-object v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 528
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z

    if-eqz v5, :cond_a0

    .line 530
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z

    .line 531
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService :Already canceded this session"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_84} :catch_85

    goto :goto_16

    .line 543
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newData:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .end local v4           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_85
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCService :Exception on registerSession :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 536
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #newData:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .restart local v4       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_a0
    :try_start_a0
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWaitReadySession:Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 537
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v5, :cond_ac

    .line 538
    const/16 v5, 0x961

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 539
    :cond_ac
    iget v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->setUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b1} :catch_85

    goto/16 :goto_16
.end method

.method private declared-synchronized sendMessageToActivity(IILjava/util/ArrayList;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1790
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1791
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :SendBroadCast  n:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_4c

    .line 1792
    const/4 v0, 0x0

    move v1, v0

    :goto_21
    if-ge v1, v2, :cond_67

    .line 1796
    :try_start_23
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/FileTransferClient/Data/IRemoteServiceCallback;->MessageCallback(IILjava/util/List;)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_6d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_4c

    .line 1792
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 1798
    :catch_32
    move-exception v0

    .line 1800
    :try_start_33
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :(for Debug)sendMessageToActivity: can\'t send message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_4c

    goto :goto_2e

    .line 1805
    :catch_4c
    move-exception v0

    .line 1807
    :try_start_4d
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :(for Debug)Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_6d

    .line 1809
    :goto_65
    monitor-exit p0

    return-void

    .line 1803
    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_4c

    goto :goto_65

    .line 1790
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessageToActivity(ILjava/util/ArrayList;)V
    .registers 4
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1783
    .local p2, sessionObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(IILjava/util/ArrayList;)V

    .line 1784
    return-void
.end method

.method private setBroadcastReceiver()V
    .registers 4

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mRegisterReciver:Z

    if-nez v0, :cond_87

    .line 1465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mRegisterReciver:Z

    .line 1467
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1468
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1472
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_SHOW_UPLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_DESTROY_UPLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED_ALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_ADD_SESSION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_WAIT_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.FileTransferClient.FTC_WAIT_CREATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1488
    :cond_87
    return-void
.end method

.method private setResultNotify(Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V
    .registers 9
    .parameter

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    .line 1235
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1239
    :cond_e
    if-nez p1, :cond_18

    .line 1241
    :try_start_10
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : fatal error :setResultNotify SessionState is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :goto_17
    return-void

    .line 1245
    :cond_18
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :setResultNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I

    iget-object v1, p1, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I

    .line 1247
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I

    iget-object v1, p1, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I

    .line 1253
    iget v0, p1, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    packed-switch v0, :pswitch_data_fc

    .line 1260
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080089

    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1261
    const v1, 0x1080089

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1264
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    const v2, 0x7f060040

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1267
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1268
    const/high16 v4, 0x5000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1269
    const-string v4, "RLIST"

    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1270
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1271
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1272
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1273
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTClient"

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiResultID:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_c5} :catch_c7

    goto/16 :goto_17

    .line 1276
    :catch_c7
    move-exception v0

    .line 1278
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on setResultNotify :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1256
    :pswitch_e2
    :try_start_e2
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080089

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1257
    const v1, 0x1080089

    iput v1, v0, Landroid/app/Notification;->icon:I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_fa} :catch_c7

    goto/16 :goto_52

    .line 1253
    :pswitch_data_fc
    .packed-switch 0x9c9
        :pswitch_e2
    .end packed-switch
.end method

.method private setUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_f

    .line 1127
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1129
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    if-nez v0, :cond_84

    .line 1133
    :try_start_13
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1134
    const v0, 0x1080088

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1135
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1137
    const v0, 0x7f060036

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    const/4 v0, 0x0

    .line 1139
    const/16 v3, 0x835

    if-eq p2, v3, :cond_41

    const/16 v3, 0x836

    if-ne p2, v3, :cond_48

    .line 1141
    :cond_41
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1144
    :cond_48
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1145
    const/high16 v4, 0x1080

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1146
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1147
    invoke-virtual {v1, p0, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTClient"

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_69} :catch_6a

    .line 1190
    :goto_69
    return-void

    .line 1150
    :catch_6a
    move-exception v0

    .line 1152
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on setUploadNotify have upload session :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 1161
    :cond_84
    :try_start_84
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_f3

    .line 1163
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080088

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1170
    :goto_9f
    const v1, 0x1080088

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1171
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1173
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->refreshUploadNotifyView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1174
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1176
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1177
    const-string v2, "LIST"

    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1178
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1180
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1181
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTClient"

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_d7} :catch_d8

    goto :goto_69

    .line 1185
    :catch_d8
    move-exception v0

    .line 1187
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on setUploadNotify :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 1167
    :cond_f3
    :try_start_f3
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_d8

    goto :goto_9f
.end method

.method private startSesssion(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 13
    .parameter "session"

    .prologue
    const-wide/32 v9, 0x1dcd6500

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 620
    if-nez p1, :cond_11b

    .line 622
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService : fatal error : startSesssion session is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_107

    .line 625
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 642
    .restart local p1
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    .line 644
    .local v4, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    const v5, 0x7f06003f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 645
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 648
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 650
    .local v2, sendingTarget:I
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 651
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCService : add to mSendingList 2 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v2           #sendingTarget:I
    :cond_8e
    iget v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    const/16 v6, 0x835

    if-eq v5, v6, :cond_9a

    iget v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    const/16 v6, 0x836

    if-ne v5, v6, :cond_159

    .line 655
    :cond_9a
    const/16 v5, 0x837

    iput v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 656
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService :(( sessionState = STATE_SENDING_SESSION ))"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->haveUploadSession:Z

    .line 659
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 661
    .local v1, index:I
    sget-object v5, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v5, p1, v4}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->updateSessionData(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 665
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v5, :cond_c3

    .line 666
    const/16 v5, 0x964

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 668
    :cond_c3
    iget v5, v4, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->setUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_c8} :catch_13f

    .line 669
    const/4 v3, 0x2

    .line 672
    .local v3, timeDelay:I
    :try_start_c9
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_df

    .line 673
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v5

    const-wide/32 v7, 0x1dcd6500

    div-long/2addr v5, v7
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d9} :catch_125

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v5, v5

    mul-int/lit8 v3, v5, 0x2

    .line 679
    :cond_df
    :goto_df
    :try_start_df
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCService :1: session time delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit16 v7, v3, 0x7530

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d5

    mul-int/lit16 v7, v3, 0x7530

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 686
    .end local v1           #index:I
    .end local v3           #timeDelay:I
    :goto_103
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_106} :catch_13f

    .line 693
    .end local v4           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :goto_106
    return-void

    .line 629
    :cond_107
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v6, 0x7f060046

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_106

    .line 634
    :cond_11b
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkCanceledSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_106

    .line 675
    .restart local v1       #index:I
    .restart local v3       #timeDelay:I
    .restart local v4       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_125
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Exception;
    :try_start_126
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCService :exception is checked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13e} :catch_13f

    goto :goto_df

    .line 688
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #index:I
    .end local v3           #timeDelay:I
    .end local v4           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_13f
    move-exception v0

    .line 690
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCService :Exception on startSesssion :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 684
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_159
    :try_start_159
    const-string v5, "[FT]-Client"

    const-string v6, "FTCService :(problem)startSesssion : wrong state"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_160} :catch_13f

    goto :goto_103
.end method

.method private unregisterNetworkIntentReceover()V
    .registers 5

    .prologue
    .line 1494
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mRegisterReciver:Z

    if-eqz v0, :cond_c

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mRegisterReciver:Z

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 1504
    :cond_c
    :goto_c
    return-void

    .line 1500
    :catch_d
    move-exception v0

    .line 1502
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :unregisterNetworkIntentReceover Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private updateSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 16
    .parameter "session"

    .prologue
    const-wide/32 v12, 0x1dcd6500

    const/4 v8, 0x0

    const v11, 0x7f060046

    const/4 v10, 0x1

    .line 697
    if-nez p1, :cond_21

    .line 699
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService : fatal error : updateSession session is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_be

    .line 702
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 714
    .restart local p1
    :cond_21
    :try_start_21
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;

    .line 717
    .local v5, ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 718
    .local v3, index:I
    if-eqz v3, :cond_56

    .line 719
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :on updateSession : update session index number is wrong"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_56
    const/4 v6, -0x1

    if-le v3, v6, :cond_d6

    .line 722
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 723
    .local v0, data:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8d

    .line 725
    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 728
    iget-object v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v6, v5, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    :cond_8d
    sget-object v6, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    invoke-virtual {v6, p1, v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->updateSessionData(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 738
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->updateUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_9c
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_9c} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9c} :catch_137

    .line 746
    .end local v0           #data:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    :goto_9c
    const/4 v4, 0x1

    .line 749
    .local v4, timeDelay:I
    :try_start_9d
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_b3

    .line 750
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v6

    const-wide/32 v8, 0x1dcd6500

    div-long/2addr v6, v8
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ad} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_ad} :catch_f2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-int v6, v6

    mul-int/lit8 v4, v6, 0x2

    .line 757
    :cond_b3
    :goto_b3
    :try_start_b3
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d5

    mul-int/lit16 v8, v4, 0x7530

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_bd
    .catch Ljava/lang/NullPointerException; {:try_start_b3 .. :try_end_bd} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bd} :catch_137

    .line 770
    .end local v3           #index:I
    .end local v4           #timeDelay:I
    .end local v5           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :goto_bd
    return-void

    .line 706
    :cond_be
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :can\'t make session data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 708
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_bd

    .line 742
    .restart local v3       #index:I
    .restart local v5       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :cond_d6
    :try_start_d6
    const-string v6, "[FT]-Client"

    const-string v7, "FTCService :updateSession error:Can\'t get the mSessionList index"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V
    :try_end_f1
    .catch Ljava/lang/NullPointerException; {:try_start_d6 .. :try_end_f1} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f1} :catch_137

    goto :goto_9c

    .line 759
    .end local v3           #index:I
    .end local v5           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_f2
    move-exception v1

    .line 761
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :updateSession error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 763
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V

    goto :goto_bd

    .line 752
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #index:I
    .restart local v4       #timeDelay:I
    .restart local v5       #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_11c
    move-exception v1

    .line 754
    .local v1, e:Ljava/lang/Exception;
    :try_start_11d
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :exception is checked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/NullPointerException; {:try_start_11d .. :try_end_135} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_135} :catch_137

    goto/16 :goto_b3

    .line 765
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #index:I
    .end local v4           #timeDelay:I
    .end local v5           #ui_state:Lcom/sec/android/app/FileTransferClient/Data/SessionState;
    :catch_137
    move-exception v2

    .line 767
    .local v2, e1:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCService :Exception on updateSession :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd
.end method

.method private updateUploadNotify(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1194
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I

    if-nez v0, :cond_77

    .line 1198
    :try_start_4
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z

    if-eqz v0, :cond_e

    .line 1199
    const/16 v0, 0x965

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 1201
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1c

    .line 1202
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1204
    :cond_1c
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1205
    const v1, 0x1080088

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1206
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1208
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->refreshUploadNotifyView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1209
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1211
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1212
    const-string v2, "LIST"

    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1213
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1215
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1216
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v2, "FTClient"

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1219
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5c} :catch_5d

    .line 1230
    :goto_5c
    return-void

    .line 1221
    :catch_5d
    move-exception v0

    .line 1223
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on updateUploadNotify :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1228
    :cond_77
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mUpdateCounter:I

    goto :goto_5c
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 5

    .prologue
    .line 1975
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_16

    .line 1977
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1981
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1983
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1989
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1996
    :cond_2c
    :goto_2c
    return-void

    .line 1992
    :catch_2d
    move-exception v0

    .line 1994
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on acquireWakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method checkCanceledSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)Z
    .registers 6
    .parameter

    .prologue
    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 1344
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1346
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1347
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    .line 1349
    const/4 v0, 0x1

    .line 1357
    :goto_27
    return v0

    .line 1353
    :catch_28
    move-exception v0

    .line 1355
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on checkCanceledSession :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_41
    const/4 v0, 0x0

    goto :goto_27
.end method

.method checkFinish()V
    .registers 5

    .prologue
    .line 1364
    :try_start_0
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_15

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v1, "FTClient"

    iget v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1368
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 1379
    :goto_18
    return-void

    .line 1372
    :cond_19
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :check- finish fail. I have the mSession"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_18

    .line 1375
    :catch_21
    move-exception v0

    .line 1377
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on checkFinish :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method finishService()V
    .registers 5

    .prologue
    .line 1385
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1386
    const/16 v0, 0x966

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendMessageToActivity(ILjava/util/ArrayList;)V

    .line 1388
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->runningService(Z)V

    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mControlResponseHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeEventHandler(Landroid/os/Handler;)V

    .line 1390
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->stop()V

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeDataFolder(Landroid/content/Context;)V

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mAlreadyCanceledSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_33

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    const-string v1, "FTClient"

    iget v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiUploadID:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1398
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1399
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->releaseWakeLock()V

    .line 1400
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : finishService -stopself"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;

    .line 1402
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->stopSelf()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 1409
    :goto_46
    return-void

    .line 1405
    :catch_47
    move-exception v0

    .line 1407
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on finishService :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public getFileList(Ljava/lang/Object;)[Ljava/io/File;
    .registers 22
    .parameter "fileBundle"

    .prologue
    .line 434
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v9, v0

    .line 435
    .local v9, extras:Landroid/os/Bundle;
    const-string v1, "FILE_LIST"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 436
    .local v15, mTmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez v15, :cond_13

    .line 437
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/io/File;

    move-object/from16 v18, v0

    .line 491
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v15           #mTmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :goto_12
    return-object v18

    .line 441
    .restart local v9       #extras:Landroid/os/Bundle;
    .restart local v15       #mTmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    .line 442
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v12, fileName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 444
    .local v17, size:I
    const-string v1, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :getFileList size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_e9

    .line 445
    const/4 v14, 0x0

    .local v14, i:I
    :goto_40
    move/from16 v0, v17

    if-ge v14, v0, :cond_10b

    .line 449
    :try_start_44
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 450
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_cb

    .line 452
    const-string v1, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "media"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 455
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_94

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_91

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 462
    .local v13, fileUri:Landroid/net/Uri;
    move-object v2, v13

    .line 464
    .end local v13           #fileUri:Landroid/net/Uri;
    .end local v16           #path:Ljava/lang/String;
    :cond_91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 469
    .end local v7           #c:Landroid/database/Cursor;
    :cond_94
    new-instance v10, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v10, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v1, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :fileArrayList size  is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_cb} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_cb} :catch_e9

    .line 445
    .end local v2           #uri:Landroid/net/Uri;
    .end local v10           #file:Ljava/io/File;
    :cond_cb
    :goto_cb
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_40

    .line 478
    :catch_cf
    move-exception v8

    .line 480
    .local v8, e:Ljava/lang/SecurityException;
    :try_start_d0
    const-string v1, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :SecurityException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e8} :catch_e9

    goto :goto_cb

    .line 487
    .end local v8           #e:Ljava/lang/SecurityException;
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v12           #fileName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #i:I
    .end local v15           #mTmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v17           #size:I
    :catch_e9
    move-exception v8

    .line 489
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :=> get File List error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/io/File;

    move-object/from16 v19, v0

    .local v19, tmpf:[Ljava/io/File;
    move-object/from16 v18, v19

    .line 491
    goto/16 :goto_12

    .line 483
    .end local v8           #e:Ljava/lang/Exception;
    .end local v19           #tmpf:[Ljava/io/File;
    .restart local v9       #extras:Landroid/os/Bundle;
    .restart local v12       #fileName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #i:I
    .restart local v15       #mTmpUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v17       #size:I
    :cond_10b
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/io/File;

    .line 484
    .local v11, fileList:[Ljava/io/File;
    const-string v1, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCService :mFileList size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/FileTransferClient/FTCService;->fileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_138} :catch_e9

    move-object/from16 v18, v11

    .line 485
    goto/16 :goto_12
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter

    .prologue
    .line 1740
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTCService :onBind FTC Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-class v0, Lcom/sec/android/app/FileTransferClient/Data/IRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.FileTransferClient.Data.IRemoteService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1744
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :bShowUploadList set to true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mBinder:Lcom/sec/android/app/FileTransferClient/Data/IRemoteService$Stub;

    .line 1748
    :goto_35
    return-object v0

    .line 1747
    :cond_36
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :onBind FTC Service: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 1434
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1446
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : send FTC_SERVICE_FINISHED intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->unregisterNetworkIntentReceover()V

    .line 1448
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1449
    invoke-virtual {p0, p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->requestKillProcess(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    .line 1455
    :goto_1c
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1456
    return-void

    .line 1451
    :catch_20
    move-exception v0

    .line 1453
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :onDestoy Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 149
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :onStart FTC Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferClient/FTCService;->handleStart(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 156
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :onStartCommand FTC Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/FileTransferClient/FTCService;->handleStart(Landroid/content/Intent;I)V

    .line 158
    const/4 v0, 0x3

    return v0
.end method

.method public releaseWakeLock()V
    .registers 5

    .prologue
    .line 2000
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService :release Wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2005
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2007
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    .line 2016
    :cond_29
    :goto_29
    return-void

    .line 2012
    :catch_2a
    move-exception v0

    .line 2014
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on releaseWakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 1691
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1692
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1a

    .line 1695
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1696
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1730
    :goto_19
    return-void

    .line 1701
    :cond_1a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/FileTransferClient/FTCService$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCService$3;-><init>(Lcom/sec/android/app/FileTransferClient/FTCService;Landroid/content/Context;)V

    const-string v2, "Process Killer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_19
.end method
