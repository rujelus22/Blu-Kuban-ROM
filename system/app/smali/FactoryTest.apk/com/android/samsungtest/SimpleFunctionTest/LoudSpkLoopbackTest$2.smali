.class Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;
.super Landroid/content/BroadcastReceiver;
.source "LoudSpkLoopbackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)V
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 375
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 378
    .local v1, event:Landroid/view/KeyEvent;
    const-string v4, "Broadcast\'s action :"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoudSpkBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onPause :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z
    invoke-static {v6}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$408(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)I

    .line 383
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 384
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_79

    :goto_58
    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mIsHeadsetPlugged:Z
    invoke-static {v4, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;Z)Z

    .line 387
    :cond_5b
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 388
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$700(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    iget-object v3, v3, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loudSpkModeRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->DELAY:I
    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$600(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_7b

    .line 390
    :cond_77
    monitor-exit p0

    return-void

    :cond_79
    move v2, v3

    .line 384
    goto :goto_58

    .line 375
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #event:Landroid/view/KeyEvent;
    :catchall_7b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
