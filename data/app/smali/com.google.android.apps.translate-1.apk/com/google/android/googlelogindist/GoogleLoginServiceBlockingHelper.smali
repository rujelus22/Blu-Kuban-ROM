.class public Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
.super Ljava/lang/Object;
.source "GoogleLoginServiceBlockingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleLoginServiceBlockingHelper"


# instance fields
.field private final mBackoffFactor:D

.field private mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

.field private final mContext:Landroid/content/Context;

.field private mDelay:I

.field private mGlsVerified:Z

.field private volatile mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

.field private mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final mMaxDelaySecs:I

.field private final mMinDelaySecs:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    .line 61
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    .line 62
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    .line 64
    iput-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    .line 146
    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    .line 147
    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    .line 148
    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 149
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    .line 152
    const-string v0, "com.google.android.googleapps.GoogleLoginService"

    invoke-static {p1, v0}, Lcom/google/android/googlelogindist/GoogleAppsVerifier;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 154
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;

    invoke-direct {v0, v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 158
    :cond_37
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    :try_start_3c
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;-><init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)V

    iput-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 189
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/googlelogindist/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 191
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_57

    .line 195
    :catchall_57
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5e
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Condition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private checkGoogleLoginServiceVerificationLocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    if-nez v0, :cond_f

    .line 271
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 274
    :cond_f
    return-void
.end method

.method private delay()V
    .registers 5

    .prologue
    .line 222
    :try_start_0
    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1d

    .line 226
    :goto_9
    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 227
    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    iget v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    if-le v0, v1, :cond_1c

    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 228
    :cond_1c
    return-void

    .line 223
    :catch_1d
    move-exception v0

    goto :goto_9
.end method

.method public static getAccount(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, h:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 377
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, h:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccounts()[Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAndroidId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, h:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAndroidId()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-wide v1

    .line 548
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    return-wide v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, h:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 432
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getOneAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, loginHelper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, h:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 290
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    .line 292
    return-void

    .line 290
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method private resetDelay()V
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 235
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_5
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_16

    .line 207
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 212
    :cond_16
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    return-void

    .line 212
    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAccount(Z)Ljava/lang/String;
    .registers 5
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 397
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 399
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccount(Z)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    .line 400
    :catch_c
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method

.method public getAccounts()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 347
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 349
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccounts()[Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    .line 350
    :catch_c
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method

.method public getAndroidId()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 565
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 567
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAndroidId()J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide v2

    return-wide v2

    .line 568
    :catch_c
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 456
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 457
    .local v2, result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_29

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, status:Lcom/google/android/googleapps/LoginData$Status;
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_21

    .line 461
    const-string v4, "loginData"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/googleapps/LoginData;

    .line 462
    .local v1, loginData:Lcom/google/android/googleapps/LoginData;
    if-eqz v1, :cond_21

    .line 463
    iget-object v3, v1, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 466
    .end local v1           #loginData:Lcom/google/android/googleapps/LoginData;
    :cond_21
    new-instance v4, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;

    const-string v5, "unable to find auth token for account"

    invoke-direct {v4, p0, v5, v3}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;-><init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/String;Lcom/google/android/googleapps/LoginData$Status;)V

    throw v4

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #status:Lcom/google/android/googleapps/LoginData$Status;
    :cond_29
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .registers 7
    .parameter "username"
    .parameter "service"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 501
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 503
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/googleapps/IGoogleLoginService;->blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    .line 505
    :catch_c
    move-exception v0

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method

.method public getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_20

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling GoogleLoginServiceBlockingHelper methods from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_19

    .line 264
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 252
    :cond_20
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_19

    if-nez v0, :cond_2c

    .line 254
    :try_start_24
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 255
    :catch_2a
    move-exception v0

    goto :goto_20

    .line 260
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->checkGoogleLoginServiceVerificationLocked()V

    .line 262
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_19

    .line 264
    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 305
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 307
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 308
    return-void

    .line 309
    :catch_b
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method

.method public peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 524
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 526
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_7
    invoke-interface {v1, p1, p2}, Lcom/google/android/googleapps/IGoogleLoginService;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    .line 527
    :catch_c
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_3
.end method
