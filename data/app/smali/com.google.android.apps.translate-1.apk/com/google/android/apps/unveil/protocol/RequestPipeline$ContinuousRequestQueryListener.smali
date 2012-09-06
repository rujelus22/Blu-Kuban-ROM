.class abstract Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ContinuousRequestQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError()V
    .registers 4

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Authentication error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->reset()V

    .line 157
    return-void
.end method

.method public onNetworkError(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Network error (%d)!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onNetworkError(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->reset()V

    .line 164
    return-void
.end method
