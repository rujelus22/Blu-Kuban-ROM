.class Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;
.super Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;
.source "ContinuousConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PullResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    .line 120
    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->pullListener:Lcom/google/android/apps/unveil/protocol/QueryListener;
    invoke-static {p1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$400(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Lcom/google/android/apps/unveil/protocol/QueryListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Pull response."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    if-nez p1, :cond_1b

    .line 127
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "nothing in pull response, ignoring"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :goto_1a
    return-void

    .line 131
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getProtocolBuffer()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 132
    .local v0, gogglesResponse:Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Response size: %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "result count: %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResultsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->application:Lcom/google/android/apps/unveil/UnveilContext;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$500(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Lcom/google/android/apps/unveil/UnveilContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractTrackingId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->setTrackingId(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseReceivedTimestamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->interpretPullResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;J)Lcom/google/android/apps/unveil/protocol/QueryResponse;

    move-result-object v1

    .line 141
    .local v1, queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$100(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 142
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$200(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 143
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v4, "Disconnected, aborting callback."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    monitor-exit v3

    goto :goto_1a

    .line 147
    :catchall_81
    move-exception v2

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_81

    throw v2

    .line 146
    :cond_84
    :try_start_84
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;->queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 147
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_81

    goto :goto_1a
.end method
