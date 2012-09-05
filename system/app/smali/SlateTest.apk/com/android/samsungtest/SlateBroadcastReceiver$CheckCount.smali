.class public Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;
.super Landroid/os/CountDownTimer;
.source "SlateBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SlateBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/SlateBroadcastReceiver;JJ)V
    .registers 6
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    .line 1422
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1423
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1427
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$100(Lcom/android/samsungtest/SlateBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "--->8 Sec Time Finished--- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static {}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$400()Z

    move-result v0

    if-ne v0, v2, :cond_17

    .line 1430
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #calls: Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$500(Lcom/android/samsungtest/SlateBroadcastReceiver;I)V

    .line 1432
    :cond_17
    return-void
.end method

.method public onTick(J)V
    .registers 7
    .parameter "millisUntilFinished"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$100(Lcom/android/samsungtest/SlateBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->Left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    return-void
.end method
