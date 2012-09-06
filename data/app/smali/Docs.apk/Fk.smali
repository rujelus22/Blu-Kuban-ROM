.class public LFk;
.super Ljava/lang/Object;
.source "JSVMTimer.java"


# instance fields
.field private final a:LFo;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/os/MessageQueue;

.field private final a:Ljava/util/Timer;

.field private a:Ljava/util/TimerTask;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(LFo;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LFk;->a:Landroid/os/Handler;

    .line 41
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, LFk;->a:Landroid/os/MessageQueue;

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, LFk;->a:Ljava/util/Timer;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, LFk;->a:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LFk;->b:Z

    .line 57
    iput-object p1, p0, LFk;->a:LFo;

    .line 58
    invoke-virtual {p0, p2}, LFk;->a(Z)V

    .line 59
    return-void
.end method

.method static synthetic a(LFk;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LFk;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(LFk;)Landroid/os/MessageQueue;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LFk;->a:Landroid/os/MessageQueue;

    return-object v0
.end method

.method static synthetic a(LFk;)V
    .registers 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, LFk;->d()V

    return-void
.end method

.method static synthetic a(LFk;)Z
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, LFk;->a:Z

    return v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 166
    iget-boolean v0, p0, LFk;->b:Z

    if-eqz v0, :cond_8

    .line 176
    :goto_7
    return-void

    .line 170
    :cond_8
    iget-object v0, p0, LFk;->a:LFo;

    invoke-virtual {p0}, LFk;->a()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, LFo;->invokeTimer(D)I

    move-result v0

    .line 171
    if-ltz v0, :cond_1c

    iget-boolean v1, p0, LFk;->b:Z

    if-nez v1, :cond_1c

    .line 172
    invoke-virtual {p0, v0}, LFk;->a(I)V

    goto :goto_7

    .line 174
    :cond_1c
    const-string v1, "JSVMTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public a()D
    .registers 3

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, LFk;->b:Z

    .line 78
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 83
    :cond_f
    iget-object v0, p0, LFk;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 84
    return-void
.end method

.method public declared-synchronized a(I)V
    .registers 6
    .parameter

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LFk;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-eqz v0, :cond_7

    .line 161
    :goto_5
    monitor-exit p0

    return-void

    .line 132
    :cond_7
    :try_start_7
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    .line 133
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 137
    :cond_13
    new-instance v0, LFl;

    invoke-direct {v0, p0}, LFl;-><init>(LFk;)V

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 159
    const-string v0, "JSVMTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, LFk;->a:Ljava/util/Timer;

    iget-object v1, p0, LFk;->a:Ljava/util/TimerTask;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3b

    goto :goto_5

    .line 127
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, LFk;->a:Z

    .line 70
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, LFk;->b:Z

    .line 95
    invoke-virtual {p0, v0}, LFk;->a(I)V

    .line 96
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, LFk;->a:Ljava/util/TimerTask;

    .line 109
    :cond_c
    iget-object v0, p0, LFk;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 110
    return-void
.end method
