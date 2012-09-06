.class Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;
.super Ljava/lang/Object;
.source "RequestPipeline.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;->createResponseExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #calls: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->runOnUiThreadBeforeNextFrame(Ljava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$1300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method
