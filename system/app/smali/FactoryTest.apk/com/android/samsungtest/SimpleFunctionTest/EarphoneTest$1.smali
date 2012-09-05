.class Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;
.super Landroid/content/BroadcastReceiver;
.source "EarphoneTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 118
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;

    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_39

    :goto_1a
    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z
    invoke-static {v3, v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->access$002(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;Z)Z

    .line 122
    :cond_1d
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 124
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Earphone Connected !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const-string v1, "EarphoneTest"

    const-string v2, "!! Headset Connected in Ear"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_4e

    .line 130
    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    move v1, v2

    .line 118
    goto :goto_1a

    .line 127
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Earphone Disconnected !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const-string v1, "EarphoneTest"

    const-string v2, "!! Headset Disconnected in Ear"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4e

    goto :goto_37

    .line 115
    .end local v0           #action:Ljava/lang/String;
    :catchall_4e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
