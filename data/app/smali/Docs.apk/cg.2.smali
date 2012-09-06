.class public abstract Lcg;
.super Ldd;
.source "CancelableThread.java"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ldd;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcg;->a:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ldd;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcg;->a:Z

    .line 28
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcg;

    if-eqz v1, :cond_e

    .line 62
    check-cast v0, Lcg;

    .line 63
    invoke-virtual {v0}, Lcg;->a()V

    .line 67
    :goto_d
    return-void

    .line 65
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d
.end method

.method public static b()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 83
    instance-of v0, v1, Lcg;

    if-eqz v0, :cond_14

    move-object v0, v1

    .line 84
    check-cast v0, Lcg;

    .line 86
    invoke-virtual {v0}, Lcg;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    .line 95
    :goto_13
    return v0

    .line 91
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    .line 92
    goto :goto_13

    .line 95
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcg;->a:Z

    .line 40
    invoke-virtual {p0}, Lcg;->interrupt()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcg;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
