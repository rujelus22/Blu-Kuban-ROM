.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;
.super Ljava/lang/Thread;
.source "ImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImagesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/apps/plus/service/ImagesCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache;)V
    .registers 4
    .parameter

    .prologue
    .line 375
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>.LoaderThread;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 349
    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mHandler:Landroid/os/Handler;

    .line 377
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->start()V

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 344
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Ljava/lang/Object;[BLjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>.LoaderThread;"
    .local p3, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v8, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Ljava/lang/Object;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;IILjava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    :cond_1c
    return-void
.end method

.method private put(Ljava/lang/Object;[BLjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter "imageBytes"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[B",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;[BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_15
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 515
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>.LoaderThread;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 516
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 482
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>.LoaderThread;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->setPriority(I)V

    .line 483
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 484
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$4;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 499
    return-void
.end method
