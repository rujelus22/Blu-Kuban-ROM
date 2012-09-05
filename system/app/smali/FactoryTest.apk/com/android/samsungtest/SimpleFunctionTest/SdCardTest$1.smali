.class Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;
.super Landroid/content/BroadcastReceiver;
.source "SdCardTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 119
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    const-string v1, "24"

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_16
    const-string v0, "SdCardTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!! SdCard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->access$084(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->access$084(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->text:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 126
    monitor-exit p0

    return-void

    .line 118
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method
