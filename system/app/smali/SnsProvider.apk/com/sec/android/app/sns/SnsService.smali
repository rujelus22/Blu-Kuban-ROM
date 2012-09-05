.class public Lcom/sec/android/app/sns/SnsService;
.super Landroid/app/Service;
.source "SnsService.java"


# static fields
.field private static mClientAppID:I


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/sns/ISnsRequesterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnsDBUpdateBinder:Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;

.field private final mSnsRequesterBinder:Lcom/sec/android/app/sns/ISnsRequester$Stub;

.field private final mSnsServiceBinder:Lcom/sec/android/app/sns/ISnsService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sns/SnsService;->mClientAppID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 347
    new-instance v0, Lcom/sec/android/app/sns/SnsService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/SnsService$1;-><init>(Lcom/sec/android/app/sns/SnsService;)V

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsServiceBinder:Lcom/sec/android/app/sns/ISnsService$Stub;

    .line 500
    new-instance v0, Lcom/sec/android/app/sns/SnsService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/SnsService$2;-><init>(Lcom/sec/android/app/sns/SnsService;)V

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsRequesterBinder:Lcom/sec/android/app/sns/ISnsRequester$Stub;

    .line 2681
    new-instance v0, Lcom/sec/android/app/sns/SnsService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/SnsService$3;-><init>(Lcom/sec/android/app/sns/SnsService;)V

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsDBUpdateBinder:Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/sns/SnsService;->mClientAppID:I

    return v0
.end method

.method static synthetic access$008()I
    .registers 2

    .prologue
    .line 88
    sget v0, Lcom/sec/android/app/sns/SnsService;->mClientAppID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/sns/SnsService;->mClientAppID:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sns/SnsService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sns/SnsService;Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/SnsService;->sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sns/SnsService;IILjava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/SnsService;->checkMsgFolderType(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sns/SnsService;I[I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/SnsService;->checkSupportedPollingType(I[I)Z

    move-result v0

    return v0
.end method

.method private checkMsgFolderType(IILjava/lang/String;)Z
    .registers 10
    .parameter "spType"
    .parameter "reqType"
    .parameter "folder"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    packed-switch p2, :pswitch_data_98

    :cond_8
    move v0, v1

    .line 312
    :cond_9
    :goto_9
    return v0

    .line 278
    :pswitch_a
    sparse-switch p1, :sswitch_data_9e

    .line 298
    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_9

    .line 280
    :sswitch_4b
    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_9

    :sswitch_95
    move v0, v1

    .line 296
    goto/16 :goto_9

    .line 276
    :pswitch_data_98
    .packed-switch 0x16
        :pswitch_a
    .end packed-switch

    .line 278
    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_4b
        0x6 -> :sswitch_95
    .end sparse-switch
.end method

.method private checkSupportedPollingType(I[I)Z
    .registers 10
    .parameter "spType"
    .parameter "reqType"

    .prologue
    const/16 v6, 0x13

    const/4 v4, 0x0

    .line 317
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_24

    aget v3, v0, v1

    .line 318
    .local v3, pollingType:I
    const/16 v5, 0x1a

    if-eq v3, v5, :cond_19

    const/16 v5, 0xe

    if-eq v3, v5, :cond_19

    const/16 v5, 0x24

    if-eq v3, v5, :cond_19

    if-eq v3, v6, :cond_19

    .line 335
    .end local v3           #pollingType:I
    :cond_18
    :goto_18
    return v4

    .line 324
    .restart local v3       #pollingType:I
    :cond_19
    packed-switch p1, :pswitch_data_26

    .line 317
    :cond_1c
    :pswitch_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 326
    :pswitch_1f
    if-eq v3, v6, :cond_18

    .line 329
    :pswitch_21
    if-ne v3, v6, :cond_1c

    goto :goto_18

    .line 335
    .end local v3           #pollingType:I
    :cond_24
    const/4 v4, 0x1

    goto :goto_18

    .line 324
    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_21
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method private sendRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)I
    .registers 6
    .parameter "req"

    .prologue
    .line 257
    const/16 v1, 0xf

    .line 259
    .local v1, msgTypeAddQueue:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, msgAddQueue:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    const-string v2, "SNS"

    const-string v3, "SnsService : sendRequest() : sendThreadMessage[ ADD TO REQUEST QUEUE ]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v2

    return v2
.end method


# virtual methods
.method public getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .registers 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 150
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public invokeCallback(Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 18
    .parameter "data"

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getInternalCode()I

    move-result v14

    .line 101
    .local v14, internalCode:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getHttpStatusCode()I

    move-result v6

    .line 103
    .local v6, httpStatusCode:I
    const-string v1, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeCallback() : ID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], reqType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getReqType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], httpStatusCode = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], internalCode = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], result = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sparse-switch v14, :sswitch_data_d0

    .line 126
    const/4 v6, -0x1

    .line 129
    :goto_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    .line 132
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_67
    if-ge v13, v15, :cond_c8

    .line 133
    :try_start_69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v13}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    .line 134
    .local v12, handle:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getAppID()I

    move-result v2

    if-ne v1, v2, :cond_ae

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getID()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isContinued()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getErrCode()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSubErrCode()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getPartialErrMap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getErrContext()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v1 .. v10}, Lcom/sec/android/app/sns/ISnsRequesterCallback;->onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_ae} :catch_bd

    .line 132
    :cond_ae
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 110
    .end local v12           #handle:Ljava/lang/Integer;
    .end local v13           #i:I
    .end local v15           #n:I
    :sswitch_b1
    const/16 v6, 0xcc

    .line 112
    goto :goto_5e

    .line 114
    :sswitch_b4
    const/16 v6, 0x198

    .line 116
    goto :goto_5e

    .line 118
    :sswitch_b7
    const/16 v6, 0x1f7

    .line 120
    goto :goto_5e

    .line 122
    :sswitch_ba
    const/16 v6, 0x194

    .line 124
    goto :goto_5e

    .line 141
    .restart local v13       #i:I
    .restart local v15       #n:I
    :catch_bd
    move-exception v11

    .line 142
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    const-string v1, "SNS"

    const-string v2, "SnsService : invokeCallback() : FAILED !!!"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sns/SnsService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 147
    return-void

    .line 108
    :sswitch_data_d0
    .sparse-switch
        0xbbd -> :sswitch_b1
        0x138c -> :sswitch_b4
        0x13ed -> :sswitch_b7
        0x13ee -> :sswitch_ba
    .end sparse-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter

    .prologue
    .line 238
    const-string v0, "SNS"

    const-string v1, "SnsService : onBind() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-class v0, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsServiceBinder:Lcom/sec/android/app/sns/ISnsService$Stub;

    .line 252
    :goto_19
    return-object v0

    .line 244
    :cond_1a
    const-class v0, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsRequesterBinder:Lcom/sec/android/app/sns/ISnsRequester$Stub;

    goto :goto_19

    .line 248
    :cond_2d
    const-class v0, Lcom/sec/android/app/sns/ISnsDataUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsService;->mSnsDBUpdateBinder:Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;

    goto :goto_19

    .line 252
    :cond_40
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sns/SnsSvc;->setSnsService(Lcom/sec/android/app/sns/SnsService;)V

    .line 185
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/SnsSvc;->setSnsService(Lcom/sec/android/app/sns/SnsService;)V

    .line 191
    const-string v0, "SNS"

    const-string v1, "SnsService : onDestroy() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, -0x1

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 198
    const-string v2, "SNS"

    const-string v3, "SnsService : onStartCommand() Called !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz p1, :cond_37

    .line 202
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 204
    const-string v2, "SNS"

    const-string v3, "SnsService : SnsIntentAction.INITIAL_LAUNCH !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_20
    :goto_20
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 222
    :try_start_26
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sns/logging/SnsLogging;->saveLog(Landroid/content/Context;ILjava/lang/Object;I)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_37} :catch_6f

    .line 230
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->stopSelf()V

    .line 232
    const/4 v2, 0x3

    return v2

    .line 206
    :cond_3c
    const-string v2, "com.sec.android.app.sns.action.CHECK_SESSION_VALIDITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 207
    const-string v2, "ServiceProvider"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, spType:I
    const-string v2, "SNS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SnsService : onStartCommand() : CHECK_SESSION_VALIDITY START. spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsService;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->validateAllAccounts(I)V

    goto :goto_20

    .line 224
    .end local v1           #spType:I
    :catch_6f
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method
