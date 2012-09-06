.class Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/masf/services/EventLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingLogEvent"
.end annotation


# instance fields
.field private final eventData:[B

.field private failed:Z

.field private sendAttempts:I


# direct methods
.method constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->eventData:[B

    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public getEventData()[B
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->eventData:[B

    return-object v0
.end method

.method public requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
    .registers 5

    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 6

    iget v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->send()V

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$100()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_22

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/googlex/masf/services/EventLogService;->access$112(I)I

    :goto_1d
    monitor-exit v1

    goto :goto_8

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    goto :goto_1d
.end method

.method resendIfFailed()V
    .registers 3

    invoke-static {}, Lcom/googlex/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-boolean v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/googlex/masf/services/EventLogService;->access$120(I)I

    invoke-virtual {p0}, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->send()V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method send()V
    .registers 6

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->getSingleton()Lcom/googlex/masf/MobileServiceMux;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget v1, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    new-instance v1, Lcom/googlex/masf/protocol/PlainRequest;

    const-string v2, "g:log:ev"

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/googlex/masf/services/EventLogService$OutstandingLogEvent;->getEventData()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v1, p0}, Lcom/googlex/masf/protocol/Request;->setListener(Lcom/googlex/masf/protocol/Request$Listener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;Z)V

    goto :goto_6
.end method
