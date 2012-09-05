.class public Lcom/google/android/youtube/videos/store/PurchaseStore;
.super Ljava/lang/Object;
.source "PurchaseStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;,
        Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;,
        Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;,
        Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
    }
.end annotation


# instance fields
.field private databaseHelper:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private posterHelper:Lcom/google/android/youtube/videos/store/PosterStore;

.field private final purchaseCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "executor"
    .parameter
    .parameter
    .parameter "database"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    .local p4, posterArtBytesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    new-instance v6, Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    const/16 v0, 0x64

    invoke-direct {v6, v0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/store/PurchaseStore;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/lang/String;Lcom/google/android/youtube/core/cache/Cache;)V

    .line 173
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/lang/String;Lcom/google/android/youtube/core/cache/Cache;)V
    .registers 11
    .parameter "context"
    .parameter "executor"
    .parameter
    .parameter
    .parameter "database"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    .local p4, posterArtBytesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    .local p6, purchaseCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->executor:Ljava/util/concurrent/Executor;

    .line 149
    const-string v0, "myPurchasesRequester cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 151
    new-instance v0, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;

    invoke-direct {v0, p1, p5}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->databaseHelper:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;

    .line 152
    new-instance v0, Lcom/google/android/youtube/videos/store/PosterStore;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "posters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1, p4}, Lcom/google/android/youtube/videos/store/PosterStore;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->posterHelper:Lcom/google/android/youtube/videos/store/PosterStore;

    .line 157
    iput-object p6, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->purchaseCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->filterPurchases(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->storePurchases(Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->invokeActivePurchaseCallback(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/store/PurchaseStore;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method static synthetic access$800([B)Lcom/google/android/youtube/core/model/Purchase;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/youtube/videos/store/PurchaseStore;->blobToPurchase([B)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method private static blobToPurchase([B)Lcom/google/android/youtube/core/model/Purchase;
    .registers 6
    .parameter "blob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 367
    .local v1, inputStream:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 369
    .local v2, objectInputStream:Ljava/io/ObjectInputStream;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Purchase;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_10} :catch_14

    .line 375
    .local v3, purchase:Lcom/google/android/youtube/core/model/Purchase;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    return-object v3

    .line 371
    .end local v3           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :catch_14
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_15
    new-instance v4, Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;

    invoke-direct {v4, v0}, Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;-><init>(Ljava/lang/RuntimeException;)V

    throw v4
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 375
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1b
    move-exception v4

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    throw v4
.end method

.method private filterPurchases(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, filteredPurchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Purchase;

    .line 344
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, v2, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v4, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-ne v3, v4, :cond_9

    iget-object v3, v2, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    if-eqz v3, :cond_9

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 348
    .end local v2           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_23
    return-object v0
.end method

.method private getPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;
    .registers 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 299
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v11, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->databaseHelper:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 301
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "purchases"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "purchase_id"

    aput-object v3, v2, v4

    const-string v3, "purchase"

    aput-object v3, v2, v6

    #getter for: Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereClause:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->access$500(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->whereArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->access$600(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, cursor:Landroid/database/Cursor;
    :goto_29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 309
    const/4 v1, 0x0

    :try_start_30
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, purchaseId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->purchaseCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v1, v10}, Lcom/google/android/youtube/core/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/model/Purchase;

    .line 311
    .local v9, purchase:Lcom/google/android/youtube/core/model/Purchase;
    if-nez v9, :cond_4c

    .line 312
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->blobToPurchase([B)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v9

    .line 313
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->purchaseCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v1, v10, v9}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    :cond_4c
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException; {:try_start_30 .. :try_end_4f} :catch_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_4f} :catch_58
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4f} :catch_56

    goto :goto_29

    .line 316
    .end local v9           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .end local v10           #purchaseId:Ljava/lang/String;
    :catch_50
    move-exception v1

    goto :goto_29

    .line 326
    :cond_52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 327
    return-object v11

    .line 322
    :catch_56
    move-exception v1

    goto :goto_29

    .line 319
    :catch_58
    move-exception v1

    goto :goto_29
.end method

.method private invokeActivePurchaseCallback(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TT;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, request:Ljava/lang/Object;,"TT;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TT;Lcom/google/android/youtube/core/model/Purchase;>;"
    .local p3, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Purchase;

    .line 250
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, v2, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v4, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v4, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-ne v3, v4, :cond_4

    .line 252
    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .end local v2           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :goto_1f
    return-void

    .line 256
    :cond_20
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v1, 0x0

    .line 257
    .local v1, inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;
    :goto_27
    new-instance v3, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;

    invoke-direct {v3, v1}, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;-><init>(Lcom/google/android/youtube/core/model/Purchase;)V

    invoke-interface {p2, p1, v3}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1f

    .line 256
    .end local v1           #inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_30
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Purchase;

    move-object v1, v3

    goto :goto_27
.end method

.method private static purchaseToBlob(Lcom/google/android/youtube/core/model/Purchase;)[B
    .registers 6
    .parameter "purchase"

    .prologue
    .line 380
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    .local v2, outputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v1, objectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_15

    .line 390
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 385
    .end local v1           #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_15
    move-exception v0

    .line 388
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Couldn\'t serialize purchase"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private storePurchases(Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V
    .registers 8
    .parameter "userAuth"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, purchases:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->databaseHelper:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Purchase;

    .line 333
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->purchaseCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    iget-object v3, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V

    goto :goto_a

    .line 336
    .end local v2           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_23
    return-void
.end method

.method private static writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 9
    .parameter "database"
    .parameter "account"
    .parameter "purchase"

    .prologue
    const/4 v2, 0x0

    .line 352
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "purchase_id"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "purchase_status"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Purchase$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "purchase_type"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Purchase$ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "purchase_expiration_time"

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    if-nez v1, :cond_4a

    move-object v1, v2

    :goto_2a
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    const-string v1, "video_id"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "purchase"

    invoke-static {p2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->purchaseToBlob(Lcom/google/android/youtube/core/model/Purchase;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 361
    const-string v1, "purchases"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 362
    return-void

    .line 356
    :cond_4a
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2a
.end method


# virtual methods
.method public getActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, "userAuth cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/UserAuth;

    .line 236
    .local v2, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "videoId cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 237
    .local v3, videoId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/store/PurchaseStore$2;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public getPoster(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->posterHelper:Lcom/google/android/youtube/videos/store/PosterStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore;->getBitmap(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 187
    return-void
.end method

.method public getStoredPosterBytes(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/lang/String;[B>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->posterHelper:Lcom/google/android/youtube/videos/store/PosterStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/store/PosterStore;->getStoredPosterBytes(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    .line 195
    return-void
.end method

.method public getStoredPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/store/PurchaseStore$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$4;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public syncActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "userAuth cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    .line 208
    .local v0, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "videoId cannot be null"

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    .local v1, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$1;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Landroid/util/Pair;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public syncPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$3;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method
