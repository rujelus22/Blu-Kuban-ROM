.class Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$3;
.super Landroid/os/CountDownTimer;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$3;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 400
    const-string v0, "Stopwatch"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 392
    const-wide/32 v0, 0x157529f6

    sub-long/2addr v0, p1

    sput-wide v0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->elapsedMillis:J

    .line 393
    invoke-static {}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->access$100()Z

    move-result v0

    if-nez v0, :cond_11

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$3;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->updateTimeView()V

    .line 396
    :cond_11
    return-void
.end method
