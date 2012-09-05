.class public Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
.super Ljava/lang/Object;
.source "SocialHubSnsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;,
        Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;,
        Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;,
        Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
    }
.end annotation


# instance fields
.field protected bIsReqConnected:Z

.field protected bIsSvcConnected:Z

.field protected mAppId:I

.field protected mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field private mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

.field protected mContext:Landroid/content/Context;

.field protected mHandleCallback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

.field protected mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field protected mReqConnection:Landroid/content/ServiceConnection;

.field protected mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field protected mService:Lcom/sec/android/app/sns/ISnsService;

.field protected mSvcConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 30
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 31
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 32
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mReqConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 35
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    .line 39
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mHandleCallback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

    .line 43
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    .line 45
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 47
    iput-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    .line 49
    iput-boolean v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z

    .line 50
    iput-boolean v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 58
    instance-of v0, p1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    if-eqz v0, :cond_3d

    .line 60
    check-cast p1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    .line 63
    :cond_3d
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->initiailize()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->checkServiceConnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private checkServiceConnection()V
    .registers 5

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z

    if-eqz v0, :cond_3a

    .line 428
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    if-eqz v0, :cond_11

    .line 430
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    invoke-interface {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;->onServiceConnected()V

    .line 441
    :cond_11
    :goto_11
    const-string v0, "SocialHubSnsHandler"

    const-string v1, "checkServiceConnection()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bIsReqConnected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bIsSvcConnected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void

    .line 433
    :cond_3a
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z

    if-nez v0, :cond_11

    .line 435
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    if-eqz v0, :cond_11

    .line 437
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectionListener:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;

    invoke-interface {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsConnection;->onServiceDisconnected()V

    goto :goto_11
.end method

.method private initiailize()V
    .registers 2

    .prologue
    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    .line 309
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 352
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 386
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mReqConnection:Landroid/content/ServiceConnection;

    .line 422
    return-void
.end method


# virtual methods
.method public bindService()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 446
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 447
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 448
    return-void
.end method

.method public getProfile()Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-object v0
.end method

.method public getRequester()Lcom/sec/android/app/sns/ISnsRequester;
    .registers 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-nez v1, :cond_1e

    .line 82
    :try_start_4
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "getRequester()"

    const-string v3, "mRequester is null!!! so bind service!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bindService()V

    .line 84
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 85
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "getRequester()"

    const-string v3, "maybe service is connected!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1e} :catch_21

    .line 92
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object v1

    .line 87
    :catch_21
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e
.end method

.method public getService()Lcom/sec/android/app/sns/ISnsService;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method public messageDelete(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .parameter "callback"
    .parameter "snsSp"
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 102
    const/4 v11, -0x1

    .line 104
    .local v11, ret:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getRequester()Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    .line 106
    .local v1, requester:Lcom/sec/android/app/sns/ISnsRequester;
    if-eqz v1, :cond_98

    .line 110
    :try_start_7
    iget-object v12, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_9d

    .line 113
    :try_start_a
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 114
    .local v8, m_folderType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 115
    .local v9, m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual {v2, v8, v9, v10}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 119
    const/4 v2, -0x1

    monitor-exit v12

    .line 144
    .end local v8           #m_folderType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_2f
    return v2

    .line 122
    .restart local v8       #m_folderType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_30
    iget v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    iget-object v4, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sns/ISnsRequester;->messageDelete(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 124
    if-ltz v11, :cond_4f

    .line 126
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;

    const/16 v5, 0x13

    invoke-direct {v4, p0, v11, v5, p1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;IILcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_4f
    const-string v2, "SocialHubSnsHandler"

    const-string v3, "messageDelete()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", snsSp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", folder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v12

    .end local v8           #m_folderType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_98
    :goto_98
    move v2, v11

    .line 144
    goto :goto_2f

    .line 136
    :catchall_9a
    move-exception v2

    monitor-exit v12
    :try_end_9c
    .catchall {:try_start_a .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v2
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9d} :catch_9d

    .line 138
    :catch_9d
    move-exception v7

    .line 140
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_98
.end method

.method public messageGet(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .parameter "callback"
    .parameter "spType"
    .parameter "threadID"
    .parameter "messageID"
    .parameter "messageFolder"

    .prologue
    .line 159
    const/4 v11, -0x1

    .line 161
    .local v11, ret:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getRequester()Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    .line 163
    .local v1, requester:Lcom/sec/android/app/sns/ISnsRequester;
    if-nez v1, :cond_9

    move v2, v11

    .line 201
    :goto_8
    return v2

    .line 166
    :cond_9
    iget-object v12, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 170
    :try_start_c
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 171
    .local v10, m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 172
    .local v9, m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 174
    .local v8, m_messageFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual {v2, v10, v9, v8}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_ac

    move-result v2

    if-nez v2, :cond_35

    .line 176
    const/4 v2, -0x1

    :try_start_30
    monitor-exit v12

    goto :goto_8

    .line 199
    .end local v8           #m_messageFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :catchall_32
    move-exception v2

    monitor-exit v12
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v2

    .line 179
    .restart local v8       #m_messageFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_35
    :try_start_35
    iget v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    iget-object v4, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sns/ISnsRequester;->messageGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 181
    if-ltz v11, :cond_54

    .line 183
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;

    const/16 v5, 0x15

    invoke-direct {v4, p0, v11, v5, p1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;IILcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_54
    const-string v2, "SocialHubSnsHandler"

    const-string v3, "messageGet()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , ReqType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , spType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , threadID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , messageID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , messageFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_35 .. :try_end_a8} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_a8} :catch_ac

    .line 199
    .end local v8           #m_messageFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_messageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_a8
    :try_start_a8
    monitor-exit v12

    move v2, v11

    .line 201
    goto/16 :goto_8

    .line 195
    :catch_ac
    move-exception v7

    .line 197
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_32

    goto :goto_a8
.end method

.method public photoUpload(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 21
    .parameter "callback"
    .parameter "spTypeList"
    .parameter "fileName"
    .parameter "content"
    .parameter "title"
    .parameter "tag"
    .parameter "pfd"

    .prologue
    .line 218
    const/4 v10, -0x1

    .line 220
    .local v10, ret:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getRequester()Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    .line 222
    .local v1, requester:Lcom/sec/android/app/sns/ISnsRequester;
    if-nez v1, :cond_9

    move v11, v10

    .line 251
    .end local v10           #ret:I
    .local v11, ret:I
    :goto_8
    return v11

    .line 225
    .end local v11           #ret:I
    .restart local v10       #ret:I
    :cond_9
    iget-object v12, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 229
    :try_start_c
    iget v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/sns/ISnsRequester;->photoUpload(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v10

    .line 231
    if-ltz v10, :cond_2f

    .line 233
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;

    const/16 v5, 0x21

    invoke-direct {v4, p0, v10, v5, p1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;IILcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2f
    const-string v3, "SocialHubSnsHandler"

    const-string v4, "photoUpload()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , ReqType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , SnsSpType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_8c

    const/4 v2, 0x0

    aget v2, p2, v2

    :goto_59
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , title = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , tag = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , pfd = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_c .. :try_end_88} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_88} :catch_8e

    .line 249
    :goto_88
    :try_start_88
    monitor-exit v12

    move v11, v10

    .line 251
    .end local v10           #ret:I
    .restart local v11       #ret:I
    goto/16 :goto_8

    .line 236
    .end local v11           #ret:I
    .restart local v10       #ret:I
    :cond_8c
    const/4 v2, -0x1

    goto :goto_59

    .line 245
    :catch_8e
    move-exception v9

    .line 247
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_88

    .line 249
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_93
    move-exception v2

    monitor-exit v12
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_93

    throw v2
.end method

.method public unbindService()V
    .registers 4

    .prologue
    .line 452
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 457
    :try_start_e
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v1, :cond_19

    .line 458
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    .line 464
    :cond_19
    :goto_19
    return-void

    .line 460
    :catch_1a
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public videoUpload(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 19
    .parameter "callback"
    .parameter "snsSp"
    .parameter "categoryOwnerID"
    .parameter "title"
    .parameter "fileName"
    .parameter "pfd"

    .prologue
    .line 267
    const/4 v9, -0x1

    .line 269
    .local v9, ret:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getRequester()Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    .line 271
    .local v1, requester:Lcom/sec/android/app/sns/ISnsRequester;
    if-nez v1, :cond_9

    move v10, v9

    .line 301
    .end local v9           #ret:I
    .local v10, ret:I
    :goto_8
    return v10

    .line 274
    .end local v10           #ret:I
    .restart local v9       #ret:I
    :cond_9
    iget-object v11, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 278
    :try_start_c
    iget v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sns/ISnsRequester;->videoUpload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v9

    .line 280
    if-ltz v9, :cond_2c

    .line 282
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;

    const/16 v5, 0x23

    invoke-direct {v4, p0, v9, v5, p1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;IILcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2c
    const-string v2, "SocialHubSnsHandler"

    const-string v3, "videoUpload()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , ReqType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , spType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , ownerID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , pfd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_c .. :try_end_8a} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_8a} :catch_8e

    .line 299
    :goto_8a
    :try_start_8a
    monitor-exit v11

    move v10, v9

    .line 301
    .end local v9           #ret:I
    .restart local v10       #ret:I
    goto/16 :goto_8

    .line 295
    .end local v10           #ret:I
    .restart local v9       #ret:I
    :catch_8e
    move-exception v8

    .line 297
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8a

    .line 299
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_93
    move-exception v2

    monitor-exit v11
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_93

    throw v2
.end method
