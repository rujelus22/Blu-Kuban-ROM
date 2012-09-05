.class public Lcom/android/commands/monkey/MonkeyThrottleEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyThrottleEvent.java"


# instance fields
.field private mThrottle:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .parameter "throttle"

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 33
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    .line 34
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 10
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    const/4 v1, 0x1

    .line 39
    if-le p3, v1, :cond_23

    .line 40
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :cond_23
    :try_start_23
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29

    .line 49
    :goto_28
    return v1

    .line 44
    :catch_29
    move-exception v0

    .line 45
    .local v0, e1:Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "** Monkey interrupted in sleep."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    goto :goto_28
.end method
