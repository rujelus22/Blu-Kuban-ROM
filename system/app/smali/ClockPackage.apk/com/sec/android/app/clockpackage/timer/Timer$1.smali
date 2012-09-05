.class Lcom/sec/android/app/clockpackage/timer/Timer$1;
.super Landroid/os/CountDownTimer;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/Timer;->setTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/Timer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/Timer;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/Timer$1;->this$0:Lcom/sec/android/app/clockpackage/timer/Timer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 559
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$002(J)J

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer$1;->this$0:Lcom/sec/android/app/clockpackage/timer/Timer;

    #calls: Lcom/sec/android/app/clockpackage/timer/Timer;->preLoadImage()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$200(Lcom/sec/android/app/clockpackage/timer/Timer;)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer$1;->this$0:Lcom/sec/android/app/clockpackage/timer/Timer;

    #calls: Lcom/sec/android/app/clockpackage/timer/Timer;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$100(Lcom/sec/android/app/clockpackage/timer/Timer;)V

    .line 566
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$300()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$002(J)J

    .line 567
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 568
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .parameter "millisUntilFinished"

    .prologue
    .line 552
    invoke-static {p1, p2}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$002(J)J

    .line 553
    sget-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pause:Z

    if-nez v0, :cond_c

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer$1;->this$0:Lcom/sec/android/app/clockpackage/timer/Timer;

    #calls: Lcom/sec/android/app/clockpackage/timer/Timer;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->access$100(Lcom/sec/android/app/clockpackage/timer/Timer;)V

    .line 556
    :cond_c
    return-void
.end method
