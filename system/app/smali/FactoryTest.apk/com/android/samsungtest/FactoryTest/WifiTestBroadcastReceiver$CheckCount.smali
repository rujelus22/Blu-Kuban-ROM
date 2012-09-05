.class public Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;
.super Landroid/os/CountDownTimer;
.source "WifiTestBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;JJ)V
    .registers 6
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;

    .line 181
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 182
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 191
    .local v0, Result:B
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;

    const-string v2, "-- Sec Time Finished--- "

    #calls: Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->access$000(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->access$100()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 195
    const/4 v0, 0x1

    .line 204
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->sendAck(B)V

    .line 205
    return-void

    .line 197
    :cond_16
    invoke-static {}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->access$100()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 199
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public onTick(J)V
    .registers 7
    .parameter "millisUntilFinished"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver$CheckCount;->this$0:Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;

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

    #calls: Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;->access$000(Lcom/android/samsungtest/FactoryTest/WifiTestBroadcastReceiver;Ljava/lang/String;)V

    .line 210
    return-void
.end method
