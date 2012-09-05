.class public Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
.super Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
.source "SocialHubSnsConnector.java"


# static fields
.field static mReason:Ljava/lang/String;

.field static mReqID:Ljava/lang/Integer;

.field static mSuccess:Z

.field static mUri:Ljava/lang/String;


# instance fields
.field bImageServiceConnected:Z

.field bReqServiceConnected:Z

.field bServiceConnected:Z

.field mObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mUri:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mSuccess:Z

    .line 27
    sput-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mReason:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mReqID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "SocialHubSnsConnector"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    .line 31
    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->initServiceFlag()V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->initServiceConnection()V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->initImageCacheService()V

    .line 45
    return-void
.end method


# virtual methods
.method public checkConnected()V
    .registers 5

    .prologue
    .line 258
    const-string v0, "SocialHubSnsConnector"

    const-string v1, "checkConnected()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mReqService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mImageService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    if-eqz v0, :cond_43

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->onInitailizeCompelted()V

    .line 267
    :cond_43
    return-void
.end method

.method public initServiceFlag()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    .line 152
    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    .line 153
    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    .line 155
    const-string v0, "SocialHubSnsConnector"

    const-string v1, "initServiceFlag()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mReqService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mImageService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public isConnected()Z
    .registers 5

    .prologue
    .line 242
    const-string v0, "SocialHubSnsConnector"

    const-string v1, "isConnected()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mReqService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mImageService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    if-eqz v0, :cond_42

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public notifyObserver(Z)V
    .registers 8
    .parameter "bConnceted"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    .line 115
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 117
    :try_start_7
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;

    .line 119
    .local v1, ob:Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
    if-nez v1, :cond_28

    .line 121
    const-string v2, "SocialHubSnsConnector"

    const-string v4, "notifyObserver()"

    const-string v5, "observer is null!!!!"

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 133
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #ob:Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v2

    .line 124
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #ob:Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
    :cond_28
    if-eqz p1, :cond_2e

    .line 126
    :try_start_2a
    invoke-interface {v1}, Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;->onServiceConnected()V

    goto :goto_d

    .line 130
    :cond_2e
    invoke-interface {v1}, Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;->onServiceDisconnected()V

    goto :goto_d

    .line 133
    .end local v1           #ob:Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
    :cond_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_25

    .line 135
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_33
    return-void
.end method

.method public onBindService()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method public declared-synchronized onImageGetResponse(Landroid/content/Context;ILjava/lang/Object;IZLandroid/net/Uri;ILjava/lang/String;)V
    .registers 24
    .parameter "mContext"
    .parameter "spType"
    .parameter "ext"
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "uri"
    .parameter "resultCode"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 167
    .local v13, ReqID:Ljava/lang/Integer;
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 168
    .local v12, BSuccess:Ljava/lang/Boolean;
    if-eqz p6, :cond_6e

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, sUri:Ljava/lang/String;
    :goto_f
    sput-object v14, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mUri:Ljava/lang/String;

    .line 171
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mReqID:Ljava/lang/Integer;

    .line 172
    sput-boolean p5, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mSuccess:Z

    .line 174
    const-string v2, "SocialHubSnsConnector"

    const-string v3, "onImageGetResponse()"

    const-string v4, "###################### SNS CALLBACK RECEIVE <START> #####################"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "SocialHubSnsConnector"

    const-string v3, "onImageGetResponse()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECEIVED DATA : ReqID = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], bSuccess = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/socialhub/parent/ISocialHubConnector;

    move-object v1, v0

    .line 180
    .local v1, instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_70

    .line 182
    const/16 v5, 0x32

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/socialhub/parent/ISocialHubConnector;->onCallbackHandler(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_85

    .line 190
    :goto_6c
    monitor-exit p0

    return-void

    .line 168
    .end local v1           #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .end local v14           #sUri:Ljava/lang/String;
    :cond_6e
    const/4 v14, 0x0

    goto :goto_f

    .line 186
    .restart local v1       #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .restart local v14       #sUri:Ljava/lang/String;
    :cond_70
    const/16 v5, 0x32

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v11, p8

    :try_start_81
    invoke-interface/range {v1 .. v11}, Lcom/sec/android/socialhub/parent/ISocialHubConnector;->onErrorHandler(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_6c

    .line 166
    .end local v1           #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .end local v12           #BSuccess:Ljava/lang/Boolean;
    .end local v13           #ReqID:Ljava/lang/Integer;
    .end local v14           #sUri:Ljava/lang/String;
    :catchall_85
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onImageServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->checkConnected()V

    .line 197
    return-void
.end method

.method public onImageServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bImageServiceConnected:Z

    .line 203
    return-void
.end method

.method public onInitailizeCompelted()V
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->setService(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->notifyObserver(Z)V

    .line 310
    return-void
.end method

.method public onRequestServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bReqServiceConnected:Z

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->checkConnected()V

    .line 210
    return-void
.end method

.method public declared-synchronized onResponse(Landroid/content/Context;ILjava/lang/Object;IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 35
    .parameter "mContext"
    .parameter "spType"
    .parameter "ext"
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 275
    .local v17, ReqID:Ljava/lang/Integer;
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 276
    .local v15, BSuccess:Ljava/lang/Boolean;
    if-eqz p8, :cond_c8

    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    .line 277
    .local v20, sUri:Ljava/lang/String;
    :goto_f
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 278
    .local v16, ErrCode:Ljava/lang/Integer;
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 280
    .local v18, SubErrCode:Ljava/lang/Integer;
    sput-object v20, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mUri:Ljava/lang/String;

    .line 281
    sput-object p13, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mReason:Ljava/lang/String;

    .line 282
    sput-boolean p6, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mSuccess:Z

    .line 283
    sput-object v17, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mReqID:Ljava/lang/Integer;

    .line 285
    const-string v5, "SocialHubSnsConnector"

    const-string v6, "onResponse()"

    const-string v7, "###################### SNS CALLBACK RECEIVE <START> #####################"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v5, "SocialHubSnsConnector"

    const-string v6, "onResponse()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECEIVED DATA : ReqID = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], ReqType = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v8, v8, p5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], bSuccess = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], ErrCode = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], SubErrCode = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], reason = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], bContinue = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/socialhub/parent/ISocialHubConnector;

    move-object v4, v0

    .line 292
    .local v4, instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    const/4 v5, 0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_cc

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p7

    .line 293
    invoke-interface/range {v4 .. v10}, Lcom/sec/android/socialhub/parent/ISocialHubConnector;->onCallbackHandler(Ljava/lang/Object;IIILandroid/net/Uri;Z)V

    .line 297
    :goto_b5
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v19

    .line 299
    .local v19, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v19, :cond_c6

    .line 301
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->invokeHandleSnsCallback(Landroid/content/Context;IZ)V
    :try_end_c6
    .catchall {:try_start_1 .. :try_end_c6} :catchall_e4

    .line 303
    :cond_c6
    monitor-exit p0

    return-void

    .line 276
    .end local v4           #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .end local v16           #ErrCode:Ljava/lang/Integer;
    .end local v18           #SubErrCode:Ljava/lang/Integer;
    .end local v19           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v20           #sUri:Ljava/lang/String;
    :cond_c8
    const/16 v20, 0x0

    goto/16 :goto_f

    .restart local v4       #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .restart local v16       #ErrCode:Ljava/lang/Integer;
    .restart local v18       #SubErrCode:Ljava/lang/Integer;
    .restart local v20       #sUri:Ljava/lang/String;
    :cond_cc
    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 295
    :try_start_e0
    invoke-interface/range {v4 .. v14}, Lcom/sec/android/socialhub/parent/ISocialHubConnector;->onErrorHandler(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_b5

    .line 274
    .end local v4           #instance:Lcom/sec/android/socialhub/parent/ISocialHubConnector;
    .end local v15           #BSuccess:Ljava/lang/Boolean;
    .end local v16           #ErrCode:Ljava/lang/Integer;
    .end local v17           #ReqID:Ljava/lang/Integer;
    .end local v18           #SubErrCode:Ljava/lang/Integer;
    .end local v20           #sUri:Ljava/lang/String;
    :catchall_e4
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->bServiceConnected:Z

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->checkConnected()V

    .line 224
    return-void
.end method

.method public onUnbindService()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method public registerObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 55
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->unregisterAllObserver()V

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61
    const-string v0, "SocialHubSnsConnector"

    const-string v2, "registerObserver()"

    const-string v3, "Already contains this observer"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1b
    monitor-exit v1

    .line 70
    :cond_1c
    return-void

    .line 65
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "SocialHubSnsConnector"

    const-string v2, "registerObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register observer ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 68
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public unregisterAllObserver()V
    .registers 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 99
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 101
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    const-string v0, "SocialHubSnsConnector"

    const-string v2, "unregisterAllObserver()"

    const-string v3, "All Observer is cleared!!"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    monitor-exit v1

    .line 105
    :cond_16
    return-void

    .line 103
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public unregisterObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    .line 80
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "SocialHubSnsConnector"

    const-string v2, "unregisterObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregister observer ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. after ob cnt - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_3e
    monitor-exit v1

    .line 93
    :cond_3f
    return-void

    .line 89
    :cond_40
    const-string v0, "SocialHubSnsConnector"

    const-string v2, "unregisterObserver()"

    const-string v3, "observer is not registered"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 91
    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v0
.end method
