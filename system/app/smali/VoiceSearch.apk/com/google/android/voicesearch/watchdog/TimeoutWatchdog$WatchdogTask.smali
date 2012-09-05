.class Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;
.super Ljava/lang/Object;
.source "TimeoutWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchdogTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;->this$0:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;-><init>(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;->this$0:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    #getter for: Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeoutTimestamp:J
    invoke-static {v2}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->access$100(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;->this$0:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    #getter for: Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->access$200(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    :goto_17
    return-void

    .line 97
    :cond_18
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;->this$0:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    #calls: Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->scheduleTask()V
    invoke-static {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->access$300(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)V

    goto :goto_17
.end method
