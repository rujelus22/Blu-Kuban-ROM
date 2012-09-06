.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;
.super Ljava/lang/Thread;
.source "PhotoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/PhotoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPendingRunnables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TE;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/apps/plus/service/PhotoCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache;)V
    .registers 4
    .parameter

    .prologue
    .line 276
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 253
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->start()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->pollFirstEntry()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;III)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p3, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache;->access$400(Lcom/google/android/apps/plus/service/PhotoCache;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 317
    .local v2, cachedBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/Object;IIILcom/google/android/apps/plus/content/EsAccount;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->queueRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    :cond_26
    return-void
.end method

.method private declared-synchronized pollFirstEntry()Ljava/lang/Runnable;
    .registers 5

    .prologue
    .line 223
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    monitor-enter p0

    :try_start_1
    const-string v1, "EsPhotoCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 224
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_31

    .line 225
    const-string v1, "EsPhotoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of mPendingRunnables in LoaderThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_54

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3d

    .line 231
    const/4 v1, 0x0

    .line 236
    :goto_3b
    monitor-exit p0

    return-object v1

    .line 234
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, key:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_54

    goto :goto_3b

    .line 223
    .end local v0           #key:Ljava/lang/Object;,"TE;"
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private put(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 14
    .parameter
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method private declared-synchronized queueRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 6
    .parameter
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 212
    .local v0, found:Ljava/lang/Runnable;
    if-eqz v0, :cond_1b

    .line 213
    const-string v1, "EsPhotoCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 214
    const-string v1, "EsPhotoCache"

    const-string v2, "queueRunnable replaced Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 217
    :cond_1b
    monitor-exit p0

    return-void

    .line 211
    .end local v0           #found:Ljava/lang/Runnable;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 357
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->setPriority(I)V

    .line 358
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 359
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 371
    return-void
.end method
