.class Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 63
    :cond_12
    const-string v1, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 66
    :cond_1f
    return-void
.end method
