.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;
.super Landroid/os/CountDownTimer;
.source "AlarmSmartAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 211
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .parameter "millisUntilFinished"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateDisplay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 207
    return-void
.end method
