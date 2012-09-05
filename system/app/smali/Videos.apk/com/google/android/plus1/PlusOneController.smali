.class public Lcom/google/android/plus1/PlusOneController;
.super Ljava/lang/Object;
.source "PlusOneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/PlusOneController$Worker;,
        Lcom/google/android/plus1/PlusOneController$Editor;,
        Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;,
        Lcom/google/android/plus1/PlusOneController$ValueListener;
    }
.end annotation


# instance fields
.field private final mAccountStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOneStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mEditor:Lcom/google/android/plus1/PlusOneController$Editor;

.field private final mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

.field private final mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

.field private final mPlusOneListeners:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/google/android/plus1/PlusOneController$Worker;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 8
    .parameter "api"
    .parameter "store"
    .parameter "uiThreadExecutor"
    .parameter "backgroundExecutor"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/plus1/PlusOneMemoryStore;

    invoke-direct {v0}, Lcom/google/android/plus1/PlusOneMemoryStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    .line 76
    new-instance v0, Lcom/google/android/plus1/PlusOneStoreWrapper;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-direct {v0, v1, v2}, Lcom/google/android/plus1/PlusOneStoreWrapper;-><init>(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/PlusOneStore;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    .line 79
    new-instance v0, Lcom/google/android/plus1/PlusOneController$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/PlusOneController$Editor;-><init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneController$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mEditor:Lcom/google/android/plus1/PlusOneController$Editor;

    .line 81
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    .line 83
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    .line 99
    iput-object p4, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 101
    new-instance v0, Lcom/google/android/plus1/PlusOneController$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/plus1/PlusOneController$Worker;-><init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/plus1/PlusOneController;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedOperations(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/plus1/PlusOneController;Ljava/util/Map;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedValues(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/plus1/PlusOneController;Ljava/lang/Exception;Ljava/util/Set;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneController;->dispatchException(Ljava/lang/Exception;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onRemovedOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/plus1/PlusOneController;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->dispatchOptedInException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/plus1/PlusOneController;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOne;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V

    return-void
.end method

.method private dispatchException(Ljava/lang/Exception;Ljava/util/Set;)V
    .registers 6
    .parameter "e"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 363
    .local v1, uri:Landroid/net/Uri;
    invoke-direct {p0, v1, p1}, Lcom/google/android/plus1/PlusOneController;->publishError(Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_4

    .line 365
    .end local v1           #uri:Landroid/net/Uri;
    :cond_14
    return-void
.end method

.method private dispatchOptedInException(Ljava/lang/Exception;)V
    .registers 5
    .parameter "exception"

    .prologue
    .line 385
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 387
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 389
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    if-nez v1, :cond_1e

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 392
    :cond_1e
    invoke-interface {v1, p1}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    goto :goto_6

    .line 395
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    :cond_22
    return-void
.end method

.method private onLoadedOperations(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 327
    .local v3, newOperations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4, v3}, Lcom/google/android/plus1/PlusOneStore;->setOperations(Ljava/util/List;)V

    .line 332
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v0

    .line 333
    .local v0, allPlusOnes:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOne;

    invoke-direct {p0, v4}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V

    goto :goto_20

    .line 336
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :cond_36
    return-void
.end method

.method private onLoadedOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v2, p1}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 372
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 374
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 376
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    if-nez v1, :cond_23

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 379
    :cond_23
    invoke-interface {v1, p1}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    goto :goto_b

    .line 382
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    :cond_27
    return-void
.end method

.method private onLoadedValues(Ljava/util/Map;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, newValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 291
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/plus1/PlusOne;

    .line 295
    .local v5, value:Lcom/google/android/plus1/PlusOne;
    :try_start_20
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v6, v4, v5}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3a
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_20 .. :try_end_25} :catch_45

    .line 305
    :goto_25
    :try_start_25
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v6, v4}, Lcom/google/android/plus1/PlusOneStore;->getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;

    move-result-object v3

    .line 306
    .local v3, modifiedValue:Lcom/google/android/plus1/PlusOne;
    invoke-direct {p0, v3}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V
    :try_end_2e
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_25 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_50

    goto :goto_8

    .line 307
    .end local v3           #modifiedValue:Lcom/google/android/plus1/PlusOne;
    :catch_2f
    move-exception v0

    .line 308
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 296
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_3a
    move-exception v0

    .line 297
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 299
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 309
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_50
    move-exception v0

    .line 310
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 314
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #value:Lcom/google/android/plus1/PlusOne;
    :cond_5b
    return-void
.end method

.method private onRemovedOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 6
    .parameter "op"

    .prologue
    const/4 v2, 0x6

    .line 347
    :try_start_1
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-virtual {p1, v1}, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;->apply(Lcom/google/android/plus1/PlusOneEditor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_6} :catch_32

    .line 358
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v1, p1}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 359
    return-void

    .line 348
    :catch_c
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 350
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 352
    .end local v0           #e:Ljava/io/IOException;
    :catch_32
    move-exception v0

    .line 353
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private publishError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 4
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/plus1/PlusOneController;->publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V

    .line 262
    return-void
.end method

.method private publishPlusOne(Lcom/google/android/plus1/PlusOne;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 257
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/PlusOneController;->publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V

    .line 258
    return-void
.end method

.method private publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V
    .registers 9
    .parameter "uri"
    .parameter "value"
    .parameter "exception"

    .prologue
    .line 265
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v4, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 270
    .local v2, listeners:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;"
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 271
    .local v3, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 272
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    if-nez v1, :cond_26

    .line 273
    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 274
    :cond_26
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 275
    if-eqz p2, :cond_32

    .line 276
    invoke-interface {v1, p2}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    goto :goto_e

    .line 278
    :cond_32
    invoke-interface {v1, p3}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    goto :goto_e

    .line 282
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    .end local v3           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;"
    :cond_36
    return-void
.end method


# virtual methods
.method public addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOneStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    const/4 v4, 0x6

    .line 165
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    :try_start_b
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v2}, Lcom/google/android/plus1/PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v0

    .line 169
    .local v0, cachedValue:Lcom/google/android/plus1/PlusOneStatus;
    if-eqz v0, :cond_16

    .line 170
    invoke-interface {p1, v0}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_21
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_b .. :try_end_16} :catch_39

    .line 184
    :cond_16
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/PlusOneController$2;

    invoke-direct {v3, p0}, Lcom/google/android/plus1/PlusOneController$2;-><init>(Lcom/google/android/plus1/PlusOneController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void

    .line 172
    .end local v0           #cachedValue:Lcom/google/android/plus1/PlusOneStatus;
    :catch_21
    move-exception v1

    .line 173
    .local v1, e:Ljava/io/IOException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 174
    const-string v2, "PlusOneController"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 177
    .end local v1           #e:Ljava/io/IOException;
    :catch_39
    move-exception v1

    .line 178
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 179
    const-string v2, "PlusOneController"

    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addPlusOneListener(Ljava/util/Set;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .local p2, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    const/4 v7, 0x6

    .line 115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 116
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 123
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v5, p1}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, cachedValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V
    :try_end_3d
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1c .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_6e

    goto :goto_2a

    .line 127
    .end local v0           #cachedValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :catch_3e
    move-exception v1

    .line 128
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 129
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading cached +1\'s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :cond_63
    :goto_63
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$1;

    invoke-direct {v6, p0, p1}, Lcom/google/android/plus1/PlusOneController$1;-><init>(Lcom/google/android/plus1/PlusOneController;Ljava/util/Set;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void

    .line 131
    :catch_6e
    move-exception v1

    .line 132
    .local v1, e:Ljava/io/IOException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 133
    const-string v5, "PlusOneController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading cached +1\'s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public edit()Lcom/google/android/plus1/PlusOneEditor;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mEditor:Lcom/google/android/plus1/PlusOneController$Editor;

    return-object v0
.end method

.method public refreshAccountStatus()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/PlusOneController$4;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/PlusOneController$4;-><init>(Lcom/google/android/plus1/PlusOneController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public removeAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOneStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 200
    .local v1, referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    if-eq v1, p1, :cond_1c

    if-nez v1, :cond_6

    .line 201
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 204
    .end local v1           #referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    :cond_20
    return-void
.end method

.method public removePlusOneListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 154
    .local v2, referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    if-eq v2, p1, :cond_26

    if-nez v2, :cond_a

    .line 155
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 158
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;"
    .end local v2           #referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    :cond_2a
    return-void
.end method
