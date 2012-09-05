.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;
.super Landroid/os/CountDownTimer;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 279
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .parameter "millisUntilFinished"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 275
    return-void
.end method
