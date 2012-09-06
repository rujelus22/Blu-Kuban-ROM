.class Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;
.super Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;
.source "ContinuousConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushResponseHandler"
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
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;)V
    .registers 4
    .parameter
    .parameter "queryListener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 6
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
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Push response."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$100(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$200(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 110
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v2, "Disconnected, aborting callback."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    monitor-exit v1

    .line 115
    :goto_28
    return-void

    .line 113
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PushResponseHandler;->queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 114
    monitor-exit v1

    goto :goto_28

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method
