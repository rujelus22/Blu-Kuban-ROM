.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;
.super Landroid/content/BroadcastReceiver;
.source "FunctionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 992
    monitor-enter p0

    const/4 v2, 0x0

    .line 993
    .local v2, mIsHeadsetPlugged:Z
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, action:Ljava/lang/String;
    const-string v5, "FunctionTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Functiontest] onReceiveIntent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 998
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_61

    move v2, v3

    .line 1001
    :cond_32
    :goto_32
    if-eqz v2, :cond_63

    .line 1002
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1003
    .local v1, ear:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1005
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$15;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v4, "32"

    const-string v5, "P"

    invoke-virtual {v3, v4, v5}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v3, "FunctionTest"

    const-string v4, "!! Headset Connected in FTA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_6b

    .line 1013
    .end local v1           #ear:Landroid/widget/Button;
    :goto_5f
    monitor-exit p0

    return-void

    :cond_61
    move v2, v4

    .line 998
    goto :goto_32

    .line 1011
    :cond_63
    :try_start_63
    const-string v3, "FunctionTest"

    const-string v4, "!! Headset Disconnected in FTA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6b

    goto :goto_5f

    .line 992
    .end local v0           #action:Ljava/lang/String;
    :catchall_6b
    move-exception v3

    monitor-exit p0

    throw v3
.end method
