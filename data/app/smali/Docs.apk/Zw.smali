.class public LZw;
.super Ljava/lang/Object;
.source "IdleRateLimiter.java"

# interfaces
.implements LZR;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private a:I

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/os/MessageQueue$IdleHandler;

.field private final a:Landroid/os/MessageQueue;

.field private a:Z

.field private final b:I

.field private b:Z


# direct methods
.method public constructor <init>(LFX;LeZ;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, LZx;

    invoke-direct {v0, p0}, LZx;-><init>(LZw;)V

    iput-object v0, p0, LZw;->a:Landroid/os/MessageQueue$IdleHandler;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LZw;->a:Landroid/os/Handler;

    .line 44
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, LZw;->a:Landroid/os/MessageQueue;

    .line 45
    iput v1, p0, LZw;->a:I

    .line 46
    iput-boolean v1, p0, LZw;->a:Z

    .line 47
    iput-boolean v1, p0, LZw;->b:Z

    .line 52
    sget-object v0, LeV;->i:LeV;

    invoke-interface {p2, v0}, LeZ;->a(LeV;)Z

    move-result v0

    iput-boolean v0, p0, LZw;->a:Z

    .line 53
    const-string v0, "maxIdleBackOff"

    const/16 v1, 0x2710

    invoke-interface {p1, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LZw;->b:I

    .line 55
    return-void
.end method

.method private declared-synchronized a()V
    .registers 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LZw;->b:Z

    if-nez v0, :cond_15

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, LZw;->b:Z

    .line 99
    iget-object v0, p0, LZw;->a:Landroid/os/MessageQueue;

    iget-object v1, p0, LZw;->a:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 102
    iget-object v0, p0, LZw;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 104
    :cond_15
    monitor-exit p0

    return-void

    .line 97
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LZw;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, LZw;->b:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized b()V
    .registers 7

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget v0, p0, LZw;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5e

    if-gtz v0, :cond_7

    .line 81
    :cond_5
    monitor-exit p0

    return-void

    .line 62
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 63
    iget v2, p0, LZw;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LZw;->a:I

    .line 64
    iget v2, p0, LZw;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 65
    invoke-direct {p0}, LZw;->a()V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_5e

    .line 68
    :cond_1a
    :try_start_1a
    iget v2, p0, LZw;->b:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_5e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_20} :catch_61

    .line 74
    :try_start_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double v0, v2, v0

    .line 75
    iget-boolean v2, p0, LZw;->a:Z

    if-eqz v2, :cond_5

    iget v2, p0, LZw;->b:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5

    .line 76
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exceeded Token waiting time"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v3, "IdleRateLimiter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting time exceeded expected limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " num item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LZw;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    throw v2
    :try_end_5e
    .catchall {:try_start_20 .. :try_end_5e} :catchall_5e

    .line 59
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :catch_61
    move-exception v0

    .line 70
    :try_start_62
    invoke-direct {p0}, LZw;->a()V

    .line 71
    throw v0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_5e
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 85
    monitor-enter p0

    :try_start_2
    iget v1, p0, LZw;->b:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1d

    if-gtz v1, :cond_8

    .line 94
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 89
    :cond_8
    :try_start_8
    iget v1, p0, LZw;->a:I

    if-lt v1, v0, :cond_20

    :goto_c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 90
    iget v0, p0, LZw;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LZw;->a:I

    .line 91
    iget v0, p0, LZw;->a:I

    if-eqz v0, :cond_6

    .line 92
    invoke-direct {p0}, LZw;->a()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    goto :goto_6

    .line 85
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_20
    const/4 v0, 0x0

    goto :goto_c
.end method
