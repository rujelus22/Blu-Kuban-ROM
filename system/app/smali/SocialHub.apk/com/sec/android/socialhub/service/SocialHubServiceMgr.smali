.class public Lcom/sec/android/socialhub/service/SocialHubServiceMgr;
.super Ljava/lang/Object;
.source "SocialHubServiceMgr.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mInstance:Ljava/lang/Integer;

.field private service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-string v0, "SocialHubServiceMgr"

    sput-object v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    .line 10
    sput-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mContext:Landroid/content/Context;

    .line 11
    sput-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->instance:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    .line 40
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    .line 41
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;
    .registers 5
    .parameter

    .prologue
    .line 24
    sput-object p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mContext:Landroid/content/Context;

    .line 26
    const-class v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    monitor-enter v1

    .line 28
    :try_start_5
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->instance:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    if-nez v0, :cond_1b

    .line 30
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->instance:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 31
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v2, "getInstance()"

    const-string v3, "instance is created"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1f

    .line 35
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->instance:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    return-object v0

    .line 33
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public declared-synchronized bindService(Landroid/content/Context;)Z
    .registers 7
    .parameter "ctx"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInstance - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after bind - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    if-nez v1, :cond_6a

    .line 70
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    .line 71
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    const-string v3, "start to bind"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_46
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_74

    .line 80
    :try_start_49
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_57

    .line 82
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->bindService()V

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_57
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    .line 87
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_77

    .line 90
    monitor-exit p0

    return v0

    .line 75
    :cond_6a
    :try_start_6a
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    const-string v3, "already instance is created!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_74

    goto :goto_46

    .line 64
    .end local v0           #ret:Z
    :catchall_74
    move-exception v1

    monitor-exit p0

    throw v1

    .line 87
    .restart local v0       #ret:Z
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_74
.end method

.method public getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    return-object v0
.end method

.method public declared-synchronized unbindService(Landroid/content/Context;)Z
    .registers 7
    .parameter "ctx"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v2, "unbindService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInstance - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after unbind - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, ret:Z
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_64

    .line 101
    :try_start_33
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    .line 103
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    if-eqz v1, :cond_5e

    .line 105
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->mInstance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_5e

    .line 107
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->service:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->unbindService()V

    .line 108
    const/4 v0, 0x1

    .line 109
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->TAG:Ljava/lang/String;

    const-string v3, "unbindService()"

    const-string v4, "start to unbind"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_33 .. :try_end_5f} :catchall_61

    .line 114
    monitor-exit p0

    return v0

    .line 112
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 95
    .end local v0           #ret:Z
    :catchall_64
    move-exception v1

    monitor-exit p0

    throw v1
.end method
