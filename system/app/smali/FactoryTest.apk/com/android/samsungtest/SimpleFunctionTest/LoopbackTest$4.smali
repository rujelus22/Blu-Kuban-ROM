.class Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;
.super Landroid/content/BroadcastReceiver;
.source "LoopbackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    .registers 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

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

    .line 547
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 550
    .local v1, event:Landroid/view/KeyEvent;
    const-string v4, "LoopbackTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast\'s action :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v4, "LoopbackTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "onPause :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z
    invoke-static {v6}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 554
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_97

    :goto_62
    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z
    invoke-static {v4, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$402(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z

    .line 555
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 556
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const/4 v3, 0x1

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z
    invoke-static {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z

    .line 563
    :cond_73
    :goto_73
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 564
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 565
    const-string v2, "LoopbackTest"

    const-string v3, "!! Headset Connected in Loopback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const/4 v3, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z
    invoke-static {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$602(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z

    .line 568
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startEarphoneLoop()V
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$700(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_a7

    .line 582
    :cond_95
    :goto_95
    monitor-exit p0

    return-void

    :cond_97
    move v2, v3

    .line 554
    goto :goto_62

    .line 559
    :cond_99
    :try_start_99
    const-string v2, "com.android.LoopbackTest.Stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 560
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->finish()V
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_a7

    goto :goto_73

    .line 547
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #event:Landroid/view/KeyEvent;
    :catchall_a7
    move-exception v2

    monitor-exit p0

    throw v2

    .line 570
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #event:Landroid/view/KeyEvent;
    :cond_aa
    :try_start_aa
    const-string v2, "LoopbackTest"

    const-string v3, "!! Headset Disconnected in Loopback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const/4 v3, 0x1

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z
    invoke-static {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$602(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z

    .line 575
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 576
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const/4 v3, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z
    invoke-static {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z

    .line 578
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onFinish()V
    :try_end_ca
    .catchall {:try_start_aa .. :try_end_ca} :catchall_a7

    goto :goto_95
.end method
