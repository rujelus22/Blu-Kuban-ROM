.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2175
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->access$1100(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_23

    .line 2178
    :try_start_e
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    iget-object v2, v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #calls: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->processIntent(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$1200(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_0

    .line 2179
    :catch_16
    move-exception v1

    .line 2180
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2184
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_23
    return-void
.end method
