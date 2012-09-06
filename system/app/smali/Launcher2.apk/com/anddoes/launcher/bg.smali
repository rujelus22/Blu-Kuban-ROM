.class public final Lcom/anddoes/launcher/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Landroid/os/MessageQueue;

.field private c:Lcom/anddoes/launcher/bi;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    .line 35
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/bg;->b:Landroid/os/MessageQueue;

    .line 36
    new-instance v0, Lcom/anddoes/launcher/bi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/bi;-><init>(Lcom/anddoes/launcher/bg;B)V

    iput-object v0, p0, Lcom/anddoes/launcher/bg;->c:Lcom/anddoes/launcher/bi;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/bg;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 104
    instance-of v0, v0, Lcom/anddoes/launcher/bh;

    if-eqz v0, :cond_1c

    .line 105
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->b:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/anddoes/launcher/bg;->c:Lcom/anddoes/launcher/bi;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 110
    :cond_1b
    :goto_1b
    return-void

    .line 107
    :cond_1c
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->c:Lcom/anddoes/launcher/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bi;->sendEmptyMessage(I)Z

    goto :goto_1b
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 5
    .parameter

    .prologue
    .line 76
    iget-object v1, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/anddoes/launcher/bg;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 79
    invoke-virtual {p0}, Lcom/anddoes/launcher/bg;->a()V

    .line 76
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/anddoes/launcher/bh;

    invoke-direct {v0, p0, p1}, Lcom/anddoes/launcher/bh;-><init>(Lcom/anddoes/launcher/bg;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/bg;->a(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
