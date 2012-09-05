.class public Lcom/vlingo/client/userlogging/UALService;
.super Landroid/app/Service;
.source "UALService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/userlogging/UALService$1;,
        Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;,
        Lcom/vlingo/client/userlogging/UALService$TransmitTask;
    }
.end annotation


# static fields
.field public static final EXTRA_SKIP_INITIAL_DELAY:Ljava/lang/String; = "com.vlingo.client.userlogging.skipInitialDelay"

.field private static final TRANSMIT_INTERVAL:J = 0x3a980L

.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private volatile eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

.field private transmitTimer:Ljava/util/Timer;

.field private volatile userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/vlingo/client/userlogging/UALService;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/userlogging/UALService;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/userlogging/UALService;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vlingo/client/userlogging/UALService;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/userlogging/UALService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UALService;->transmitData()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/userlogging/UALService;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vlingo/client/userlogging/UALService;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/userlogging/UALService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UALService;->stopServiceIfdone()V

    return-void
.end method

.method private declared-synchronized stopServiceIfdone()V
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    if-nez v0, :cond_10

    .line 144
    invoke-virtual {p0}, Lcom/vlingo/client/userlogging/UALService;->stopSelf()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 146
    :cond_10
    monitor-exit p0

    return-void

    .line 143
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transmitData()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x32

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 85
    iput-object v7, p0, Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 86
    iput-object v7, p0, Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 88
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->flushUserLogRecord()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, xml:Ljava/lang/String;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 90
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getUserLoggingURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v1

    .line 91
    .local v1, url:Lcom/vlingo/client/core/http/URL;
    const-string v4, "ActivityLog"

    new-instance v5, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;

    invoke-direct {v5, p0, v7}, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;-><init>(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/userlogging/UALService$1;)V

    invoke-static {v4, v5, v1, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    .line 92
    .local v0, scheduledRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-virtual {v0, v8}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setGzipPostData(Z)V

    .line 93
    invoke-virtual {v0, v9, v10, v6, v6}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V

    .line 94
    iput-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 97
    .end local v0           #scheduledRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .end local v1           #url:Lcom/vlingo/client/core/http/URL;
    :cond_30
    invoke-static {}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/EventLoggingEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->flushEventLogRecord()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, xml2:Ljava/lang/String;
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 99
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getEventLoggingURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v1

    .line 100
    .restart local v1       #url:Lcom/vlingo/client/core/http/URL;
    const-string v4, "EventLog"

    new-instance v5, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;

    invoke-direct {v5, p0, v7}, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;-><init>(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/userlogging/UALService$1;)V

    invoke-static {v4, v5, v1, v3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    .line 101
    .restart local v0       #scheduledRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-virtual {v0, v8}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setGzipPostData(Z)V

    .line 102
    invoke-virtual {v0, v9, v10, v6, v6}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V

    .line 103
    iput-object v0, p0, Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 105
    .end local v0           #scheduledRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .end local v1           #url:Lcom/vlingo/client/core/http/URL;
    :cond_57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, skipDelay:Z
    if-eqz p1, :cond_a

    .line 45
    const-string v1, "com.vlingo.client.userlogging.skipInitialDelay"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    :cond_a
    monitor-enter p0

    .line 49
    :try_start_b
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    if-nez v1, :cond_30

    .line 50
    if-eqz v0, :cond_17

    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UALService;->transmitData()V

    .line 65
    :cond_14
    :goto_14
    monitor-exit p0

    .line 66
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_17
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    .line 55
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    new-instance v2, Lcom/vlingo/client/userlogging/UALService$TransmitTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/userlogging/UALService$TransmitTask;-><init>(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/userlogging/UALService$1;)V

    const-wide/32 v3, 0x3a980

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_14

    .line 65
    :catchall_2d
    move-exception v1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v1

    .line 59
    :cond_30
    if-eqz v0, :cond_14

    .line 60
    :try_start_32
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;

    .line 62
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UALService;->transmitData()V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2d

    goto :goto_14
.end method
