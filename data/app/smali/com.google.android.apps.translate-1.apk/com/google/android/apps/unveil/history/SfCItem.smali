.class public Lcom/google/android/apps/unveil/history/SfCItem;
.super Lcom/google/android/apps/unveil/history/ItemModel;
.source "SfCItem.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final id:Ljava/lang/String;

.field private final imageUri:Landroid/net/Uri;

.field private final orientation:I

.field private queryImage:Lcom/google/android/apps/unveil/env/Picture;

.field private queryImageLoaded:Z

.field private final queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/SfCItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/unveil/protocol/QueryResponse;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "queryResponse"
    .parameter "uri"
    .parameter "orientation"
    .parameter "id"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/ItemModel;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/unveil/history/SfCItem;->imageUri:Landroid/net/Uri;

    .line 40
    iput p4, p0, Lcom/google/android/apps/unveil/history/SfCItem;->orientation:I

    .line 41
    iput-object p5, p0, Lcom/google/android/apps/unveil/history/SfCItem;->id:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/unveil/history/SfCItem;
    .registers 15
    .parameter "context"
    .parameter "id"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$SfCResults;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 76
    .local v8, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 77
    .local v3, queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;
    const/4 v4, 0x0

    .line 78
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 80
    .local v5, orientation:I
    if-eqz v8, :cond_61

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 81
    const-string v1, "query_response"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 83
    .local v7, bytes:[B
    new-instance v11, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v11, inputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/unveil/protocol/QueryResponse;

    move-object v3, v0

    .line 85
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V

    .line 87
    const-string v1, "query_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, imageUri:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 90
    const-string v1, "orientation"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 92
    new-instance v1, Lcom/google/android/apps/unveil/history/SfCItem;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/unveil/history/SfCItem;-><init>(Landroid/content/Context;Lcom/google/android/apps/unveil/protocol/QueryResponse;Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_19 .. :try_end_5d} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5d} :catch_73

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    .end local v7           #bytes:[B
    .end local v10           #imageUri:Ljava/lang/String;
    .end local v11           #inputStream:Ljava/io/ObjectInputStream;
    :goto_60
    return-object v1

    .line 97
    :cond_61
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 99
    :goto_64
    sget-object v1, Lcom/google/android/apps/unveil/history/SfCItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to load search from camera result with id %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    invoke-virtual {v1, v2, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_60

    .line 94
    :catch_73
    move-exception v9

    .line 95
    .local v9, e:Ljava/lang/Exception;
    :try_start_74
    sget-object v1, Lcom/google/android/apps/unveil/history/SfCItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Can not load search by camera result"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v2, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_82

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_82
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getQueryImage()Lcom/google/android/apps/unveil/env/Picture;
    .registers 5

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryImage:Lcom/google/android/apps/unveil/env/Picture;

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryImageLoaded:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    if-nez v1, :cond_18

    .line 47
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/unveil/history/SfCItem;->imageUri:Landroid/net/Uri;

    iget v3, p0, Lcom/google/android/apps/unveil/history/SfCItem;->orientation:I

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/unveil/env/PictureFactory;->loadAndDownsample(Landroid/content/Context;Landroid/net/Uri;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryImage:Lcom/google/android/apps/unveil/env/Picture;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_28
    .catch Lcom/google/android/apps/unveil/env/PictureLoadingException; {:try_start_9 .. :try_end_15} :catch_1c

    .line 51
    :goto_15
    const/4 v1, 0x1

    :try_start_16
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryImageLoaded:Z

    .line 53
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryImage:Lcom/google/android/apps/unveil/env/Picture;
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_28

    monitor-exit p0

    return-object v1

    .line 48
    :catch_1c
    move-exception v0

    .line 49
    .local v0, e:Lcom/google/android/apps/unveil/env/PictureLoadingException;
    :try_start_1d
    sget-object v1, Lcom/google/android/apps/unveil/history/SfCItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to load query imge for search by camera result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_28

    goto :goto_15

    .line 45
    .end local v0           #e:Lcom/google/android/apps/unveil/env/PictureLoadingException;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getQueryResponse()Lcom/google/android/apps/unveil/protocol/QueryResponse;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResponseReceivedTimestamp()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SfCItem;->queryResponse:Lcom/google/android/apps/unveil/protocol/QueryResponse;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const-string v0, ""

    goto :goto_15
.end method
