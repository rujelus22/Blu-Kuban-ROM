.class Lcom/google/android/apps/plus/service/ServiceThread$1;
.super Ljava/lang/Object;
.source "ServiceThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ServiceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ServiceThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ServiceThread$1;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 46
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ServiceThread$1;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    #getter for: Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/google/android/apps/plus/service/ServiceThread;->access$000(Lcom/google/android/apps/plus/service/ServiceThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2d

    .line 49
    :try_start_e
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ServiceThread$1;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    #getter for: Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;
    invoke-static {v2}, Lcom/google/android/apps/plus/service/ServiceThread;->access$100(Lcom/google/android/apps/plus/service/ServiceThread;)Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ServiceThread$1;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    #getter for: Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;
    invoke-static {v2}, Lcom/google/android/apps/plus/service/ServiceThread;->access$100(Lcom/google/android/apps/plus/service/ServiceThread;)Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;->processIntent(Landroid/content/Intent;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_0

    .line 52
    :catch_20
    move-exception v1

    .line 53
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2d
    return-void
.end method
