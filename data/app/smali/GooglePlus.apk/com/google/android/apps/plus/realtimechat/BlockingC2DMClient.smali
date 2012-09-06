.class public Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;
.super Ljava/lang/Object;
.source "BlockingC2DMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$1;,
        Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;
    }
.end annotation


# instance fields
.field private final mEvent:Ljava/util/concurrent/CountDownLatch;

.field private final mRealTimeChatListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

.field private mRegistrationToken:Ljava/lang/String;

.field private mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

.field private final mTimeoutMilliseconds:J

.field private mUsed:Z


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter "timeoutMilliseconds"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;-><init>(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRealTimeChatListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 77
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mEvent:Ljava/util/concurrent/CountDownLatch;

    .line 78
    iput-wide p1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mTimeoutMilliseconds:J

    .line 79
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Lcom/google/android/apps/plus/service/ServiceResult;)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRegistrationToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mEvent:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private waitForServiceResult()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mEvent:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mTimeoutMilliseconds:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 113
    const-string v1, "BlockingC2DMClient"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 114
    const-string v1, "BlockingC2DMClient"

    const-string v2, "Waiting for C2DM registration timed out."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1d
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, -0x2

    const-string v3, "Waiting for C2DM registration timed out."

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    .line 119
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    if-nez v1, :cond_47

    .line 120
    const-string v1, "BlockingC2DMClient"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 121
    const-string v1, "BlockingC2DMClient"

    const-string v2, "Result was not set by service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3c
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, 0x0

    const-string v3, "Result was not set by service."

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_47} :catch_48

    .line 131
    :cond_47
    :goto_47
    return-void

    .line 125
    :catch_48
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BlockingC2DMClient"

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 127
    const-string v1, "BlockingC2DMClient"

    const-string v2, "Waiting for C2DM registration interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_58
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    const/4 v2, -0x1

    const-string v3, "Waiting for C2DM registration interrupted."

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    goto :goto_47
.end method


# virtual methods
.method public blockingGetC2dmToken(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mUsed:Z

    if-eqz v0, :cond_c

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is single-use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mUsed:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRealTimeChatListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 95
    :try_start_14
    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRegistrationToken:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRegistrationToken:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 98
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2f

    .line 103
    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRealTimeChatListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 105
    return-void

    .line 100
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->waitForServiceResult()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_25

    .line 103
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRealTimeChatListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    throw v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRegistrationToken:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
