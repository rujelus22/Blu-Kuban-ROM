.class public abstract Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
.super Ljava/lang/Object;
.source "AbstractSocialHubSnsConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field protected bImageServiceConnection:Z

.field protected bServcieConnection:Z

.field private connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

.field protected img_msg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;",
            ">;"
        }
    .end annotation
.end field

.field public mAppId:I

.field public mAppImageId:I

.field protected mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field protected mContext:Landroid/content/Context;

.field public mDeeplink:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

.field protected mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

.field protected mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field protected mReqConnection:Landroid/content/ServiceConnection;

.field protected mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field protected mService:Lcom/sec/android/app/sns/ISnsService;

.field protected mSvcConnection:Landroid/content/ServiceConnection;

.field private mSvcImageConnection:Landroid/content/ServiceConnection;

.field protected msg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "ctx"
    .parameter "TAG"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 44
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 45
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    .line 47
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 49
    iput v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    .line 51
    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->bServcieConnection:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->bImageServiceConnection:Z

    .line 74
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    .line 75
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 76
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    .line 78
    iput v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppImageId:I

    .line 90
    const-string v0, "AbstractSocialHubSnsConnector"

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 93
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    .line 94
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    .line 95
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    .line 97
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    .line 99
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    .line 100
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    .line 102
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    .line 108
    iput-object p0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 115
    iput-object p2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    return-object v0
.end method


# virtual methods
.method public activityForward(Landroid/content/Context;Ljava/lang/String;)I
    .registers 13
    .parameter "context"
    .parameter "activityID"

    .prologue
    .line 934
    const/4 v1, -0x1

    .line 936
    .local v1, ret:I
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 940
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-interface {v3, v5, p2}, Lcom/sec/android/app/sns/ISnsRequester;->activityForward(ILjava/lang/String;)I

    move-result v1

    .line 942
    if-ltz v1, :cond_25

    .line 944
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, p1, v9}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 948
    :cond_25
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "activityForward()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ReqType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_54} :catch_57

    .line 956
    :try_start_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_62

    move v2, v1

    .end local v1           #ret:I
    .local v2, ret:I
    :goto_56
    return v2

    .line 950
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catch_57
    move-exception v0

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    :try_start_58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5e

    .line 956
    :try_start_5b
    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_56

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_5e
    move-exception v3

    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_56

    .line 958
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_62

    throw v3
.end method

.method public activityRetrieve(Landroid/content/Context;Ljava/util/Map;ZZ)I
    .registers 21
    .parameter "context"
    .parameter "actorList"
    .parameter "bIsGroupActivity"
    .parameter "bFetchFromServer"

    .prologue
    .line 517
    const/4 v7, -0x1

    .line 518
    .local v7, ret:I
    const/4 v9, -0x1

    .line 520
    .local v9, spType:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v11

    .line 525
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v10, v12, v0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester;->activityRetrieve(ILjava/util/Map;ZZ)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_b1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_ac

    move-result v7

    .line 527
    if-ltz v7, :cond_5e

    .line 532
    if-eqz p2, :cond_41

    :try_start_1d
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_41

    .line 534
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 535
    .local v6, key_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 537
    .local v5, key:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_b1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3b} :catch_ac

    move-result v9

    goto :goto_2c

    .line 541
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/Integer;
    .end local v6           #key_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_3d
    move-exception v3

    .line 543
    .local v3, e:Ljava/lang/Exception;
    :try_start_3e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    .end local v3           #e:Ljava/lang/Exception;
    :cond_41
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v9, v0, v15}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    move-object v10, v0

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 550
    :cond_5e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v12, "activityRetrieve()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reqID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , ReqType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bIsGroupActivity = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bFetchFromServer = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_3e .. :try_end_9d} :catchall_b1
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_9d} :catch_ac

    .line 557
    :goto_9d
    :try_start_9d
    monitor-exit v11
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_b1

    .line 563
    invoke-static {v9}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    check-cast v8, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 564
    .local v8, sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    if-eqz v8, :cond_b4

    .line 566
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->updateNotification(Landroid/content/Context;)V

    .line 574
    :goto_ab
    return v7

    .line 552
    .end local v8           #sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :catch_ac
    move-exception v3

    .line 555
    .local v3, e:Landroid/os/RemoteException;
    :try_start_ad
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9d

    .line 557
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_b1
    move-exception v10

    monitor-exit v11
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b1

    throw v10

    .line 570
    .restart local v8       #sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_b4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "activityRetrieve()"

    const-string v12, "maybe invalid spType. so does not update notification"

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab
.end method

.method public activityRetrieveNext(Landroid/content/Context;Ljava/util/Map;Z)I
    .registers 19
    .parameter "context"
    .parameter "actorList"
    .parameter "bIsGroupActivity"

    .prologue
    .line 588
    const/4 v6, -0x1

    .line 589
    .local v6, ret:I
    const/4 v8, -0x1

    .line 591
    .local v8, spType:I
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v10

    .line 595
    :try_start_5
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v11, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v9, v11, v0, v1}, Lcom/sec/android/app/sns/ISnsRequester;->activityRetrieveNext(ILjava/util/Map;Z)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_8b

    move-result v6

    .line 597
    if-ltz v6, :cond_56

    .line 602
    if-eqz p2, :cond_39

    :try_start_15
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_39

    .line 604
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 605
    .local v5, key_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 607
    .local v4, key:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_33} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_33} :catch_8b

    move-result v8

    goto :goto_24

    .line 611
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #key_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_35
    move-exception v2

    .line 613
    .local v2, e:Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    .end local v2           #e:Ljava/lang/Exception;
    :cond_39
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v13, 0x2b

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v8, v0, v14}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    move-object v9, v0

    const/16 v11, 0x2b

    invoke-virtual {v9, v11}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 621
    :cond_56
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "activityRetrieveNext()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reqID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , SnsType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_36 .. :try_end_7c} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_7c} :catch_8b

    .line 628
    :goto_7c
    :try_start_7c
    monitor-exit v10
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_90

    .line 634
    invoke-static {v8}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 635
    .local v7, sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    if-eqz v7, :cond_93

    .line 637
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->updateNotification(Landroid/content/Context;)V

    .line 645
    :goto_8a
    return v6

    .line 623
    .end local v7           #sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :catch_8b
    move-exception v2

    .line 626
    .local v2, e:Landroid/os/RemoteException;
    :try_start_8c
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7c

    .line 628
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_90
    move-exception v9

    monitor-exit v10
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_90

    throw v9

    .line 641
    .restart local v7       #sp:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_93
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "activityRetrieve()"

    const-string v11, "maybe invalid spType. so does not update notification"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a
.end method

.method public activityStatuslistGet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 22
    .parameter "context"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "groupID"
    .parameter "statusType"
    .parameter "bFetchFromServer"
    .parameter "bIsNext"

    .prologue
    .line 661
    const/4 v12, -0x1

    .line 663
    .local v12, ret:I
    iget-object v13, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v13

    .line 667
    :try_start_4
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 668
    .local v10, m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 669
    .local v9, m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v11, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 671
    .local v11, m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v1

    invoke-virtual {v1, v10, v9, v11}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->activityStatuslistGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_f6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_f1

    move-result v1

    if-nez v1, :cond_2a

    .line 673
    const/4 v1, -0x1

    :try_start_28
    monitor-exit v13
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_f6

    .line 713
    .end local v9           #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v11           #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_29
    return v1

    .line 676
    .restart local v9       #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v11       #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_2a
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_c3

    .line 678
    :try_start_2f
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v4, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sns/ISnsRequester;->activityStatuslistGetNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 679
    if-ltz v12, :cond_5b

    .line 681
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v4, 0x30

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-direct {v3, v4, v0, p1, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 695
    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "activityStatuslistGet()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , ReqType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p7, :cond_f9

    const/16 v1, 0x30

    :goto_78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", snsSp = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", peopleID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", groupID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", statusType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bFetchFromServer = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_2f .. :try_end_bf} :catchall_f6
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_bf} :catch_f1

    .line 711
    .end local v9           #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v11           #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_bf
    :try_start_bf
    monitor-exit v13
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_f6

    move v1, v12

    .line 713
    goto/16 :goto_29

    .line 687
    .restart local v9       #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v11       #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_c3
    :try_start_c3
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v4, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move/from16 v3, p2

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sns/ISnsRequester;->activityStatuslistGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    .line 688
    if-ltz v12, :cond_5b

    .line 690
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-direct {v3, v4, v0, p1, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_ef
    .catchall {:try_start_c3 .. :try_end_ef} :catchall_f6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_ef} :catch_f1

    goto/16 :goto_5b

    .line 707
    .end local v9           #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v11           #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :catch_f1
    move-exception v8

    .line 709
    .local v8, e:Landroid/os/RemoteException;
    :try_start_f2
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_bf

    .line 711
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_f6
    move-exception v1

    monitor-exit v13
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_f6

    throw v1

    .line 695
    .restart local v9       #m_groupID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v11       #m_statusType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_f9
    const/4 v1, 0x6

    goto/16 :goto_78
.end method

.method public bindImageService()V
    .registers 5

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 2030
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "bindImageService()"

    const-string v2, "context is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    :goto_d
    return-void

    .line 2034
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2036
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "bindImageService()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public bindService()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2072
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 2074
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "bindService()"

    const-string v2, "mContext is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    :goto_e
    return-void

    .line 2078
    :cond_f
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2079
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2081
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "bindService()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSvc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mReq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onBindService()V

    goto :goto_e
.end method

.method public clearRequest()V
    .registers 5

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "clearRequest()"

    const-string v2, "////////////////////////////////////////////////////////////"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "clearRequest()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], img_msg["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], mReqMap["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] request is cleard."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "clearRequest()"

    const-string v2, "////////////////////////////////////////////////////////////"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2124
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2125
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2126
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2128
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->close()V

    .line 2129
    return-void
.end method

.method public commentFavoritePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I
    .registers 33
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"
    .parameter "isFavorite"
    .parameter "isRecommendable"
    .parameter "bIsForced"

    .prologue
    .line 1487
    const/16 v20, -0x1

    .line 1491
    .local v20, req_id:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_129

    .line 1493
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "commentFavoritePost()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", snsSp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetAuthorID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", favoriteType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mask = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isFavorite = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bIsForced = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    new-instance v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1505
    .local v3, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1506
    .local v4, m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v5, m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v6, m_favoriteType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;-><init>(Ljava/lang/Boolean;)V

    .line 1509
    .local v7, m_mask:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p8

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v8, m_isFavorite:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p9

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v9, m_isRecommendable:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;

    move-object/from16 v0, p10

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;-><init>(Ljava/lang/Boolean;)V

    .line 1513
    .local v10, m_bIsForced:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 1515
    const/4 v2, -0x1

    monitor-exit v21

    .line 1536
    .end local v3           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_favoriteType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_mask:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    .end local v8           #m_isFavorite:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_isRecommendable:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_bIsForced:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    .end local p1
    :goto_c3
    return v2

    .line 1518
    .restart local v3       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v4       #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v5       #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v6       #m_favoriteType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v7       #m_mask:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    .restart local v8       #m_isFavorite:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_isRecommendable:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_bIsForced:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    .restart local p1
    :cond_c4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v14, v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v15, v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v0, v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v2, v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v13, p2

    invoke-interface/range {v11 .. v18}, Lcom/sec/android/app/sns/ISnsRequester;->commentFavoritePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v20

    .line 1520
    if-ltz v20, :cond_104

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/4 v13, 0x7

    const/4 v14, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v12, v13, v0, v1, v14}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1526
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "commentFavoritePost()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ReqID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    monitor-exit v21

    .end local v3           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_favoriteType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_mask:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    .end local v8           #m_isFavorite:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_isRecommendable:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_bIsForced:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;
    :goto_123
    move/from16 v2, v20

    .line 1536
    goto :goto_c3

    .line 1528
    :catchall_126
    move-exception v2

    monitor-exit v21
    :try_end_128
    .catchall {:try_start_9 .. :try_end_128} :catchall_126

    :try_start_128
    throw v2
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_129} :catch_129

    .line 1531
    :catch_129
    move-exception v19

    .line 1533
    .local v19, e:Landroid/os/RemoteException;
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_123
.end method

.method public commentPost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 28
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1180
    const/16 v17, -0x1

    .line 1184
    .local v17, reqId:I
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "commentPost()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", SnsType = 9, snsSp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetAuthorID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetSubID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", content_byte = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", content_length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    new-instance v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v3, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v4, m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v5, m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v6, m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v7, m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_a2
    .catchall {:try_start_9 .. :try_end_a2} :catchall_10d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a2} :catch_105

    move-result v2

    if-nez v2, :cond_a9

    .line 1222
    :try_start_a5
    monitor-exit v19
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_112

    move/from16 v18, v17

    .end local v3           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v17           #reqId:I
    .end local p1
    .local v18, reqId:I
    :goto_a8
    return v18

    .line 1206
    .end local v18           #reqId:I
    .restart local v3       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v4       #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v5       #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v6       #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v7       #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v17       #reqId:I
    .restart local p1
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v11, v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v12, v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v13, v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v14, v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v15, v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move/from16 v10, p2

    invoke-interface/range {v8 .. v15}, Lcom/sec/android/app/sns/ISnsRequester;->commentPost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1208
    if-ltz v17, :cond_e3

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v10, 0x9

    const/4 v11, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v10, v0, v1, v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1213
    :cond_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "commentPost()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReqID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_a9 .. :try_end_101} :catchall_10d
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_101} :catch_105

    .line 1222
    :try_start_101
    monitor-exit v19
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_112

    move/from16 v18, v17

    .end local v17           #reqId:I
    .restart local v18       #reqId:I
    goto :goto_a8

    .line 1216
    .end local v3           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v18           #reqId:I
    .restart local v17       #reqId:I
    :catch_105
    move-exception v16

    .line 1218
    .local v16, e:Landroid/os/RemoteException;
    :try_start_106
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10d

    .line 1222
    :try_start_109
    monitor-exit v19

    move/from16 v18, v17

    .end local v17           #reqId:I
    .restart local v18       #reqId:I
    goto :goto_a8

    .end local v16           #e:Landroid/os/RemoteException;
    .end local v18           #reqId:I
    .restart local v17       #reqId:I
    :catchall_10d
    move-exception v2

    monitor-exit v19

    move/from16 v18, v17

    .end local v17           #reqId:I
    .restart local v18       #reqId:I
    goto :goto_a8

    .line 1224
    .end local v18           #reqId:I
    .restart local v17       #reqId:I
    :catchall_112
    move-exception v2

    monitor-exit v19
    :try_end_114
    .catchall {:try_start_109 .. :try_end_114} :catchall_112

    throw v2
.end method

.method public commentRetrieve(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 26
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "bFetchFromServer"

    .prologue
    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 977
    const/4 v15, -0x1

    .line 983
    .local v15, reqId:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "commentRetrieve()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", SnsType = 10, targetID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetAuthorID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetSubID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bFetchFromServer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    new-instance v12, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 993
    .local v12, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 994
    .local v11, m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v14, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 995
    .local v14, m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v13, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v13, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 997
    .local v13, m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual {v2, v12, v11, v14, v13}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_7d
    .catchall {:try_start_8 .. :try_end_7d} :catchall_e6
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_7d} :catch_de

    move-result v2

    if-nez v2, :cond_84

    .line 1019
    :try_start_80
    monitor-exit v17
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_eb

    move/from16 v16, v15

    .end local v11           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v12           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v13           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v14           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v15           #reqId:I
    .end local p1
    .local v16, reqId:I
    :goto_83
    return v16

    .line 1002
    .end local v16           #reqId:I
    .restart local v11       #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v12       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v13       #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v14       #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v15       #reqId:I
    .restart local p1
    :cond_84
    :try_start_84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v5, v12, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v7, v14, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v8, v13, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move/from16 v4, p2

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/sns/ISnsRequester;->commentRetrieve(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v15

    .line 1005
    if-ltz v15, :cond_be

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1011
    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "commentRetrieve()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_84 .. :try_end_da} :catchall_e6
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_da} :catch_de

    .line 1019
    :try_start_da
    monitor-exit v17
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_eb

    move/from16 v16, v15

    .end local v15           #reqId:I
    .restart local v16       #reqId:I
    goto :goto_83

    .line 1013
    .end local v11           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v12           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v13           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v14           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v16           #reqId:I
    .restart local v15       #reqId:I
    :catch_de
    move-exception v10

    .line 1015
    .local v10, e:Landroid/os/RemoteException;
    :try_start_df
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e6

    .line 1019
    :try_start_e2
    monitor-exit v17

    move/from16 v16, v15

    .end local v15           #reqId:I
    .restart local v16       #reqId:I
    goto :goto_83

    .end local v10           #e:Landroid/os/RemoteException;
    .end local v16           #reqId:I
    .restart local v15       #reqId:I
    :catchall_e6
    move-exception v2

    monitor-exit v17

    move/from16 v16, v15

    .end local v15           #reqId:I
    .restart local v16       #reqId:I
    goto :goto_83

    .line 1022
    .end local v16           #reqId:I
    .restart local v15       #reqId:I
    :catchall_eb
    move-exception v2

    monitor-exit v17
    :try_end_ed
    .catchall {:try_start_e2 .. :try_end_ed} :catchall_eb

    throw v2
.end method

.method public commentRetrieveNext(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"

    .prologue
    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1040
    const/4 v14, -0x1

    .line 1043
    .local v14, reqId:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "commentRetrieveNext()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", SnsType = 44, targetID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetAuthorID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetSubID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v11, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v10, m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v13, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v13, m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v12, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v12, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v12, m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual {v2, v11, v10, v13, v12}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_d5
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_71} :catch_ce

    move-result v2

    if-nez v2, :cond_77

    .line 1079
    :try_start_74
    monitor-exit v16
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_d9

    move v15, v14

    .end local v10           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v11           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v12           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v13           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v14           #reqId:I
    .end local p1
    .local v15, reqId:I
    :goto_76
    return v15

    .line 1061
    .end local v15           #reqId:I
    .restart local v10       #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v11       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v12       #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v13       #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v14       #reqId:I
    .restart local p1
    :cond_77
    :try_start_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v5, v11, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v7, v13, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v8, v12, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move/from16 v4, p2

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sns/ISnsRequester;->commentRetrieveNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1064
    if-ltz v14, :cond_af

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v5, 0x2c

    const/4 v6, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1071
    :cond_af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "commentRetrieveNext()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReqID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_77 .. :try_end_cb} :catchall_d5
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_cb} :catch_ce

    .line 1079
    :try_start_cb
    monitor-exit v16
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_d9

    move v15, v14

    .end local v14           #reqId:I
    .restart local v15       #reqId:I
    goto :goto_76

    .line 1073
    .end local v10           #m_targetAuthorID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v11           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v12           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v13           #m_targetType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v15           #reqId:I
    .restart local v14       #reqId:I
    :catch_ce
    move-exception v9

    .line 1075
    .local v9, e:Landroid/os/RemoteException;
    :try_start_cf
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d5

    .line 1079
    :try_start_d2
    monitor-exit v16

    move v15, v14

    .end local v14           #reqId:I
    .restart local v15       #reqId:I
    goto :goto_76

    .end local v9           #e:Landroid/os/RemoteException;
    .end local v15           #reqId:I
    .restart local v14       #reqId:I
    :catchall_d5
    move-exception v2

    monitor-exit v16

    move v15, v14

    .end local v14           #reqId:I
    .restart local v15       #reqId:I
    goto :goto_76

    .line 1081
    .end local v15           #reqId:I
    .restart local v14       #reqId:I
    :catchall_d9
    move-exception v2

    monitor-exit v16
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_d9

    throw v2
.end method

.method public friendDelete(Landroid/content/Context;ILjava/lang/String;)I
    .registers 13
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"

    .prologue
    .line 891
    const/4 v2, -0x1

    .line 893
    .local v2, ret:I
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 897
    :try_start_4
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->friendDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_7d

    move-result v3

    if-nez v3, :cond_1a

    .line 901
    const/4 v3, -0x1

    :try_start_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_82

    .line 919
    .end local v1           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_19
    return v3

    .line 904
    .restart local v1       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6}, Lcom/sec/android/app/sns/ISnsRequester;->friendDelete(IILjava/lang/String;)I

    move-result v2

    .line 906
    if-ltz v2, :cond_3e

    .line 908
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 912
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "friendDelete()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ReqType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", snsSp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetID ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_1a .. :try_end_7a} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_7a} :catch_7d

    .line 918
    .end local v1           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_7a
    :try_start_7a
    monitor-exit v4

    move v3, v2

    .line 919
    goto :goto_19

    .line 914
    :catch_7d
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7a

    .line 918
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_82

    throw v3
.end method

.method public friendGroupingGet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)I
    .registers 19
    .parameter "context"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "relation"
    .parameter "bFetchFromServer"
    .parameter "bIsNext"

    .prologue
    .line 788
    const/4 v10, -0x1

    .line 790
    .local v10, ret:I
    iget-object v11, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v11

    .line 794
    :try_start_4
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v8, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 795
    .local v8, m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 797
    .local v9, m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->friendGroupingGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_d6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_d1

    move-result v1

    if-nez v1, :cond_21

    .line 799
    const/4 v1, -0x1

    :try_start_1f
    monitor-exit v11
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_d6

    .line 836
    .end local v8           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_20
    return v1

    .line 802
    .restart local v8       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_21
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_a6

    .line 804
    :try_start_26
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v3, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v4, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v1, v2, p2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester;->friendGroupingGetNext(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 805
    if-ltz v10, :cond_4c

    .line 807
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 821
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v3, "friendGroupingGet()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , ReqType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_d9

    const/16 v1, 0x31

    :goto_69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", snsSp = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", peopleID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", relation = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bFetchFromServer = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_26 .. :try_end_a2} :catchall_d6
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_a2} :catch_d1

    .line 834
    .end local v8           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_a2
    :try_start_a2
    monitor-exit v11
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_d6

    move v1, v10

    .line 836
    goto/16 :goto_20

    .line 813
    .restart local v8       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_a6
    :try_start_a6
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v4, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move v3, p2

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sns/ISnsRequester;->friendGroupingGet(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 814
    if-ltz v10, :cond_4c

    .line 816
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_cf
    .catchall {:try_start_a6 .. :try_end_cf} :catchall_d6
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_cf} :catch_d1

    goto/16 :goto_4c

    .line 830
    .end local v8           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :catch_d1
    move-exception v7

    .line 832
    .local v7, e:Landroid/os/RemoteException;
    :try_start_d2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a2

    .line 834
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_d6
    move-exception v1

    monitor-exit v11
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_d6

    throw v1

    .line 821
    .restart local v8       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_d9
    const/16 v1, 0xe

    goto :goto_69
.end method

.method public friendListRetrieveEx(Landroid/content/Context;ILjava/lang/String;ZZ)I
    .registers 15
    .parameter "context"
    .parameter "spType"
    .parameter "relation"
    .parameter "bFetchFromServer"
    .parameter "bIsNext"

    .prologue
    .line 727
    const/4 v2, -0x1

    .line 729
    .local v2, ret:I
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 733
    :try_start_4
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 735
    .local v1, m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->friendListRetrieveEx(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_b1

    move-result v3

    if-nez v3, :cond_1a

    .line 737
    const/4 v3, -0x1

    :try_start_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_b6

    .line 773
    .end local v1           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_19
    return v3

    .line 740
    .restart local v1       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_1a
    const/4 v3, 0x1

    if-ne p5, v3, :cond_8c

    .line 742
    :try_start_1d
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6}, Lcom/sec/android/app/sns/ISnsRequester;->friendListRetrieveExNext(IILjava/lang/String;)I

    move-result v2

    .line 743
    if-ltz v2, :cond_41

    .line 745
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 759
    :cond_41
    :goto_41
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v6, "friendListRetrieveEx()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", ReqType = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_b9

    const/16 v3, 0xd

    :goto_5e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", snsSp = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", relation = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", bFetchFromServer = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_89} :catch_b1

    .line 771
    .end local v1           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_89
    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_b6

    move v3, v2

    .line 773
    goto :goto_19

    .line 751
    .restart local v1       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_8c
    :try_start_8c
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6, p4}, Lcom/sec/android/app/sns/ISnsRequester;->friendListRetrieveEx(IILjava/lang/String;Z)I

    move-result v2

    .line 752
    if-ltz v2, :cond_41

    .line 754
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_b0
    .catchall {:try_start_8c .. :try_end_b0} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_b0} :catch_b1

    goto :goto_41

    .line 767
    .end local v1           #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :catch_b1
    move-exception v0

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_89

    .line 771
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_b6
    move-exception v3

    monitor-exit v4
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b6

    throw v3

    .line 759
    .restart local v1       #m_relation:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_b9
    const/16 v3, 0xc

    goto :goto_5e
.end method

.method public friendRequestPost(Landroid/content/Context;ILjava/lang/String;)I
    .registers 13
    .parameter "context"
    .parameter "snsSp"
    .parameter "targetID"

    .prologue
    .line 849
    const/4 v2, -0x1

    .line 851
    .local v2, ret:I
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 855
    :try_start_4
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 857
    .local v1, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->friendRequestPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_7d

    move-result v3

    if-nez v3, :cond_1a

    .line 859
    const/4 v3, -0x1

    :try_start_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_82

    .line 877
    .end local v1           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_19
    return v3

    .line 862
    .restart local v1       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6}, Lcom/sec/android/app/sns/ISnsRequester;->friendRequestPost(IILjava/lang/String;)I

    move-result v2

    .line 864
    if-ltz v2, :cond_3e

    .line 866
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 870
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "friendRequestPost()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ReqType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", snsSp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetID ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_1a .. :try_end_7a} :catchall_82
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_7a} :catch_7d

    .line 876
    .end local v1           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_7a
    :try_start_7a
    monitor-exit v4

    move v3, v2

    .line 877
    goto :goto_19

    .line 872
    :catch_7d
    move-exception v0

    .line 874
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7a

    .line 876
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_82

    throw v3
.end method

.method public getDeeplink(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    monitor-enter v2

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, link:Ljava/lang/String;
    monitor-exit v2

    return-object v0

    .line 147
    .end local v0           #link:Ljava/lang/String;
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getErrorMap(I)Ljava/util/ArrayList;
    .registers 4
    .parameter "reqID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mErrorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 13
    .parameter "mContext"
    .parameter "obj"
    .parameter "photoURL"

    .prologue
    .line 232
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 234
    const/4 v1, -0x1

    .line 237
    .local v1, ret:I
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppImageId:I

    invoke-interface {v3, v5, p3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->getImage(ILjava/lang/String;)I

    move-result v1

    .line 239
    if-ltz v1, :cond_1f

    .line 241
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->img_msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x20

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8, p1, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_1f
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "getImage()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SnsType = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3f} :catch_42

    .line 251
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_4d

    move v2, v1

    .end local v1           #ret:I
    .local v2, ret:I
    :goto_41
    return v2

    .line 245
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catch_42
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    :try_start_43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_49

    .line 251
    :try_start_46
    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_41

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_49
    move-exception v3

    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_41

    .line 254
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_4d

    throw v3
.end method

.method public getRequestMap(I)Ljava/util/ArrayList;
    .registers 4
    .parameter "reqID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSnsProfile()Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    return-object v0
.end method

.method public getSnsService()Lcom/sec/android/app/sns/ISnsService;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method public groupRetrieve(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 14
    .parameter "context"
    .parameter "spType"
    .parameter "peopleID"
    .parameter "bFetchFromServer"

    .prologue
    .line 1641
    const/4 v2, -0x1

    .line 1645
    .local v2, req_id:I
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_8c

    .line 1647
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "groupRetrieve()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", snsSp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", peopleID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bFetchFromServer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v1, m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->groupRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1657
    const/4 v3, -0x1

    monitor-exit v4

    .line 1677
    .end local v1           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_47
    return v3

    .line 1660
    .restart local v1       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_48
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6, p4}, Lcom/sec/android/app/sns/ISnsRequester;->groupRetrieve(IILjava/lang/String;Z)I

    move-result v2

    .line 1662
    if-ltz v2, :cond_6c

    .line 1664
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x12

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1668
    :cond_6c
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "groupRetrieve()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    monitor-exit v4

    .end local v1           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_87
    move v3, v2

    .line 1677
    goto :goto_47

    .line 1669
    :catchall_89
    move-exception v3

    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v3
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 1672
    :catch_8c
    move-exception v0

    .line 1674
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_87
.end method

.method public groupRetrieveNext(Landroid/content/Context;ILjava/lang/String;)I
    .registers 13
    .parameter "context"
    .parameter "spType"
    .parameter "peopleID"

    .prologue
    .line 1682
    const/4 v2, -0x1

    .line 1686
    .local v2, req_id:I
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_82

    .line 1688
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "groupRetrieve()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", snsSp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", peopleID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1695
    .local v1, m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->groupRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1697
    const/4 v3, -0x1

    monitor-exit v4

    .line 1717
    .end local v1           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_3d
    return v3

    .line 1700
    .restart local v1       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6}, Lcom/sec/android/app/sns/ISnsRequester;->groupRetrieveNext(IILjava/lang/String;)I

    move-result v2

    .line 1702
    if-ltz v2, :cond_62

    .line 1704
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x2f

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1708
    :cond_62
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v5, "groupRetrieveNext()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    monitor-exit v4

    .end local v1           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_7d
    move v3, v2

    .line 1717
    goto :goto_3d

    .line 1709
    :catchall_7f
    move-exception v3

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v3
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_82} :catch_82

    .line 1712
    :catch_82
    move-exception v0

    .line 1714
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7d
.end method

.method public initCallback()V
    .registers 4

    .prologue
    .line 1880
    new-instance v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$3;-><init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 1934
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "initCallback()"

    const-string v2, "init callback is completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    return-void
.end method

.method protected initImageCacheCallback()V
    .registers 4

    .prologue
    .line 1940
    new-instance v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$4;-><init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    .line 1977
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "initImageCacheCallback()"

    const-string v2, "init callback is completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method public initImageCacheService()V
    .registers 4

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initImageCacheCallback()V

    .line 1997
    new-instance v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;-><init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    .line 2023
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "initImageCacheService()"

    const-string v2, "init image cache service is completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    return-void
.end method

.method public initServiceConnection()V
    .registers 4

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initCallback()V

    .line 1832
    new-instance v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;-><init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 1859
    new-instance v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;-><init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    .line 1874
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "initServiceConnection()"

    const-string v2, "init completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    return-void
.end method

.method public isLoggedin(I)I
    .registers 6
    .parameter "sp"

    .prologue
    .line 195
    const/4 v1, -0x1

    .line 199
    .local v1, ret:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-nez v3, :cond_7

    move v2, v1

    .line 209
    .end local v1           #ret:I
    .local v2, ret:I
    :goto_6
    return v2

    .line 202
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_7
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    invoke-interface {v3, p1}, Lcom/sec/android/app/sns/ISnsService;->isLoggedIn(I)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f

    move-result v1

    :goto_d
    move v2, v1

    .line 209
    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_6

    .line 204
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catch_f
    move-exception v0

    .line 206
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public messagePost(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 38
    .parameter "context"
    .parameter "snsSp"
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1102
    const/16 v25, -0x1

    .line 1105
    .local v25, reqId:I
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "messagePost()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", SnsType = 22, snsSp = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", postType = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", recieverIds = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz p4, :cond_e6

    move-object/from16 v0, p4

    array-length v2, v0

    if-lez v2, :cond_e6

    const/4 v2, 0x0

    aget-object v2, p4, v2

    :goto_3c
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", content_byte = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", content_length = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", replayMessageID = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", replyThreadID = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", replyFolder = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v11, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    if-eqz p4, :cond_f5

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "messagePost()"

    const-string v11, "============================================"

    invoke-static {v2, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "messagePost()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receiver Count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    move-object/from16 v20, p4

    .local v20, arr$:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_bd
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_ea

    aget-object v24, v20, v22

    .line 1123
    .local v24, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "messagePost()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receiver Name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    add-int/lit8 v22, v22, 0x1

    goto :goto_bd

    .line 1105
    .end local v20           #arr$:[Ljava/lang/String;
    .end local v22           #i$:I
    .end local v23           #len$:I
    .end local v24           #name:Ljava/lang/String;
    :cond_e6
    const-string v2, "null"

    goto/16 :goto_3c

    .line 1125
    .restart local v20       #arr$:[Ljava/lang/String;
    .restart local v22       #i$:I
    .restart local v23       #len$:I
    :cond_ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "messagePost()"

    const-string v11, "============================================"

    invoke-static {v2, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .end local v20           #arr$:[Ljava/lang/String;
    .end local v22           #i$:I
    .end local v23           #len$:I
    :cond_f5
    new-instance v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v3, m_postType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;-><init>([Ljava/lang/String;)V

    .line 1130
    .local v4, m_receiverIds:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;
    new-instance v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v5, m_title:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v6, m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v7, m_replyMessageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p8

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v8, m_replyThreadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p9

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v9, m_replyFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p2 .. p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_131
    .catchall {:try_start_9 .. :try_end_131} :catchall_1a8
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_131} :catch_1a0

    move-result v2

    if-nez v2, :cond_138

    .line 1159
    :try_start_134
    monitor-exit v27
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_1ad

    move/from16 v26, v25

    .end local v3           #m_postType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_receiverIds:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;
    .end local v5           #m_title:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_replyMessageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v8           #m_replyThreadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_replyFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v25           #reqId:I
    .end local p1
    .local v26, reqId:I
    :goto_137
    return v26

    .line 1141
    .end local v26           #reqId:I
    .restart local v3       #m_postType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v4       #m_receiverIds:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;
    .restart local v5       #m_title:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v6       #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v7       #m_replyMessageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v8       #m_replyThreadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_replyFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v25       #reqId:I
    .restart local p1
    :cond_138
    :try_start_138
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v13, v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v14, v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;->value:[Ljava/lang/String;

    iget-object v15, v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v0, v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v12, p2

    invoke-interface/range {v10 .. v19}, Lcom/sec/android/app/sns/ISnsRequester;->messagePost(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 1144
    if-ltz v25, :cond_17e

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v12, 0x16

    const/4 v13, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v11, v12, v0, v1, v13}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1150
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v10, "messagePost()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ReqID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catchall {:try_start_138 .. :try_end_19c} :catchall_1a8
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_19c} :catch_1a0

    .line 1159
    :try_start_19c
    monitor-exit v27
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_1ad

    move/from16 v26, v25

    .end local v25           #reqId:I
    .restart local v26       #reqId:I
    goto :goto_137

    .line 1153
    .end local v3           #m_postType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #m_receiverIds:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;
    .end local v5           #m_title:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_replyMessageID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v8           #m_replyThreadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_replyFolder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v26           #reqId:I
    .restart local v25       #reqId:I
    :catch_1a0
    move-exception v21

    .line 1155
    .local v21, e:Landroid/os/RemoteException;
    :try_start_1a1
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a8

    .line 1159
    :try_start_1a4
    monitor-exit v27

    move/from16 v26, v25

    .end local v25           #reqId:I
    .restart local v26       #reqId:I
    goto :goto_137

    .end local v21           #e:Landroid/os/RemoteException;
    .end local v26           #reqId:I
    .restart local v25       #reqId:I
    :catchall_1a8
    move-exception v2

    monitor-exit v27

    move/from16 v26, v25

    .end local v25           #reqId:I
    .restart local v26       #reqId:I
    goto :goto_137

    .line 1161
    .end local v26           #reqId:I
    .restart local v25       #reqId:I
    :catchall_1ad
    move-exception v2

    monitor-exit v27
    :try_end_1af
    .catchall {:try_start_1a4 .. :try_end_1af} :catchall_1ad

    throw v2
.end method

.method public messageThreadRetrieve(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 19
    .parameter "context"
    .parameter "snsSp"
    .parameter "folderType"
    .parameter "mThreadId"
    .parameter "bFetchFromServer"

    .prologue
    .line 1295
    iget-object v7, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v7

    .line 1297
    const/4 v4, -0x1

    .line 1300
    .local v4, reqId:I
    :try_start_4
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "messageThreadRetrieve()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", SnsType = 23, snsSp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", folderType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mThreadId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    new-instance v2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v2, m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v3, m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageThreadRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4f} :catch_9a

    move-result v6

    if-nez v6, :cond_55

    .line 1333
    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_a5

    move v5, v4

    .end local v2           #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v3           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #reqId:I
    .end local p1
    .local v5, reqId:I
    :goto_54
    return v5

    .line 1315
    .end local v5           #reqId:I
    .restart local v2       #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v3       #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v4       #reqId:I
    .restart local p1
    :cond_55
    :try_start_55
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v8, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v9, v2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v10, v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/sec/android/app/sns/ISnsRequester;->messageThreadRetrieve(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    .line 1318
    if-ltz v4, :cond_7d

    .line 1320
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v10, 0x17

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, p1, v12}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v6, 0x17

    invoke-virtual {p1, v6}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1324
    :cond_7d
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "messageThreadRetrieve()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReqID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_55 .. :try_end_97} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_97} :catch_9a

    .line 1333
    :try_start_97
    monitor-exit v7
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_a5

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .line 1326
    .end local v2           #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v3           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catch_9a
    move-exception v1

    .line 1329
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9b
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a1

    .line 1333
    :try_start_9e
    monitor-exit v7

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catchall_a1
    move-exception v6

    monitor-exit v7

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .line 1335
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catchall_a5
    move-exception v6

    monitor-exit v7
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_a5

    throw v6
.end method

.method public messageThreadRetrieveNext(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "context"
    .parameter "snsSp"
    .parameter "folderType"
    .parameter "mThreadId"

    .prologue
    .line 1346
    iget-object v7, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v7

    .line 1348
    const/4 v4, -0x1

    .line 1351
    .local v4, reqId:I
    :try_start_4
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "messageThreadRetrieveNext()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", SnsType = 45, snsSp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", folderType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mThreadId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    new-instance v2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1359
    .local v2, m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v3, m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->messageThreadRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4f} :catch_99

    move-result v6

    if-nez v6, :cond_55

    .line 1383
    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_a4

    move v5, v4

    .end local v2           #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v3           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v4           #reqId:I
    .end local p1
    .local v5, reqId:I
    :goto_54
    return v5

    .line 1366
    .end local v5           #reqId:I
    .restart local v2       #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v3       #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v4       #reqId:I
    .restart local p1
    :cond_55
    :try_start_55
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v8, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v9, v2, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v10, v3, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10}, Lcom/sec/android/app/sns/ISnsRequester;->messageThreadRetrieveNext(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1368
    if-ltz v4, :cond_7c

    .line 1370
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v10, 0x2d

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, p1, v12}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v6, 0x2d

    invoke-virtual {p1, v6}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1374
    :cond_7c
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v8, "messageThreadRetrieveNext()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReqID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_55 .. :try_end_96} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_96} :catch_99

    .line 1383
    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_a4

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .line 1377
    .end local v2           #m_folder:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v3           #m_threadID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catch_99
    move-exception v1

    .line 1379
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9a
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_a0

    .line 1383
    :try_start_9d
    monitor-exit v7

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catchall_a0
    move-exception v6

    monitor-exit v7

    move v5, v4

    .end local v4           #reqId:I
    .restart local v5       #reqId:I
    goto :goto_54

    .line 1385
    .end local v5           #reqId:I
    .restart local v4       #reqId:I
    :catchall_a4
    move-exception v6

    monitor-exit v7
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a4

    throw v6
.end method

.method public notePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .parameter "context"
    .parameter "snsSp"
    .parameter "categoryID"
    .parameter "categoryOwnerID"
    .parameter "content"

    .prologue
    .line 462
    const/4 v11, -0x1

    .line 464
    .local v11, ret:I
    iget-object v12, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v12

    .line 468
    :try_start_4
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 469
    .local v8, m_categoryID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 470
    .local v9, m_categoryOwnerID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 472
    .local v10, m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->notePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_af
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_aa

    move-result v1

    if-nez v1, :cond_2a

    .line 474
    const/4 v1, -0x1

    :try_start_28
    monitor-exit v12
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_af

    .line 499
    .end local v8           #m_categoryID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_categoryOwnerID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_29
    return v1

    .line 477
    .restart local v8       #m_categoryID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_categoryOwnerID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v4, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v6, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sns/ISnsRequester;->notePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 479
    if-ltz v11, :cond_53

    .line 481
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 484
    :cond_53
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v2, "notePost()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , ReqType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , SnsSpType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , categoryID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , ownerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_2a .. :try_end_a7} :catchall_af
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_a7} :catch_aa

    .line 497
    .end local v8           #m_categoryID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_categoryOwnerID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_content:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_a7
    :try_start_a7
    monitor-exit v12

    move v1, v11

    .line 499
    goto :goto_29

    .line 493
    :catch_aa
    move-exception v7

    .line 495
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a7

    .line 497
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_af
    move-exception v1

    monitor-exit v12
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_af

    throw v1
.end method

.method public notificationPost(Landroid/content/Context;[I)I
    .registers 12
    .parameter "context"
    .parameter "spTypeList"

    .prologue
    .line 1614
    const/4 v1, -0x1

    .line 1618
    .local v1, req_id:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_51

    .line 1620
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-interface {v2, v4, p2}, Lcom/sec/android/app/sns/ISnsRequester;->notificationPost(I[I)I

    move-result v1

    .line 1622
    if-ltz v1, :cond_27

    .line 1624
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v6, 0x19

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x19

    invoke-virtual {p1, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1628
    :cond_27
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "notificationPost()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sp_count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    monitor-exit v3

    .line 1636
    :goto_4d
    return v1

    .line 1629
    :catchall_4e
    move-exception v2

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v2
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_51} :catch_51

    .line 1631
    :catch_51
    move-exception v0

    .line 1633
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d
.end method

.method public notificationRetrieve(Landroid/content/Context;IZ)I
    .registers 12
    .parameter "context"
    .parameter "spType"
    .parameter "bFetchFromServer"

    .prologue
    .line 1542
    const/4 v1, -0x1

    .line 1546
    .local v1, req_id:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_69

    .line 1548
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "notificationRetrieve()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", snsSp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bFetchFromServer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-interface {v2, v4, p2, p3}, Lcom/sec/android/app/sns/ISnsRequester;->notificationRetrieve(IIZ)I

    move-result v1

    .line 1555
    if-ltz v1, :cond_4a

    .line 1557
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v6, 0x1a

    const/4 v7, 0x0

    invoke-direct {v5, v6, p2, p1, v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x1a

    invoke-virtual {p1, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1561
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "notificationRetrieve()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    monitor-exit v3

    .line 1571
    :goto_65
    return v1

    .line 1563
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_4 .. :try_end_68} :catchall_66

    :try_start_68
    throw v2
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_69} :catch_69

    .line 1566
    :catch_69
    move-exception v0

    .line 1568
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_65
.end method

.method public notificationRetrieveNext(Landroid/content/Context;I)I
    .registers 11
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 1576
    const/4 v1, -0x1

    .line 1580
    .local v1, req_id:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5f

    .line 1582
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "notificationRetrieveNext()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", snsSp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-interface {v2, v4, p2}, Lcom/sec/android/app/sns/ISnsRequester;->notificationRetrieveNext(II)I

    move-result v1

    .line 1588
    if-ltz v1, :cond_40

    .line 1590
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v6, 0x2e

    const/4 v7, 0x0

    invoke-direct {v5, v6, p2, p1, v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1594
    :cond_40
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "notificationRetrieveNext()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    monitor-exit v3

    .line 1603
    :goto_5b
    return v1

    .line 1595
    :catchall_5c
    move-exception v2

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v2
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 1598
    :catch_5f
    move-exception v0

    .line 1600
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5b
.end method

.method public abstract onBindService()V
.end method

.method public abstract onImageGetResponse(Landroid/content/Context;ILjava/lang/Object;IZLandroid/net/Uri;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImageServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onImageServiceDisconnected(Landroid/content/ComponentName;)V
.end method

.method public abstract onRequestServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onResponse(Landroid/content/Context;ILjava/lang/Object;IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onUnbindService()V
.end method

.method public peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I
    .registers 21
    .parameter "context"
    .parameter "spTypeList"
    .parameter "status"

    .prologue
    .line 1237
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v11

    .line 1239
    const/4 v6, -0x1

    .line 1243
    .local v6, reqId:I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v12, "peopleProfileSet()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ", SpCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Sp = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, p2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ReqType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x1c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", status_byte = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", status_length = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v10, v12, v0, v1}, Lcom/sec/android/app/sns/ISnsRequester;->peopleProfileSet(I[ILjava/lang/String;)I

    move-result v6

    .line 1255
    if-ltz v6, :cond_b7

    .line 1257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_72
    .catchall {:try_start_6 .. :try_end_72} :catchall_e0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_72} :catch_d9

    .line 1259
    :try_start_72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v9, spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v2, p2

    .local v2, arr$:[I
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7b
    if-ge v4, v5, :cond_89

    aget v8, v2, v4

    .line 1263
    .local v8, sp:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 1266
    .end local v8           #sp:I
    :cond_89
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    monitor-exit v12
    :try_end_95
    .catchall {:try_start_72 .. :try_end_95} :catchall_d6

    .line 1269
    :try_start_95
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v14, 0x1c

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v13, v14, v15, v0, v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v10, 0x1c

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1273
    .end local v2           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v9           #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v12, "peopleProfileSet()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ReqID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_95 .. :try_end_d3} :catchall_e0
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_d3} :catch_d9

    .line 1281
    :try_start_d3
    monitor-exit v11
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_e4

    move v7, v6

    .end local v6           #reqId:I
    .local v7, reqId:I
    :goto_d5
    return v7

    .line 1267
    .end local v7           #reqId:I
    .restart local v6       #reqId:I
    .restart local p1
    :catchall_d6
    move-exception v10

    :try_start_d7
    monitor-exit v12
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v10
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_e0
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_d9} :catch_d9

    .line 1275
    .end local p1
    :catch_d9
    move-exception v3

    .line 1277
    .local v3, e:Landroid/os/RemoteException;
    :try_start_da
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_e0

    .line 1281
    :try_start_dd
    monitor-exit v11

    move v7, v6

    .end local v6           #reqId:I
    .restart local v7       #reqId:I
    goto :goto_d5

    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #reqId:I
    .restart local v6       #reqId:I
    :catchall_e0
    move-exception v10

    monitor-exit v11

    move v7, v6

    .end local v6           #reqId:I
    .restart local v7       #reqId:I
    goto :goto_d5

    .line 1283
    .end local v7           #reqId:I
    .restart local v6       #reqId:I
    :catchall_e4
    move-exception v10

    monitor-exit v11
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_e4

    throw v10
.end method

.method public putDeeplink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "url"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    monitor-enter v1

    .line 137
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mDeeplink:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public searchKeywordRetrieve(Landroid/content/Context;I)I
    .registers 11
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 1730
    const/4 v1, -0x1

    .line 1734
    .local v1, req_id:I
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5f

    .line 1736
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "searchKeywordRetrieve()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", snsSp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-interface {v2, v4, p2}, Lcom/sec/android/app/sns/ISnsRequester;->searchKeywordRetrieve(II)I

    move-result v1

    .line 1742
    if-ltz v1, :cond_40

    .line 1744
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v6, 0x26

    const/4 v7, 0x0

    invoke-direct {v5, v6, p2, p1, v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1748
    :cond_40
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v4, "searchKeywordRetrieve()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    monitor-exit v3

    .line 1757
    :goto_5b
    return v1

    .line 1749
    :catchall_5c
    move-exception v2

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v2
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 1752
    :catch_5f
    move-exception v0

    .line 1754
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5b
.end method

.method public searchingSearch(Landroid/content/Context;ILjava/lang/String;ZZ)I
    .registers 15
    .parameter "context"
    .parameter "snsSp"
    .parameter "keyWord"
    .parameter "bFetchFromServer"
    .parameter "bIsNext"

    .prologue
    .line 1774
    const/4 v2, -0x1

    .line 1776
    .local v2, ret:I
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 1780
    :try_start_4
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    invoke-direct {v1, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v1, m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->searchingSearch(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_c0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_bb

    move-result v3

    if-nez v3, :cond_1a

    .line 1784
    const/4 v3, -0x1

    :try_start_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_c0

    .line 1821
    .end local v1           #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_19
    return v3

    .line 1787
    .restart local v1       #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_1a
    const/4 v3, 0x1

    if-ne p5, v3, :cond_96

    .line 1789
    :try_start_1d
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6}, Lcom/sec/android/app/sns/ISnsRequester;->searchingSearchNext(IILjava/lang/String;)I

    move-result v2

    .line 1790
    if-ltz v2, :cond_41

    .line 1792
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x33

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x33

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1806
    :cond_41
    :goto_41
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v6, "searchingSearch()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " , ReqType = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_c3

    const/16 v3, 0x33

    :goto_5e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", snsSp = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", keyword = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", bFetchFromServer = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", bIsNext = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_1d .. :try_end_93} :catchall_c0
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_93} :catch_bb

    .line 1819
    .end local v1           #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_93
    :try_start_93
    monitor-exit v4
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_c0

    move v3, v2

    .line 1821
    goto :goto_19

    .line 1798
    .restart local v1       #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_96
    :try_start_96
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v5, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v6, v1, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    invoke-interface {v3, v5, p2, v6, p4}, Lcom/sec/android/app/sns/ISnsRequester;->searchingSearch(IILjava/lang/String;Z)I

    move-result v2

    .line 1799
    if-ltz v2, :cond_41

    .line 1801
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v7, 0x27

    const/4 v8, 0x0

    invoke-direct {v6, v7, p2, p1, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x27

    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_ba
    .catchall {:try_start_96 .. :try_end_ba} :catchall_c0
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_ba} :catch_bb

    goto :goto_41

    .line 1815
    .end local v1           #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :catch_bb
    move-exception v0

    .line 1817
    .local v0, e:Landroid/os/RemoteException;
    :try_start_bc
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_93

    .line 1819
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_c0
    move-exception v3

    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c0

    throw v3

    .line 1806
    .restart local v1       #m_keyWord:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :cond_c3
    const/16 v3, 0x27

    goto :goto_5e
.end method

.method public serviceProviderDeepLinkGet(Landroid/content/Context;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 34
    .parameter "context"
    .parameter "obj"
    .parameter "snsSp"
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"
    .parameter "actorName"

    .prologue
    .line 1418
    const/16 v21, -0x1

    .line 1422
    .local v21, req_id:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_11b

    .line 1424
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "serviceProviderDeepLinkGet()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", SnsType = 40, snsSp = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", linkType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", deeplinkUrl = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", peopleID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetSubID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", targetCommentID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-instance v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v4, m_linkType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v5, m_deeplinkUrl:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v6, m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v7, m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p8

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v8, m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v9, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p9

    invoke-direct {v9, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v9, m_targetCommentID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    new-instance v10, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;

    move-object/from16 v0, p10

    invoke-direct {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v10, m_actorName:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    invoke-static/range {p3 .. p3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    move-result-object v3

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->serviceProviderDeepLinkGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 1446
    const/4 v3, -0x1

    monitor-exit v22

    .line 1467
    .end local v4           #m_linkType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_deeplinkUrl:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v8           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_targetCommentID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_actorName:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local p1
    :goto_b0
    return v3

    .line 1449
    .restart local v4       #m_linkType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v5       #m_deeplinkUrl:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v6       #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v7       #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v8       #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v9       #m_targetCommentID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local v10       #m_actorName:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .restart local p1
    :cond_b1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    iget-object v14, v4, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v15, v5, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    iget-object v0, v6, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v13, p3

    invoke-interface/range {v11 .. v19}, Lcom/sec/android/app/sns/ISnsRequester;->serviceProviderDeepLinkGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 1451
    if-ltz v21, :cond_f6

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->msg:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;

    const/16 v13, 0x28

    move/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v12, v13, v0, v1, v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    check-cast p1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    .end local p1
    const/16 v3, 0x28

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 1457
    :cond_f6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v11, "serviceProviderDeepLinkGet()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ReqID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    monitor-exit v22

    .end local v4           #m_linkType:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v5           #m_deeplinkUrl:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v6           #m_peopleID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v7           #m_targetID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v8           #m_targetSubID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v9           #m_targetCommentID:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    .end local v10           #m_actorName:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    :goto_115
    move/from16 v3, v21

    .line 1467
    goto :goto_b0

    .line 1459
    :catchall_118
    move-exception v3

    monitor-exit v22
    :try_end_11a
    .catchall {:try_start_9 .. :try_end_11a} :catchall_118

    :try_start_11a
    throw v3
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_11b} :catch_11b

    .line 1462
    :catch_11b
    move-exception v20

    .line 1464
    .local v20, e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_115
.end method

.method public unbindImageService()V
    .registers 5

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 2068
    :goto_4
    return-void

    .line 2046
    :cond_5
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2048
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "unbindImageService()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSvc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->clearRequest()V

    .line 2054
    :try_start_31
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    if-nez v0, :cond_44

    .line 2056
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "unbindImageService()"

    const-string v2, "mImageService is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_3f

    goto :goto_4

    .line 2063
    :catch_3f
    move-exception v0

    .line 2066
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 2060
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_3f

    goto :goto_4
.end method

.method public unbindService()V
    .registers 5

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 2090
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "unbindService()"

    const-string v2, "mContext is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :goto_d
    return-void

    .line 2094
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2095
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2097
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->clearRequest()V

    .line 2101
    :try_start_1f
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-nez v0, :cond_5d

    .line 2103
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "unbindImageService()"

    const-string v2, "mImageService is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2c} :catch_2d

    goto :goto_d

    .line 2108
    :catch_2d
    move-exception v0

    .line 2110
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2113
    :goto_31
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;

    const-string v1, "unbindService()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSvc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mReq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onUnbindService()V

    goto :goto_d

    .line 2106
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_2d

    goto :goto_31
.end method
