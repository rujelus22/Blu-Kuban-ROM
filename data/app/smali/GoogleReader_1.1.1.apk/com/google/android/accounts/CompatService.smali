.class abstract Lcom/google/android/accounts/CompatService;
.super Landroid/app/Service;
.source "AbstractSyncService.java"


# instance fields
.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStopForeground:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 401
    :try_start_1
    const-class v0, Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_6} :catch_b

    move-result-object v0

    .line 405
    :goto_7
    return-object v0

    .line 403
    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_7

    .line 405
    :catch_b
    move-exception v0

    move-object v0, v1

    goto :goto_7
.end method

.method private varargs invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 411
    .line 412
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_11

    .line 418
    return-void

    .line 413
    :catch_4
    move-exception v0

    .line 414
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 415
    :catch_11
    move-exception v0

    .line 416
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/accounts/CompatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/accounts/CompatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 367
    const-string v0, "startForeground"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Landroid/app/Notification;

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/google/android/accounts/CompatService;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/CompatService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 368
    const-string v0, "stopForeground"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/accounts/CompatService;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/CompatService;->mStopForeground:Ljava/lang/reflect/Method;

    .line 369
    const-string v0, "setForeground"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/accounts/CompatService;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/CompatService;->mSetForeground:Ljava/lang/reflect/Method;

    .line 370
    return-void
.end method

.method public startForegroundCompat(ILandroid/app/Notification;)V
    .registers 8
    .parameter "id"
    .parameter "notification"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/google/android/accounts/CompatService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 378
    iget-object v0, p0, Lcom/google/android/accounts/CompatService;->mStartForeground:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/google/android/accounts/CompatService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 383
    :goto_16
    return-void

    .line 380
    :cond_17
    iget-object v0, p0, Lcom/google/android/accounts/CompatService;->mSetForeground:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/accounts/CompatService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/accounts/CompatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_16
.end method

.method public stopForegroundCompat(I)V
    .registers 7
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 390
    iget-object v1, p0, Lcom/google/android/accounts/CompatService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 391
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 392
    .local v0, removeNotification:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/google/android/accounts/CompatService;->mStopForeground:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/google/android/accounts/CompatService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 397
    .end local v0           #removeNotification:Ljava/lang/Boolean;
    :goto_11
    return-void

    .line 394
    :cond_12
    iget-object v1, p0, Lcom/google/android/accounts/CompatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 395
    iget-object v1, p0, Lcom/google/android/accounts/CompatService;->mSetForeground:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/google/android/accounts/CompatService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_11
.end method
