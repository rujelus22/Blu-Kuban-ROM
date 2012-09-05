.class public Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;
.super Landroid/app/Service;
.source "a"


# static fields
.field private static a:Lbd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private declared-synchronized a([Ljava/lang/String;ZLandroid/app/PendingIntent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 105
    monitor-enter p0

    :try_start_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_6d

    .line 106
    :try_start_3
    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    invoke-virtual {v0}, Lbd;->a()V

    .line 108
    :cond_c
    new-instance v0, Lbd;

    invoke-direct {v0, p0}, Lbd;-><init>(Landroid/content/Context;)V

    .line 110
    sput-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    if-nez p1, :cond_2d

    const/4 v1, 0x0

    iput-object v1, v0, Lbd;->c:Landroid/app/PendingIntent;

    iget-object v1, v0, Lbd;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbd;->b:Z

    .line 112
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6a

    monitor-exit p0

    return-void

    .line 110
    :cond_2d
    :try_start_2d
    iput-boolean p2, v0, Lbd;->b:Z

    iput-object p3, v0, Lbd;->c:Landroid/app/PendingIntent;

    iget-object v1, v0, Lbd;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const-string v1, "whitelist.application_allow_"

    const/4 v2, 0x1

    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-object v4, v0, Lbd;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_5c
    array-length v1, p1

    move v2, v5

    :goto_5e
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    iget-object v4, v0, Lbd;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_2d .. :try_end_67} :catchall_6a

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 113
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0

    throw v0
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_6d

    .line 105
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "com.locationlabs.v3client.action.SET_WHITELIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 66
    const-string v0, "com.locationlabs.v3client.extra.PACKAGE_LIST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v0, "com.locationlabs.v3client.extra.WHITELIST_INVERT"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 69
    const-string v0, "com.locationlabs.v3client.extra.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 71
    if-nez v2, :cond_3f

    if-eqz v1, :cond_29

    array-length v3, v1

    if-nez v3, :cond_3f

    .line 72
    :cond_29
    monitor-enter p0

    .line 73
    :try_start_2a
    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    if-eqz v0, :cond_36

    .line 74
    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    invoke-virtual {v0}, Lbd;->a()V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    .line 77
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3c

    .line 79
    invoke-virtual {p0}, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->stopSelf()V

    .line 94
    :cond_3a
    :goto_3a
    const/4 v0, 0x2

    return v0

    .line 77
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_3f
    invoke-direct {p0, v1, v2, v0}, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a([Ljava/lang/String;ZLandroid/app/PendingIntent;)V

    goto :goto_3a

    .line 85
    :cond_43
    const-string v1, "com.locationlabs.v3client.action.KILL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 86
    const-string v0, "com.locationlabs.v3client.extra.PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    :try_start_5f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "killBackgroundProcesses"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_94

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_74} :catch_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5f .. :try_end_74} :catch_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_74} :catch_91

    move v1, v4

    :goto_75
    if-eqz v1, :cond_7a

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_7a
    sget-object v0, Lcom/locationlabs/v3client/feature/whitelist/AppWhitelistService;->a:Lbd;

    if-eqz v0, :cond_3a

    iget-object v1, v0, Lbd;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_81
    iget-object v0, v0, Lbd;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_88

    goto :goto_3a

    :catchall_88
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_8b
    move-exception v1

    move v1, v5

    goto :goto_75

    :catch_8e
    move-exception v1

    move v1, v5

    goto :goto_75

    :catch_91
    move-exception v1

    move v1, v5

    goto :goto_75

    :cond_94
    move v1, v5

    goto :goto_75
.end method
