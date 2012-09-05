.class Lcom/google/android/apps/books/app/BooksImageManager;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;,
        Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;
    }
.end annotation


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/books/common/ImageCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageCache:Lcom/google/android/apps/books/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;)V
    .registers 12
    .parameter "resolver"
    .parameter "responseGetter"

    .prologue
    const/4 v1, 0x2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mResolver:Landroid/content/ContentResolver;

    .line 80
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 82
    new-instance v0, Lcom/google/android/apps/books/util/SimpleCache;

    const/16 v2, 0x20

    const/16 v3, 0x100

    const/high16 v4, 0x3f40

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/books/util/SimpleCache;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    .line 85
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 86
    .local v6, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x2

    .line 87
    .local v8, poolSize:I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/google/android/apps/books/app/BooksImageManager$ImageLoaderThreadFactory;-><init>(Lcom/google/android/apps/books/app/BooksImageManager$1;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbackHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/BooksImageManager;)Lcom/google/android/apps/books/net/ResponseGetter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/BooksImageManager;)Lcom/google/android/apps/books/util/SimpleCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/app/BooksImageManager;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/BooksImageManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static asList(Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, source:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static isRemoteUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 259
    if-eqz p0, :cond_18

    .line 260
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, scheme:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    .line 263
    .end local v0           #scheme:Ljava/lang/String;
    :cond_18
    return v1
.end method


# virtual methods
.method public addCallback(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)Z
    .registers 7
    .parameter "uri"
    .parameter "callback"

    .prologue
    .line 172
    const-string v1, "BooksImageManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 173
    const-string v1, "BooksImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding image callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_21
    if-nez p1, :cond_2b

    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2b
    if-nez p2, :cond_35

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 182
    .local v0, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    if-nez v0, :cond_4a

    .line 183
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 184
    .restart local v0       #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_4a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v1, 0x1

    return v1
.end method

.method public cancelCallback(Lcom/google/android/apps/books/common/ImageCallback;)V
    .registers 8
    .parameter "callback"

    .prologue
    .line 191
    const-string v3, "BooksImageManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 192
    const-string v3, "BooksImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling image callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_21
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 195
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 196
    .local v0, callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 198
    .end local v0           #callbacks:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/books/common/ImageCallback;>;"
    .end local v2           #uri:Landroid/net/Uri;
    :cond_43
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/SimpleCache;->clear()V

    .line 155
    return-void
.end method

.method public getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
    .registers 13
    .parameter "uri"
    .parameter "ensurer"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    if-nez p1, :cond_a

    .line 95
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 101
    :cond_a
    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mImageCache:Lcom/google/android/apps/books/util/SimpleCache;

    invoke-virtual {v8, p1}, Lcom/google/android/apps/books/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    move v1, v6

    .line 104
    .local v1, bitmapExists:Z
    :goto_15
    iget-object v8, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 105
    .local v5, taskExists:Z
    if-nez v1, :cond_33

    if-nez v5, :cond_33

    move v3, v6

    .line 106
    .local v3, newTaskRequired:Z
    :goto_20
    if-eqz p3, :cond_35

    move v2, v6

    .line 108
    .local v2, callbackRequired:Z
    :goto_23
    if-eqz v1, :cond_37

    .line 109
    if-eqz v2, :cond_2b

    .line 110
    const/4 v6, 0x0

    invoke-interface {p3, v0, v6}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 112
    :cond_2b
    new-instance v6, Lcom/google/android/apps/books/common/NullImageFuture;

    invoke-direct {v6}, Lcom/google/android/apps/books/common/NullImageFuture;-><init>()V

    .line 123
    :goto_30
    return-object v6

    .end local v1           #bitmapExists:Z
    .end local v2           #callbackRequired:Z
    .end local v3           #newTaskRequired:Z
    .end local v5           #taskExists:Z
    :cond_31
    move v1, v7

    .line 103
    goto :goto_15

    .restart local v1       #bitmapExists:Z
    .restart local v5       #taskExists:Z
    :cond_33
    move v3, v7

    .line 105
    goto :goto_20

    .restart local v3       #newTaskRequired:Z
    :cond_35
    move v2, v7

    .line 106
    goto :goto_23

    .line 115
    .restart local v2       #callbackRequired:Z
    :cond_37
    if-eqz v3, :cond_4d

    .line 116
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v4, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/android/apps/books/app/BooksImageManager$ImageTask;-><init>(Lcom/google/android/apps/books/app/BooksImageManager;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Landroid/net/Uri;)V

    .line 118
    .local v4, task:Ljava/lang/Runnable;
    if-eqz v2, :cond_48

    .line 119
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/books/app/BooksImageManager;->addCallback(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)Z

    .line 121
    :cond_48
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksImageManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .end local v4           #task:Ljava/lang/Runnable;
    :cond_4d
    new-instance v6, Lcom/google/android/apps/books/app/BooksImageManager$1;

    invoke-direct {v6, p0, p3}, Lcom/google/android/apps/books/app/BooksImageManager$1;-><init>(Lcom/google/android/apps/books/app/BooksImageManager;Lcom/google/android/apps/books/common/ImageCallback;)V

    goto :goto_30
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksImageManager;->clear()V

    .line 148
    return-void
.end method
