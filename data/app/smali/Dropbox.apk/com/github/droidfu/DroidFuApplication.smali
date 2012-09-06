.class public Lcom/github/droidfu/DroidFuApplication;
.super Landroid/app/Application;
.source "panda.py"


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/droidfu/DroidFuApplication;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Landroid/content/Context;
    .registers 3
    .parameter

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/github/droidfu/DroidFuApplication;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    .line 30
    if-nez v0, :cond_e

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_c

    .line 29
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/github/droidfu/DroidFuApplication;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
