.class public Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
.super Ljava/lang/Object;
.source "SocialHubSnsServiceManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mInstance:I

.field private service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "SocialHubServiceManager"

    sput-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mContext:Landroid/content/Context;

    .line 21
    sput-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->instance:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 26
    iput v2, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 52
    iput v2, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 5
    .parameter

    .prologue
    .line 36
    const-class v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    monitor-enter v1

    .line 38
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->instance:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    if-nez v0, :cond_17

    .line 40
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->instance:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 41
    sget-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "getInstance()"

    const-string v3, "instance is created"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    .line 45
    sget-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->instance:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0

    .line 43
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public declared-synchronized bindService(Landroid/content/Context;Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)Z
    .registers 8
    .parameter "ctx"
    .parameter "observer"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInstance - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after bind - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-nez v1, :cond_69

    .line 116
    new-instance v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    sget-object v2, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 117
    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    const-string v3, "start to bind"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_42
    iget v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    if-gtz v1, :cond_61

    .line 126
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    instance-of v1, v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    if-eqz v1, :cond_56

    .line 128
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    check-cast v1, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->initServiceFlag()V

    .line 129
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->registerObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V

    .line 131
    :cond_56
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->bindService()V

    .line 132
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->bindImageService()V

    .line 133
    const/4 v0, 0x1

    .line 136
    :cond_61
    iget v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_73

    .line 138
    monitor-exit p0

    return v0

    .line 121
    :cond_69
    :try_start_69
    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    const-string v3, "already instance is created!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_42

    .line 110
    .end local v0           #ret:Z
    :catchall_73
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    return-object v0
.end method

.method public registerObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-eqz v0, :cond_c

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->registerObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V

    .line 65
    :goto_b
    return-void

    .line 63
    :cond_c
    sget-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "registerObserver()"

    const-string v2, "service is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public declared-synchronized unbindService(Landroid/content/Context;Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)Z
    .registers 8
    .parameter "ctx"
    .parameter "observer"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "unbindService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInstance - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after unbind - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, ret:Z
    iget v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    .line 150
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-eqz v1, :cond_51

    .line 152
    iget v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->mInstance:I

    if-gtz v1, :cond_51

    .line 154
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->unregisterObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->unbindService()V

    .line 157
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->unbindImageService()V

    .line 159
    const/4 v0, 0x1

    .line 160
    sget-object v1, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "unbindService()"

    const-string v3, "start to unbind"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 165
    :cond_51
    monitor-exit p0

    return v0

    .line 143
    .end local v0           #ret:Z
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-eqz v0, :cond_c

    .line 71
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->unregisterObserver(Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)V

    .line 77
    :goto_b
    return-void

    .line 75
    :cond_c
    sget-object v0, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterObserver()"

    const-string v2, "service is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
