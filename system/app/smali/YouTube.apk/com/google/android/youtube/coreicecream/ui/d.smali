.class final Lcom/google/android/youtube/coreicecream/ui/d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/carousel/d;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Queue;

.field private d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/ArrayBlockingQueue;

.field private g:[I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 457
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 428
    iput-boolean v2, p0, Lcom/google/android/youtube/coreicecream/ui/d;->d:Z

    .line 458
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 459
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    .line 460
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 461
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I

    .line 463
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/coreicecream/ui/e;-><init>(Lcom/google/android/youtube/coreicecream/ui/d;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    .line 556
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/d;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private declared-synchronized a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 445
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I

    aput p2, v0, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 447
    :cond_a
    monitor-exit p0

    return-void

    .line 444
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 559
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 560
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->d:Z

    if-nez v0, :cond_11

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->d:Z

    .line 562
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    :goto_f
    monitor-exit v1

    return-void

    .line 564
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_f

    .line 566
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/d;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->i(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/d;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/ui/d;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/d;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/d;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/coreicecream/ui/d;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/d;->g(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/coreicecream/ui/d;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/coreicecream/ui/d;)Ljava/util/Queue;
    .registers 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/coreicecream/ui/d;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/d;->h(I)V

    return-void
.end method

.method private declared-synchronized g(I)I
    .registers 3
    .parameter

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I

    aget v0, v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(I)V
    .registers 3
    .parameter

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->g:[I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i(I)V
    .registers 5
    .parameter

    .prologue
    .line 570
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 571
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 572
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 573
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 574
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_9

    .line 575
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_9

    .line 578
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 4
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;

    .line 636
    return-void
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Landroid/os/Message;)V

    .line 620
    return-void
.end method

.method public final a(I[I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    return-void
.end method

.method public final b(I)V
    .registers 6
    .parameter

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Landroid/os/Message;)V

    .line 629
    return-void
.end method

.method public final c(I)V
    .registers 6
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Landroid/os/Message;)V

    .line 592
    return-void
.end method

.method public final d(I)V
    .registers 4
    .parameter

    .prologue
    .line 595
    mul-int/lit8 v0, p1, 0x2

    .line 596
    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->i(I)V

    .line 597
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/d;->a(II)V

    .line 598
    return-void
.end method

.method public final e(I)V
    .registers 6
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 602
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Landroid/os/Message;)V

    .line 604
    :cond_17
    return-void
.end method

.method public final f(I)V
    .registers 4
    .parameter

    .prologue
    .line 607
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 608
    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->i(I)V

    .line 609
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/d;->a(II)V

    .line 610
    return-void
.end method

.method public final onChanged()V
    .registers 5

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 587
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/d;->b:Landroid/os/Handler;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Landroid/os/Message;)V

    .line 588
    return-void
.end method
