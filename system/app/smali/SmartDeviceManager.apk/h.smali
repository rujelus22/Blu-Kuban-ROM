.class public Lh;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh$a;
    }
.end annotation


# static fields
.field private static c:Lh;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lh;->a:Landroid/content/Context;

    .line 50
    new-instance v0, Lh$a;

    invoke-direct {v0, p0}, Lh$a;-><init>(Lh;)V

    invoke-virtual {v0}, Lh$a;->start()V

    .line 52
    monitor-enter p0

    .line 53
    :goto_12
    :try_start_12
    iget-object v0, p0, Lh;->b:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1e

    if-nez v0, :cond_1c

    .line 55
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_12

    .line 57
    :catch_1a
    move-exception v0

    goto :goto_12

    .line 59
    :cond_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    sget-object v0, Lh;->c:Lh;

    if-nez v0, :cond_13

    const-class v0, Lh;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lh;->c:Lh;

    if-nez v1, :cond_12

    new-instance v1, Lh;

    invoke-direct {v1, p0}, Lh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lh;->c:Lh;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_20

    .line 30
    :cond_13
    sget-object v0, Lh;->c:Lh;

    new-instance v1, Lh$1;

    invoke-direct {v1, v0, p1}, Lh$1;-><init>(Lh;Ljava/lang/String;)V

    iget-object v0, v0, Lh;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void

    .line 29
    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method
