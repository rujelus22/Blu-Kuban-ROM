.class public Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;
.super Ljava/lang/Object;
.source "CallViaAccessNumberConduit.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/CallConduit;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;
    }
.end annotation


# instance fields
.field private callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private context:Landroid/content/Context;

.field private currentBinder:Landroid/os/IBinder;

.field private currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 4
    .parameter "context"
    .parameter "dependencyResolver"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    .line 32
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    .line 40
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 41
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCallSetupEventLogger()Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    .line 42
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 43
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getEventLogger()Lcom/google/android/apps/googlevoice/net/EventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/common/log/GLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method private cleanupCurrentCall()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->doneMakingCall()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-eqz v0, :cond_19

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->CALL_ABANDONED:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->getDestination()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->startCallLogService(Lcom/google/android/apps/googlevoice/CallLogService$StatusType;Ljava/lang/String;)V

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    .line 150
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_2b

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1, v3}, Lcom/google/android/apps/googlevoice/ServiceManager;->listenToCallLogService(Landroid/os/IBinder;Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/ServiceManager;->unbindCallLogService(Landroid/content/ServiceConnection;)V

    .line 153
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    .line 155
    :cond_2b
    return-void
.end method

.method private startPrepareCurrentCall()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->listenToCallLogService(Landroid/os/IBinder;Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->INITIATE_CALL_REQUEST:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->getDestination()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->startCallLogService(Lcom/google/android/apps/googlevoice/CallLogService$StatusType;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected abandonCall(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;)V
    .registers 4
    .parameter "call"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-nez v0, :cond_c

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "No call currently in progress; skipping."

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 133
    :goto_b
    return-void

    .line 127
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-eq p1, v0, :cond_18

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "abandonCall(): Different calls! skipping."

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    goto :goto_b

    .line 131
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onCallAbandoned()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->cleanupCurrentCall()V

    goto :goto_b
.end method

.method public canPlaceCall(Ljava/lang/String;)Z
    .registers 3
    .parameter "destination"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->isShadowNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected completeCall(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;)V
    .registers 6
    .parameter "call"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-eq p1, v1, :cond_c

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "placeCall(): Different calls! Skipping!"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 118
    :goto_b
    return-void

    .line 98
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getInterceptedCallLog(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->getDestination()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->logInterceptedCall(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/CallRecord;

    move-result-object v0

    .line 103
    .local v0, record:Lcom/google/android/apps/googlevoice/CallRecord;
    new-instance v1, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;-><init>(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/apps/googlevoice/CallRecord;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    .end local v0           #record:Lcom/google/android/apps/googlevoice/CallRecord;
    :cond_36
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Redirecting call"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->getDestination()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onCallCompleted()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->cleanupCurrentCall()V

    goto :goto_b
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-eqz v0, :cond_c

    .line 163
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->startPrepareCurrentCall()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 167
    :goto_a
    monitor-exit p0

    return-void

    .line 165
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "onServiceConnected(): No call, skipping!"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_a

    .line 161
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->listenToCallLogService(Landroid/os/IBinder;Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V

    .line 174
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 175
    monitor-exit p0

    return-void

    .line 171
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic prepareCall(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)Lcom/google/android/apps/googlevoice/CallConduit$Call;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->prepareCall(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized prepareCall(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;
    .registers 13
    .parameter "destination"
    .parameter "onSuccess"
    .parameter "onFailure"
    .parameter "onAuthenticationFailure"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->canPlaceCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Attempt to prepare a call when impossible!"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;-><init>(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V

    .line 58
    .local v0, illegalCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_62

    .line 89
    .end local v0           #illegalCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;
    :goto_1b
    monitor-exit p0

    return-object v0

    .line 63
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onCallSetupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    .line 64
    new-instance v1, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;-><init>(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    .line 68
    const/4 v7, 0x0

    .line 69
    .local v7, shadowNumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onShadowNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->getShadowNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    if-eqz v7, :cond_5c

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onShadowNumberFound()V

    .line 77
    :goto_4d
    if-eqz v7, :cond_65

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onAccessNumberLookupSkipped()V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    invoke-virtual {v1, v7}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->onAccessNumberSuccess(Ljava/lang/String;)V

    .line 89
    :goto_59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentCall:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;

    goto :goto_1b

    .line 75
    :cond_5c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onShadowNumberNotFound()V
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_62

    goto :goto_4d

    .line 55
    .end local v7           #shadowNumber:Ljava/lang/String;
    :catchall_62
    move-exception v1

    monitor-exit p0

    throw v1

    .line 81
    .restart local v7       #shadowNumber:Ljava/lang/String;
    :cond_65
    :try_start_65
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onAccessNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->currentBinder:Landroid/os/IBinder;

    if-nez v1, :cond_78

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/ServiceManager;->bindCallLogService(Landroid/content/ServiceConnection;)V

    goto :goto_59

    .line 85
    :cond_78
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->startPrepareCurrentCall()V
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_62

    goto :goto_59
.end method
