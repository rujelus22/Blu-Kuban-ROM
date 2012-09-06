.class abstract Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "ContinuousConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ContinuousResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field protected final queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;)V
    .registers 3
    .parameter
    .parameter "queryListener"

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;,"Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler<TResponseType;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    .local p0, this:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;,"Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler<TResponseType;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/QueryListener;)V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 5

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;,"Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler<TResponseType;>;"
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Request network error!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$100(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$200(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 80
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v2, "Disconnected, aborting callback."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    monitor-exit v1

    .line 85
    :goto_28
    return-void

    .line 83
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    .line 84
    monitor-exit v1

    goto :goto_28

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onServerErrorCode(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;,"Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler<TResponseType;>;"
    const/4 v4, 0x0

    .line 89
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Request error code! %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnectLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$100(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnected:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$200(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 92
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v2, "Disconnected, aborting callback."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    monitor-exit v1

    .line 97
    :goto_2f
    return-void

    .line 95
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousResponseHandler;->queryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    .line 96
    monitor-exit v1

    goto :goto_2f

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_37

    throw v0
.end method
