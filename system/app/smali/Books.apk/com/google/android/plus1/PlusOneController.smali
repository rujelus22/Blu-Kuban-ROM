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

.field private final mProfileImageClient:Lcom/google/android/plus1/ProfileImageClient;

.field private final mProfileImageListeners:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mWorker:Lcom/google/android/plus1/PlusOneController$Worker;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 11
    .parameter "api"
    .parameter "store"
    .parameter "uiThreadExecutor"
    .parameter "backgroundExecutor"

    .prologue
    .line 103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/PlusOneController;-><init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/plus1/ProfileImageClient;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/plus1/ProfileImageClient;)V
    .registers 9
    .parameter "api"
    .parameter "store"
    .parameter "uiThreadExecutor"
    .parameter "backgroundExecutor"
    .parameter "profileImageClient"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/plus1/PlusOneMemoryStore;

    invoke-direct {v0}, Lcom/google/android/plus1/PlusOneMemoryStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    .line 77
    new-instance v0, Lcom/google/android/plus1/PlusOneStoreWrapper;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-direct {v0, v1, v2}, Lcom/google/android/plus1/PlusOneStoreWrapper;-><init>(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/PlusOneStore;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    .line 80
    new-instance v0, Lcom/google/android/plus1/PlusOneController$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/PlusOneController$Editor;-><init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneController$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mEditor:Lcom/google/android/plus1/PlusOneController$Editor;

    .line 82
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    .line 86
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageListeners:Lcom/google/common/collect/Multimap;

    .line 118
    iput-object p4, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 119
    new-instance v0, Lcom/google/android/plus1/PlusOneController$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/plus1/PlusOneController$Worker;-><init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;

    .line 120
    iput-object p5, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageClient:Lcom/google/android/plus1/ProfileImageClient;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOne;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/plus1/PlusOneController;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedOperations(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/plus1/PlusOneController;Ljava/util/Map;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedValues(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/plus1/PlusOneController;Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneController;->publishError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onRemovedOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->onLoadedOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/plus1/PlusOneController;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->publishOptedInError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/ProfileImageClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageClient:Lcom/google/android/plus1/ProfileImageClient;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneController;->publishProfileImage(Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/plus1/PlusOneController;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    return-object v0
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
    .line 425
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 426
    .local v3, newOperations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4, v3}, Lcom/google/android/plus1/PlusOneStore;->setOperations(Ljava/util/List;)V

    .line 431
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v4}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v0

    .line 432
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

    .line 433
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOne;

    invoke-direct {p0, v4}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V

    goto :goto_20

    .line 435
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :cond_36
    return-void
.end method

.method private onLoadedOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneController;->publishOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 466
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
    .line 388
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

    .line 389
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 390
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/plus1/PlusOne;

    .line 394
    .local v5, value:Lcom/google/android/plus1/PlusOne;
    :try_start_20
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v6, v4, v5}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3a
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_20 .. :try_end_25} :catch_45

    .line 404
    :goto_25
    :try_start_25
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v6, v4}, Lcom/google/android/plus1/PlusOneStore;->getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;

    move-result-object v3

    .line 405
    .local v3, modifiedValue:Lcom/google/android/plus1/PlusOne;
    invoke-direct {p0, v3}, Lcom/google/android/plus1/PlusOneController;->publishPlusOne(Lcom/google/android/plus1/PlusOne;)V
    :try_end_2e
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_25 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_50

    goto :goto_8

    .line 406
    .end local v3           #modifiedValue:Lcom/google/android/plus1/PlusOne;
    :catch_2f
    move-exception v0

    .line 407
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 395
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_3a
    move-exception v0

    .line 396
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 397
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 398
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 408
    .end local v0           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :catch_50
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 413
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

    .line 446
    :try_start_1
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-virtual {p1, v1}, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;->apply(Lcom/google/android/plus1/PlusOneEditor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_6} :catch_32

    .line 457
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v1, p1}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 458
    return-void

    .line 447
    :catch_c
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
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

    .line 451
    .end local v0           #e:Ljava/io/IOException;
    :catch_32
    move-exception v0

    .line 452
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
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
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/plus1/PlusOneController;->publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V

    .line 324
    return-void
.end method

.method private publishOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/PlusOneController;->publishOptedInOrError(Lcom/google/android/plus1/PlusOneStatus;Ljava/lang/Exception;)V

    .line 348
    return-void
.end method

.method private publishOptedInError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/plus1/PlusOneController;->publishOptedInOrError(Lcom/google/android/plus1/PlusOneStatus;Ljava/lang/Exception;)V

    .line 352
    return-void
.end method

.method private publishOptedInOrError(Lcom/google/android/plus1/PlusOneStatus;Ljava/lang/Exception;)V
    .registers 7
    .parameter "value"
    .parameter "exception"

    .prologue
    .line 356
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 357
    .local v2, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 358
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    if-nez v1, :cond_24

    .line 359
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 360
    :cond_24
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 361
    if-eqz p1, :cond_32

    .line 362
    invoke-interface {v1, p1}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    goto :goto_a

    .line 364
    :cond_32
    invoke-interface {v1, p2}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    goto :goto_a

    .line 368
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    .end local v2           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;"
    :cond_36
    return-void
.end method

.method private publishPlusOne(Lcom/google/android/plus1/PlusOne;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 319
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/PlusOneController;->publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V

    .line 320
    return-void
.end method

.method private publishPlusOneOrError(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;Ljava/lang/Exception;)V
    .registers 9
    .parameter "uri"
    .parameter "value"
    .parameter "exception"

    .prologue
    .line 327
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v4, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 332
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

    .line 333
    .local v3, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 334
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    if-nez v1, :cond_26

    .line 335
    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 336
    :cond_26
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 337
    if-eqz p2, :cond_32

    .line 338
    invoke-interface {v1, p2}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    goto :goto_e

    .line 340
    :cond_32
    invoke-interface {v1, p3}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    goto :goto_e

    .line 344
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    .end local v3           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;"
    :cond_36
    return-void
.end method

.method private publishProfileImage(Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "person"
    .parameter "value"

    .prologue
    .line 371
    iget-object v4, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v4, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 373
    .local v2, listeners:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;>;>;"
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 374
    .local v3, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 375
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    if-nez v1, :cond_26

    .line 376
    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 377
    :cond_26
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 378
    invoke-interface {v1, p2}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    goto :goto_e

    .line 381
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    .end local v3           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;>;"
    :cond_30
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

    .line 184
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    :try_start_b
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v2}, Lcom/google/android/plus1/PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v0

    .line 188
    .local v0, cachedValue:Lcom/google/android/plus1/PlusOneStatus;
    if-eqz v0, :cond_16

    .line 189
    invoke-interface {p1, v0}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_21
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_b .. :try_end_16} :catch_39

    .line 203
    :cond_16
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/plus1/PlusOneController$2;

    invoke-direct {v3, p0}, Lcom/google/android/plus1/PlusOneController$2;-><init>(Lcom/google/android/plus1/PlusOneController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void

    .line 191
    .end local v0           #cachedValue:Lcom/google/android/plus1/PlusOneStatus;
    :catch_21
    move-exception v1

    .line 192
    .local v1, e:Ljava/io/IOException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 193
    const-string v2, "PlusOneController"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 196
    .end local v1           #e:Ljava/io/IOException;
    :catch_39
    move-exception v1

    .line 197
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v2, "PlusOneController"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 198
    const-string v2, "PlusOneController"

    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
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

    .line 134
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

    .line 135
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 142
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mMemoryCacheWrapper:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v5, p1}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 143
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

    .line 144
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V
    :try_end_3d
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1c .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_6e

    goto :goto_2a

    .line 146
    .end local v0           #cachedValues:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :catch_3e
    move-exception v1

    .line 147
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 148
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

    .line 156
    .end local v1           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :cond_63
    :goto_63
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/plus1/PlusOneController$1;

    invoke-direct {v6, p0, p1}, Lcom/google/android/plus1/PlusOneController$1;-><init>(Lcom/google/android/plus1/PlusOneController;Ljava/util/Set;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void

    .line 150
    :catch_6e
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    const-string v5, "PlusOneController"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 152
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
    .line 124
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mEditor:Lcom/google/android/plus1/PlusOneController$Editor;

    return-object v0
.end method

.method public refreshAccountStatus()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/PlusOneController$5;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/PlusOneController$5;-><init>(Lcom/google/android/plus1/PlusOneController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public refreshPlusOnes(Ljava/util/Set;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/PlusOneController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/plus1/PlusOneController$4;-><init>(Lcom/google/android/plus1/PlusOneController;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
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
    .line 215
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController;->mAccountStatusListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;>;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 219
    .local v1, referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOneStatus;>;"
    if-eq v1, p1, :cond_1c

    if-nez v1, :cond_6

    .line 220
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 223
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
    .line 168
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mPlusOneListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 173
    .local v2, referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    if-eq v2, p1, :cond_26

    if-nez v2, :cond_a

    .line 174
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 177
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;>;>;"
    .end local v2           #referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Lcom/google/android/plus1/PlusOne;>;"
    :cond_2a
    return-void
.end method

.method public removeProfileImageListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageClient:Lcom/google/android/plus1/ProfileImageClient;

    if-nez v3, :cond_5

    .line 266
    :cond_4
    return-void

    .line 257
    :cond_5
    iget-object v3, p0, Lcom/google/android/plus1/PlusOneController;->mProfileImageListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/plus1/PlusOnePerson;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;>;>;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/plus1/PlusOnePerson;Ljava/lang/ref/Reference<Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 262
    .local v2, referent:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    if-eq v2, p1, :cond_2b

    if-nez v2, :cond_f

    .line 263
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f
.end method

.method public sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    .registers 4
    .parameter "completionCallback"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/PlusOneController$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/plus1/PlusOneController$6;-><init>(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
