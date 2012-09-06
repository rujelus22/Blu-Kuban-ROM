.class final Lcom/anddoes/launcher/bi;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bg;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/bg;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/bg;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/bi;-><init>(Lcom/anddoes/launcher/bg;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-static {v0}, Lcom/anddoes/launcher/bg;->a(Lcom/anddoes/launcher/bg;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 42
    :try_start_7
    iget-object v0, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-static {v0}, Lcom/anddoes/launcher/bg;->a(Lcom/anddoes/launcher/bg;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 43
    monitor-exit v1

    .line 48
    :goto_14
    return-void

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-static {v0}, Lcom/anddoes/launcher/bg;->a(Lcom/anddoes/launcher/bg;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 41
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_36

    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 48
    iget-object v0, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-static {v0}, Lcom/anddoes/launcher/bg;->a(Lcom/anddoes/launcher/bg;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 49
    :try_start_2c
    iget-object v0, p0, Lcom/anddoes/launcher/bi;->a:Lcom/anddoes/launcher/bg;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bg;->a()V

    .line 48
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_33

    goto :goto_14

    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final queueIdle()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/bi;->handleMessage(Landroid/os/Message;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
