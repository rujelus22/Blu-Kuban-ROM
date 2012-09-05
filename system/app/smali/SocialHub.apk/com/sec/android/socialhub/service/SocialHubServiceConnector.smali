.class public Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
.super Ljava/lang/Object;
.source "SocialHubServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;,
        Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

.field protected mCallbackID:I

.field protected mContext:Landroid/content/Context;

.field protected mReqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

.field protected mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mCallbackID:I

    .line 38
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->initService()V

    .line 41
    return-void
.end method

.method private initService()V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 385
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mCallback:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    .line 423
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 449
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "initService()"

    const-string v2, "init completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method


# virtual methods
.method public bindService()V
    .registers 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_43

    .line 456
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 458
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "bindService()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSvc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_43
    return-void
.end method

.method public getContactName(JLjava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 7
    .parameter "contactID"
    .parameter "NumberOrEmail"

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 330
    .local v1, model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v2, :cond_b

    .line 331
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->getContactName(JLjava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 337
    :cond_b
    :goto_b
    return-object v1

    .line 333
    :catch_c
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public removeAccount(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "callback"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 113
    const/4 v1, -0x1

    .line 117
    .local v1, ret:I
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "removeAccount()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_5c

    .line 125
    :goto_33
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 129
    :try_start_36
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v2, :cond_40

    .line 130
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-interface {v2, p2, p3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->removeAccount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 132
    :cond_40
    if-ltz v1, :cond_5a

    if-eqz p1, :cond_5a

    .line 134
    const/16 v2, 0x11

    const/4 v4, -0x1

    invoke-interface {p1, v1, v2, v4}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 135
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v6, 0x11

    invoke-direct {v5, p0, v6, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_5a} :catch_61

    .line 142
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_66

    .line 144
    return v1

    .line 119
    :catch_5c
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :catch_61
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    :try_start_62
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5a

    .line 142
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public removeMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 19
    .parameter "callback"
    .parameter "type"
    .parameter "id"
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"
    .parameter "isAll"

    .prologue
    .line 58
    const/4 v9, -0x1

    .line 62
    .local v9, ret:I
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "removeMessage()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_a7

    const/4 v1, 0x0

    aget-object v1, p3, v1

    :goto_1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", folder = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_aa

    const/4 v1, 0x0

    aget-object v1, p4, v1

    :goto_2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", messageID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p5, :cond_ac

    const/4 v1, 0x0

    aget-object v1, p5, v1

    :goto_3d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", threadID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_ae

    const/4 v1, 0x0

    aget-object v1, p6, v1

    :goto_4c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", messageSize = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p5, :cond_b0

    move-object/from16 v0, p5

    array-length v1, v0

    :goto_5b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", threadSize = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_b2

    move-object/from16 v0, p6

    array-length v1, v0

    :goto_6a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_75} :catch_b4

    .line 79
    :goto_75
    iget-object v10, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 83
    :try_start_78
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v1, :cond_8b

    .line 84
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p4

    move/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v9

    .line 86
    :cond_8b
    if-ltz v9, :cond_a5

    if-eqz p1, :cond_a5

    .line 88
    const/16 v1, 0x13

    const/4 v2, -0x1

    invoke-interface {p1, v9, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v4, 0x13

    invoke-direct {v3, p0, v4, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catchall {:try_start_78 .. :try_end_a5} :catchall_be
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_a5} :catch_b9

    .line 96
    :cond_a5
    :goto_a5
    :try_start_a5
    monitor-exit v10
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_be

    .line 98
    return v9

    .line 62
    :cond_a7
    const/4 v1, 0x0

    goto/16 :goto_1f

    :cond_aa
    const/4 v1, 0x0

    goto :goto_2e

    :cond_ac
    const/4 v1, 0x0

    goto :goto_3d

    :cond_ae
    const/4 v1, 0x0

    goto :goto_4c

    :cond_b0
    const/4 v1, 0x0

    goto :goto_5b

    :cond_b2
    const/4 v1, 0x0

    goto :goto_6a

    .line 73
    :catch_b4
    move-exception v8

    .line 75
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 92
    .end local v8           #e:Ljava/lang/Exception;
    :catch_b9
    move-exception v8

    .line 94
    .local v8, e:Landroid/os/RemoteException;
    :try_start_ba
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a5

    .line 96
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_be
    move-exception v1

    monitor-exit v10
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_be

    throw v1
.end method

.method public requestDBSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "callback"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 201
    const/4 v1, -0x1

    .line 205
    .local v1, ret:I
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "requestDBSync()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_4e

    .line 213
    :goto_25
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 217
    :try_start_28
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v2, :cond_32

    .line 218
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-interface {v2, p2, p3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->requestDBSync(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 220
    :cond_32
    if-ltz v1, :cond_4c

    if-eqz p1, :cond_4c

    .line 222
    const/16 v2, 0x17

    const/4 v4, -0x1

    invoke-interface {p1, v1, v2, v4}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 223
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v6, 0x17

    invoke-direct {v5, p0, v6, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4c} :catch_53

    .line 230
    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_58

    .line 232
    return v1

    .line 207
    :catch_4e
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :catch_53
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    :try_start_54
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4c

    .line 230
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 12
    .parameter "callback"
    .parameter "type"
    .parameter "id"
    .parameter "isNext"

    .prologue
    .line 157
    const/4 v1, -0x1

    .line 161
    .local v1, ret:I
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "requestServerSync()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNext = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_58

    .line 169
    :goto_2f
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 173
    :try_start_32
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v2, :cond_3c

    .line 174
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-interface {v2, p2, p3, p4}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->requestServerSync(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 176
    :cond_3c
    if-ltz v1, :cond_56

    if-eqz p1, :cond_56

    .line 178
    const/16 v2, 0x16

    const/4 v4, -0x1

    invoke-interface {p1, v1, v2, v4}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v6, 0x16

    invoke-direct {v5, p0, v6, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_62
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_56} :catch_5d

    .line 186
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_62

    .line 188
    return v1

    .line 163
    :catch_58
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5d
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56

    .line 186
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_62
    move-exception v2

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    throw v2
.end method

.method public setSyncEnabled(Z)Z
    .registers 8
    .parameter "value"

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 302
    .local v1, ret:Z
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "setSyncEnabled()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_2a

    .line 309
    :goto_1b
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 313
    :try_start_1e
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v2, :cond_28

    .line 314
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    invoke-interface {v2, p1}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->setSyncEnabled(Z)Z
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_34
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2f

    move-result v1

    .line 320
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_34

    .line 322
    return v1

    .line 304
    :catch_2a
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2f
    move-exception v0

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    :try_start_30
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    .line 320
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public unbindService()V
    .registers 4

    .prologue
    .line 464
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_16

    .line 466
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 470
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v1, :cond_16

    .line 471
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mCallback:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->unregisterCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    .line 478
    :cond_16
    :goto_16
    return-void

    .line 473
    :catch_17
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public updateMessage(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 21
    .parameter "callback"
    .parameter "type"
    .parameter "id"
    .parameter "option"
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"
    .parameter "status"

    .prologue
    .line 253
    const/4 v10, -0x1

    .line 257
    .local v10, ret:I
    :try_start_1
    const-string v2, "SocialHubServiceConnector"

    const-string v3, "updateMessage()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_a5

    const/4 v1, 0x0

    aget-object v1, p3, v1

    :goto_1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", option = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", folder = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p5, :cond_a9

    const/4 v1, 0x0

    aget-object v1, p5, v1

    :goto_3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", messageID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_ac

    const/4 v1, 0x0

    aget-object v1, p6, v1

    :goto_49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", threadID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p7, :cond_af

    const/4 v1, 0x0

    aget-object v1, p7, v1

    :goto_58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", status = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_b2

    .line 272
    :goto_6f
    iget-object v11, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 276
    :try_start_72
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v1, :cond_88

    .line 277
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p5

    move/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v10

    .line 279
    :cond_88
    if-ltz v10, :cond_a3

    if-eqz p1, :cond_a3

    .line 281
    const/16 v1, 0x18

    move/from16 v0, p4

    invoke-interface {p1, v10, v1, v0}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v4, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catchall {:try_start_72 .. :try_end_a3} :catchall_bc
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_a3} :catch_b7

    .line 289
    :cond_a3
    :goto_a3
    :try_start_a3
    monitor-exit v11
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_bc

    .line 291
    return v10

    .line 257
    :cond_a5
    :try_start_a5
    const-string v1, "xx"

    goto/16 :goto_1f

    :cond_a9
    const-string v1, "xx"

    goto :goto_3a

    :cond_ac
    const-string v1, "xx"

    goto :goto_49

    :cond_af
    const-string v1, "xx"
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b1} :catch_b2

    goto :goto_58

    .line 267
    :catch_b2
    move-exception v9

    .line 269
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 285
    .end local v9           #e:Ljava/lang/Exception;
    :catch_b7
    move-exception v9

    .line 287
    .local v9, e:Landroid/os/RemoteException;
    :try_start_b8
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a3

    .line 289
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_bc
    move-exception v1

    monitor-exit v11
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_bc

    throw v1
.end method

.method public uploadData(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 25
    .parameter "callback"
    .parameter "updateType"
    .parameter "spTypeList"
    .parameter "title"
    .parameter "content"
    .parameter "tag"
    .parameter "fileName"
    .parameter "categoryOwnerID"
    .parameter "pfd"
    .parameter "fail_action"

    .prologue
    .line 343
    const/4 v12, -0x1

    .line 347
    .local v12, ret:I
    :try_start_1
    const-string v1, "SocialHubServiceConnector"

    const-string v2, "uploadData()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", categoryOwner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pfd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_94

    .line 360
    :goto_59
    iget-object v13, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 364
    :try_start_5c
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v1, :cond_78

    .line 365
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v1 .. v10}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->uploadData(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v12

    .line 367
    :cond_78
    if-ltz v12, :cond_92

    if-eqz p1, :cond_92

    .line 369
    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p1, v12, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageApiCalled(III)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    const/16 v4, 0x21

    invoke-direct {v3, p0, v4, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;-><init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_5c .. :try_end_92} :catchall_9e
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_92} :catch_99

    .line 377
    :cond_92
    :goto_92
    :try_start_92
    monitor-exit v13
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_9e

    .line 379
    return v12

    .line 355
    :catch_94
    move-exception v11

    .line 357
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    .line 373
    .end local v11           #e:Ljava/lang/Exception;
    :catch_99
    move-exception v11

    .line 375
    .local v11, e:Landroid/os/RemoteException;
    :try_start_9a
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_92

    .line 377
    .end local v11           #e:Landroid/os/RemoteException;
    :catchall_9e
    move-exception v1

    monitor-exit v13
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_9e

    throw v1
.end method
