.class public Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;
.super Ljava/lang/Object;
.source "CollectionVolumesTableUpSynchronizer.java"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mCollectionId:J

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Landroid/accounts/Account;J)V
    .registers 8
    .parameter "synchronizable"
    .parameter "responseGetter"
    .parameter "apiaryClient"
    .parameter "account"
    .parameter "collectionId"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p5, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mCollectionId:J

    .line 60
    const-string v0, "missing synchronizable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    .line 61
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 62
    const-string v0, "missing apiaryExecutor"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryClient;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 63
    const-string v0, "missing account"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    .line 64
    return-void
.end method

.method private queryForUpsyncValues()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->queryAllForUpsync()Landroid/database/Cursor;

    move-result-object v0

    .line 181
    .local v0, allCursor:Landroid/database/Cursor;
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 183
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 184
    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v1

    .line 186
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 190
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_22
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v2       #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private upsync(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v2, "volume_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, volumeId:Ljava/lang/String;
    const-string v2, "missing volumeId"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "dirty"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 78
    .local v0, dirty:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 79
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncAdd(Ljava/lang/String;)V

    .line 85
    :goto_20
    return-void

    .line 80
    :cond_21
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 81
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncDelete(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_20

    .line 83
    :cond_31
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dirty in content values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private upsyncAdd(Ljava/lang/String;)V
    .registers 2
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncAddUsingApiary(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private upsyncAddUsingApiary(Ljava/lang/String;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forAddVolumeToMyEBooksShelf(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 154
    const-string v1, "CollVolTableUpSync"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 155
    const-string v1, "CollVolTableUpSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding volume using request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3e

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    .line 160
    return-void

    .line 158
    nop

    :array_3e
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private upsyncDelete(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "volumeId"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncDeleteUsingApiary(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 93
    return-void
.end method

.method private upsyncDeleteUsingApiary(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/books/api/ApiaryClient;->getSessionKeyVersionFor(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forReleaseDownloadAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 109
    const-string v1, "CollVolTableUpSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing license using request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRemovingVolumeFromMyEBooksShelf(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 117
    const-string v1, "CollVolTableUpSync"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 118
    const-string v1, "CollVolTableUpSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting volume using request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_5d
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    new-array v4, v5, [I

    fill-array-data v4, :array_7e

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->delete(Ljava/util/Collection;)V

    .line 124
    return-void

    .line 121
    nop

    :array_7e
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public upsync()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->queryForUpsyncValues()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 69
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsync(Landroid/content/ContentValues;)V

    goto :goto_8

    .line 71
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_18
    return-void
.end method
