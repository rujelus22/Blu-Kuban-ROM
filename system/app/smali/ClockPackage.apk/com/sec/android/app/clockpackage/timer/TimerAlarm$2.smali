.class Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;
.super Landroid/os/Handler;
.source "TimerAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x3ec

    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v4, :cond_7

    .line 116
    :goto_6
    return-void

    .line 105
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->activityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.twlauncher/.Launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_6

    .line 111
    :catch_2c
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TimerAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method
