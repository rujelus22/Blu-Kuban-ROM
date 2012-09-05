.class public Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;
.super Ljava/lang/Object;
.source "VolumeOverviewFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;)V
    .registers 5
    .parameter "resolver"
    .parameter "responseGetter"
    .parameter "apiaryClient"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "missing ContentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 62
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 63
    iput-object p3, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 64
    return-void
.end method

.method private fetchUsingApiary(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-static {p2}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forFetchVolume(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/api/ApiaryClient;->makeGetRequest(Lcom/google/api/client/googleapis/GoogleUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    const-class v2, Lcom/google/android/apps/books/api/ApiaryVolume;

    new-array v3, v4, [I

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolume;

    .line 121
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/ApiaryVolume;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V
    .registers 17
    .parameter "account"
    .parameter "collectionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p3, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 159
    .local v5, millis:J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 161
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "buy_url"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 163
    const-string v8, "buy_url"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 169
    :cond_21
    const-string v8, "viewability"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 170
    .local v3, hasViewability:Z
    const-string v8, "open_access"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 171
    .local v2, hasOpenAccess:Z
    const-string v8, "buy_url"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 172
    .local v1, hasBuyUrl:Z
    if-ne v3, v2, :cond_37

    if-eq v3, v1, :cond_56

    .line 173
    :cond_37
    const-string v8, "VolumeOverviewFetcher"

    const-string v9, ""

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incomplete access information in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_56
    const-string v8, "cover_url"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, coverUrl:Ljava/lang/String;
    if-eqz v0, :cond_6b

    .line 179
    const-string v8, "cover_url"

    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_6b
    const-string v8, "account_name"

    iget-object v9, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "account_name"

    iget-object v9, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v8, "account_name"

    iget-object v9, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v8, "collection_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v8, "timestamp"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v8, "dirty"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 190
    const-string v8, "last_action"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 192
    .end local v0           #coverUrl:Ljava/lang/String;
    .end local v1           #hasBuyUrl:Z
    .end local v2           #hasOpenAccess:Z
    .end local v3           #hasViewability:Z
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_9e
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 10
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, volumeId:Ljava/lang/String;
    const-string v4, "VolumeOverviewFetcher"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 73
    const-string v4, "VolumeOverviewFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetching vid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_25
    new-instance v3, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v4, Lcom/google/android/apps/books/sync/VolumesSynchronizable;

    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, p2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 79
    .local v3, volumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;
    sget-object v0, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_OVERVIEW:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 80
    .local v0, trafficFlag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    invoke-static {v0}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlag(Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;)V

    .line 85
    :try_start_36
    invoke-direct {p0, p2, v2}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->fetchUsingApiary(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 92
    const-wide/16 v4, 0x7

    invoke-static {p2, v4, v5, v1}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V

    .line 96
    invoke-virtual {v3, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_49

    .line 98
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 100
    return-void

    .line 98
    .end local v1           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_49
    move-exception v4

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    throw v4
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 12
    .parameter "account"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 129
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_3c

    move-result v7

    .line 130
    .local v7, volumeCount:I
    if-lez v7, :cond_21

    const/4 v0, 0x1

    .line 135
    :goto_1b
    if-eqz v6, :cond_20

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    return v0

    :cond_21
    move v0, v8

    .line 130
    goto :goto_1b

    .line 132
    .end local v7           #volumeCount:I
    :cond_23
    :try_start_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to count rows with uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3c

    .line 135
    :catchall_3c
    move-exception v0

    if-eqz v6, :cond_42

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0
.end method
