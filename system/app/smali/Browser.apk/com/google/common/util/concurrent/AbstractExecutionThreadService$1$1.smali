.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 43
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 45
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_31

    move-result v1

    if-eqz v1, :cond_1b

    .line 47
    :try_start_14
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_28

    .line 56
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 57
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_27} :catch_31

    .line 62
    return-void

    .line 48
    :catch_28
    move-exception v0

    .line 50
    .local v0, t:Ljava/lang/Throwable;
    :try_start_29
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_30} :catch_31

    .line 52
    :goto_30
    :try_start_30
    throw v0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_31} :catch_31

    .line 58
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_31
    move-exception v0

    .line 59
    .restart local v0       #t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 60
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 51
    :catch_3c
    move-exception v1

    goto :goto_30
.end method
