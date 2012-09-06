.class Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;
.super Ljava/lang/Object;
.source "RpcBasedSmsCostLookup.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SmsCostLookup;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private pendingResponseMessage:Landroid/os/Message;

.field private pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/common/log/GLog;)V
    .registers 5
    .parameter "voiceService"
    .parameter "log"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->lock:Ljava/lang/Object;

    .line 41
    if-nez p1, :cond_14

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "voiceService == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_14
    if-nez p2, :cond_1e

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "log == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1e
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->log:Lcom/google/android/apps/common/log/GLog;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->onRpcDone(Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V

    return-void
.end method

.method private onRpcDone(Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V
    .registers 7
    .parameter "destinationNumber"
    .parameter "rpc"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    if-ne v0, p2, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    if-nez v0, :cond_d

    .line 90
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    .line 106
    :goto_c
    return-void

    .line 94
    :cond_d
    :try_start_d
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/GetRatesRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SMS rate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/GetRatesRpc;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_4d

    .line 102
    :goto_2f
    const/4 v0, 0x0

    :try_start_30
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    .line 105
    monitor-exit v1

    goto :goto_c

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw v0

    .line 97
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    new-instance v2, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/GetRatesRpc;->getTotalDisplayableSmsRate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4d

    goto :goto_2f

    .line 102
    :catchall_4d
    move-exception v0

    const/4 v2, 0x0

    :try_start_4f
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    .line 103
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    throw v0
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_37
.end method


# virtual methods
.method public cancelAllLookups()V
    .registers 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public initiateLookup(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "destinationNumber"
    .parameter "response"

    .prologue
    .line 53
    if-nez p1, :cond_a

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "destinationNumber == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_a
    if-nez p2, :cond_14

    .line 57
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->cancelAllLookups()V

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetRatesRpc()Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    move-result-object v0

    .line 63
    .local v0, rpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/GetRatesRpc;->setDestinationNumbers([Ljava/lang/String;)V

    .line 64
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingRpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->pendingResponseMessage:Landroid/os/Message;

    .line 66
    new-instance v1, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;-><init>(Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/GetRatesRpc;->submit(Ljava/lang/Runnable;)V

    .line 72
    monitor-exit v2

    .line 73
    return-void

    .line 72
    .end local v0           #rpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_37

    throw v1
.end method
