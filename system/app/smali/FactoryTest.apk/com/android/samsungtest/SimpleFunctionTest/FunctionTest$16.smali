.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;
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
    .line 1020
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, action:Ljava/lang/String;
    const-string v2, "FunctionTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Functiontest] onReceiveIntent2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1027
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1028
    .local v1, sd_card:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1030
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$16;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v3, "24"

    const-string v4, "P"

    invoke-virtual {v2, v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v2, "FunctionTest"

    const-string v3, "!! Check Intent When the media scanner has finished scanning a directory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 1033
    .end local v1           #sd_card:Landroid/widget/Button;
    :cond_50
    monitor-exit p0

    return-void

    .line 1022
    .end local v0           #action:Ljava/lang/String;
    :catchall_52
    move-exception v2

    monitor-exit p0

    throw v2
.end method
