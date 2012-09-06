.class LZx;
.super Ljava/lang/Object;
.source "IdleRateLimiter.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:LZw;


# direct methods
.method constructor <init>(LZw;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LZx;->a:LZw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, LZx;->a:LZw;

    monitor-enter v1

    .line 36
    :try_start_4
    iget-object v0, p0, LZx;->a:LZw;

    const/4 v2, 0x0

    invoke-static {v0, v2}, LZw;->a(LZw;Z)Z

    .line 37
    iget-object v0, p0, LZx;->a:LZw;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 38
    monitor-exit v1

    .line 39
    return v3

    .line 38
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method
