.class Lcom/google/android/music/utils/async/CallbackRunnable$1;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/async/CallbackRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/utils/async/CallbackRunnable;


# direct methods
.method constructor <init>(Lcom/google/android/music/utils/async/CallbackRunnable;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/utils/async/CallbackRunnable$1;->this$0:Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/utils/async/CallbackRunnable$1;->this$0:Lcom/google/android/music/utils/async/CallbackRunnable;

    #getter for: Lcom/google/android/music/utils/async/CallbackRunnable;->mRunnable:Lcom/google/android/music/utils/async/AsyncRunner;
    invoke-static {v1}, Lcom/google/android/music/utils/async/CallbackRunnable;->access$000(Lcom/google/android/music/utils/async/CallbackRunnable;)Lcom/google/android/music/utils/async/AsyncRunner;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/music/utils/async/AsyncRunner;->taskCompleted()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 50
    return-void

    .line 46
    :catch_a
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/music/utils/async/CallbackRunnable$1;->this$0:Lcom/google/android/music/utils/async/CallbackRunnable;

    #calls: Lcom/google/android/music/utils/async/CallbackRunnable;->appendCalledFromOntoStackTrace(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lcom/google/android/music/utils/async/CallbackRunnable;->access$100(Lcom/google/android/music/utils/async/CallbackRunnable;Ljava/lang/Exception;)V

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
