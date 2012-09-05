.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;
.super Landroid/os/CountDownTimer;
.source "AlarmSmartAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.SMARTALARM_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->stopSelf()V

    .line 187
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->access$108(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)I

    .line 176
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 177
    const-string v0, "AlarmSmartAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..mTimer.. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_29
    return-void
.end method
