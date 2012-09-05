.class public Lcom/google/android/syncadapters/GDataFeedFetcher;
.super Ljava/lang/Object;
.source "GDataFeedFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAuthToken:Ljava/lang/String;

.field private volatile mAuthenticationFailed:Z

.field protected final mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

.field private volatile mConnectionFailed:Z

.field private final mEntryClass:Ljava/lang/Class;

.field private final mEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mFeed:Lcom/google/wireless/gdata2/data/Feed;

.field protected final mFeedSyncState:Landroid/os/Bundle;

.field private final mFeedUrl:Ljava/lang/String;

.field private volatile mForcedClosed:Z

.field private final mLogTag:Ljava/lang/String;

.field private mMaxResults:I

.field private volatile mNumUnparsableEntries:I

.field private volatile mPartialSyncUnavailable:Z

.field private volatile mResourceUnavailable:Z

.field private volatile mResumptionFailed:Z

.field private volatile mRetryAfter:J

.field private volatile mThread:Ljava/lang/Thread;

.field private volatile mUnparsableFeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .parameter "logTag"
    .parameter "client"
    .parameter "entryClass"
    .parameter
    .parameter
    .parameter "url"
    .parameter "authToken"
    .parameter "feedSyncState"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/wireless/gdata2/client/GDataServiceClient;",
            "Ljava/lang/Class;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p5, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    iput-object p1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    iput-object p6, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthToken:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    .line 73
    iput-object p5, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    .line 74
    iput-object p3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryClass:Ljava/lang/Class;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    .line 77
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z

    .line 78
    iput v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    .line 79
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z

    .line 81
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z

    .line 82
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    .line 83
    iput-object p8, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    .line 84
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    .line 86
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    .line 88
    if-gtz p9, :cond_3d

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxResults cannot be zero or negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3d
    iput p9, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    .line 92
    return-void
.end method

.method private fetchFeed()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v11

    .line 155
    .local v11, params:Lcom/google/wireless/gdata2/client/QueryParams;
    const/4 v6, 0x0

    .line 156
    .local v6, expectedFirstId:Ljava/lang/String;
    const/4 v14, 0x1

    .line 157
    .local v14, startIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "lastFetchedIndex"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_59

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "lastFetchedId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "lastFetchedIndex"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 169
    invoke-virtual {v11, v14}, Lcom/google/wireless/gdata2/client/QueryParams;->setStartIndex(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "resuming download from index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_59
    add-int/lit8 v16, v14, -0x1

    .line 176
    .local v16, totalResultsFetched:I
    :goto_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, feedUrlToQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_a3

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Starting to make a new fetch request for feed url: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " with MaxResults: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_a3
    const/4 v9, 0x0

    .line 184
    .local v9, lastEntryId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryClass:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthToken:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_c3
    .catchall {:try_start_5b .. :try_end_c3} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_5b .. :try_end_c3} :catch_321
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_c3} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_5b .. :try_end_c3} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_5b .. :try_end_c3} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_5b .. :try_end_c3} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_5b .. :try_end_c3} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_5b .. :try_end_c3} :catch_7c7

    move-result-object v12

    .line 187
    .local v12, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_start_c4
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v15

    .line 190
    .local v15, totalResults:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v8

    .line 191
    .local v8, itemsPerPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_135

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got totalResults = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got itemsPerPage = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_135
    const/4 v13, 0x0

    .line 196
    .local v13, resultsFetched:I
    :goto_136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_3ad

    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z
    :try_end_141
    .catchall {:try_start_c4 .. :try_end_141} :catchall_31c

    move-result v17

    if-eqz v17, :cond_3ad

    .line 198
    :try_start_144
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0
    :try_end_14a
    .catchall {:try_start_144 .. :try_end_14a} :catchall_31c
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_144 .. :try_end_14a} :catch_2fc

    if-eqz v17, :cond_1c4

    .line 239
    :try_start_14c
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_14c .. :try_end_14f} :catch_321
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_14c .. :try_end_14f} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_14c .. :try_end_14f} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_14c .. :try_end_14f} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_14c .. :try_end_14f} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_14c .. :try_end_14f} :catch_7c7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1a1

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .local v10, numExpectedEntries:I
    :goto_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 305
    .end local v7           #feedUrlToQuery:Ljava/lang/String;
    .end local v8           #itemsPerPage:I
    .end local v9           #lastEntryId:Ljava/lang/String;
    .end local v12           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v13           #resultsFetched:I
    .end local v15           #totalResults:I
    :cond_1c1
    :goto_1c1
    return-void

    .line 296
    .restart local v7       #feedUrlToQuery:Ljava/lang/String;
    .restart local v8       #itemsPerPage:I
    .restart local v9       #lastEntryId:Ljava/lang/String;
    .restart local v12       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .restart local v13       #resultsFetched:I
    .restart local v15       #totalResults:I
    :cond_1c2
    const/4 v10, 0x0

    goto :goto_16f

    .line 201
    :cond_1c4
    add-int/lit8 v16, v16, 0x1

    .line 202
    add-int/lit8 v13, v13, 0x1

    .line 203
    const/16 v17, 0x0

    :try_start_1ca
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v5

    .line 204
    .local v5, entry:Lcom/google/wireless/gdata2/data/Entry;
    if-eqz v6, :cond_2af

    .line 205
    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_295

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Expected the first id to be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but instead read "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", abandoning resumption of feed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z
    :try_end_21c
    .catchall {:try_start_1ca .. :try_end_21c} :catchall_31c
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1ca .. :try_end_21c} :catch_2fc

    .line 239
    :try_start_21c
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_21f
    .catchall {:try_start_21c .. :try_end_21f} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_21c .. :try_end_21f} :catch_321
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_21c .. :try_end_21f} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_21c .. :try_end_21f} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_21c .. :try_end_21f} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_21c .. :try_end_21f} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_21c .. :try_end_21f} :catch_7c7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_271

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_293

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_293
    const/4 v10, 0x0

    goto :goto_23f

    .line 212
    :cond_295
    :try_start_295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2ae

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ExpectedFirstId is correct"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2ae
    const/4 v6, 0x0

    .line 220
    :cond_2af
    if-lt v13, v8, :cond_2b5

    move/from16 v0, v16

    if-ne v0, v15, :cond_2f6

    .line 222
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2e3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "enqueing entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 228
    :cond_2f6
    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;
    :try_end_2f9
    .catchall {:try_start_295 .. :try_end_2f9} :catchall_31c
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_295 .. :try_end_2f9} :catch_2fc

    move-result-object v9

    goto/16 :goto_136

    .line 229
    .end local v5           #entry:Lcom/google/wireless/gdata2/data/Entry;
    :catch_2fc
    move-exception v4

    .line 231
    .local v4, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_2fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "parse error, ignoring entry"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I
    :try_end_31a
    .catchall {:try_start_2fd .. :try_end_31a} :catchall_31c

    goto/16 :goto_136

    .line 239
    .end local v4           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v8           #itemsPerPage:I
    .end local v13           #resultsFetched:I
    .end local v15           #totalResults:I
    :catchall_31c
    move-exception v17

    :try_start_31d
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    throw v17
    :try_end_321
    .catchall {:try_start_31d .. :try_end_321} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_31d .. :try_end_321} :catch_321
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_321} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_31d .. :try_end_321} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_31d .. :try_end_321} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_31d .. :try_end_321} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_31d .. :try_end_321} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_31d .. :try_end_321} :catch_7c7

    .line 257
    .end local v7           #feedUrlToQuery:Ljava/lang/String;
    .end local v9           #lastEntryId:Ljava/lang/String;
    .end local v12           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :catch_321
    move-exception v4

    .line 258
    .restart local v4       #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "parse error, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z
    :try_end_339
    .catchall {:try_start_322 .. :try_end_339} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_38b

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_463

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_38b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 235
    .end local v4           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .restart local v7       #feedUrlToQuery:Ljava/lang/String;
    .restart local v8       #itemsPerPage:I
    .restart local v9       #lastEntryId:Ljava/lang/String;
    .restart local v12       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .restart local v13       #resultsFetched:I
    .restart local v15       #totalResults:I
    :cond_3ad
    move/from16 v0, v16

    if-lt v0, v15, :cond_42a

    .line 239
    :try_start_3b1
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_3b4
    .catchall {:try_start_3b1 .. :try_end_3b4} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_3b1 .. :try_end_3b4} :catch_321
    .catch Ljava/io/IOException; {:try_start_3b1 .. :try_end_3b4} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_3b1 .. :try_end_3b4} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_3b1 .. :try_end_3b4} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_3b1 .. :try_end_3b4} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3b1 .. :try_end_3b4} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_3b1 .. :try_end_3b4} :catch_7c7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_406

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_428

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_3d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_428
    const/4 v10, 0x0

    goto :goto_3d4

    .line 239
    :cond_42a
    :try_start_42a
    invoke-interface {v12}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    .line 243
    move-object v6, v9

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_45a

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Updated expectedFirstId to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_45a
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->setStartIndex(I)V
    :try_end_45f
    .catchall {:try_start_42a .. :try_end_45f} :catchall_590
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_42a .. :try_end_45f} :catch_321
    .catch Ljava/io/IOException; {:try_start_42a .. :try_end_45f} :catch_466
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_42a .. :try_end_45f} :catch_4f4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_42a .. :try_end_45f} :catch_625
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_42a .. :try_end_45f} :catch_6b3
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_42a .. :try_end_45f} :catch_739
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_42a .. :try_end_45f} :catch_7c7

    .line 255
    add-int/lit8 v16, v16, -0x1

    .line 256
    goto/16 :goto_5b

    .line 296
    .end local v7           #feedUrlToQuery:Ljava/lang/String;
    .end local v8           #itemsPerPage:I
    .end local v9           #lastEntryId:Ljava/lang/String;
    .end local v12           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v13           #resultsFetched:I
    .end local v15           #totalResults:I
    .restart local v4       #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :cond_463
    const/4 v10, 0x0

    goto/16 :goto_359

    .line 260
    .end local v4           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :catch_466
    move-exception v4

    .line 261
    .local v4, e:Ljava/io/IOException;
    :try_start_467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "IO error, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z
    :try_end_47e
    .catchall {:try_start_467 .. :try_end_47e} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4d0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_49e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_4d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_4f2
    const/4 v10, 0x0

    goto :goto_49e

    .line 263
    .end local v4           #e:Ljava/io/IOException;
    :catch_4f4
    move-exception v4

    .line 264
    .local v4, e:Lcom/google/wireless/gdata2/client/HttpException;
    :try_start_4f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Http error, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_858

    .line 277
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z
    :try_end_513
    .catchall {:try_start_4f5 .. :try_end_513} :catchall_590

    .line 295
    :goto_513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_565

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_622

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 267
    :sswitch_587
    const/16 v17, 0x1

    :try_start_589
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z
    :try_end_58f
    .catchall {:try_start_589 .. :try_end_58f} :catchall_590

    goto :goto_513

    .line 295
    .end local v4           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catchall_590
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_5e3

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_855

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_5b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_5e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_603

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_603
    throw v17

    .line 270
    .restart local v4       #e:Lcom/google/wireless/gdata2/client/HttpException;
    :sswitch_604
    const/16 v17, 0x1

    :try_start_606
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    goto/16 :goto_513

    .line 273
    :sswitch_60e
    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    .line 274
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    goto/16 :goto_513

    .line 296
    :cond_622
    const/4 v10, 0x0

    goto/16 :goto_533

    .line 280
    .end local v4           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catch_625
    move-exception v4

    .line 281
    .local v4, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Authentication error, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z
    :try_end_63d
    .catchall {:try_start_606 .. :try_end_63d} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_68f

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_65d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_68f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_6b1
    const/4 v10, 0x0

    goto :goto_65d

    .line 283
    .end local v4           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_6b3
    move-exception v4

    .line 285
    .local v4, e:Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;
    :try_start_6b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ResourceNotModifiedException, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c3
    .catchall {:try_start_6b4 .. :try_end_6c3} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_715

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_737

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_6e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_737
    const/4 v10, 0x0

    goto :goto_6e3

    .line 286
    .end local v4           #e:Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;
    :catch_739
    move-exception v4

    .line 288
    .local v4, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    const/16 v17, 0x1

    :try_start_73c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ForbiddenException, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_751
    .catchall {:try_start_73c .. :try_end_751} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_7a3

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_7a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_7c5
    const/4 v10, 0x0

    goto :goto_771

    .line 290
    .end local v4           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :catch_7c7
    move-exception v4

    .line 291
    .local v4, e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :try_start_7c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ResourceGoneException, ignoring rest of feed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z
    :try_end_7df
    .catchall {:try_start_7c8 .. :try_end_7df} :catchall_590

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_831

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    if-eqz v17, :cond_853

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v10

    .line 297
    .restart local v10       #numExpectedEntries:I
    :goto_7ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished fetching "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries, adding the end marker"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #numExpectedEntries:I
    :cond_831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEnvelopeParsedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .line 296
    :cond_853
    const/4 v10, 0x0

    goto :goto_7ff

    .end local v4           #e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :cond_855
    const/4 v10, 0x0

    goto/16 :goto_5b1

    .line 265
    :sswitch_data_858
    .sparse-switch
        0x191 -> :sswitch_587
        0x19a -> :sswitch_604
        0x1f7 -> :sswitch_60e
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    .line 112
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_c
    return-void
.end method

.method public getFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    return-object v0
.end method

.method public getNumUnparsableEntries()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    return v0
.end method

.method protected getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams(Z)Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method protected getQueryParams(Z)Lcom/google/wireless/gdata2/client/QueryParams;
    .registers 8
    .parameter "noIncremental"

    .prologue
    .line 127
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v2

    .line 128
    .local v2, params:Lcom/google/wireless/gdata2/client/QueryParams;
    iget v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/client/QueryParams;->setMaxResults(I)V

    .line 131
    const-string v3, "orderby"

    const-string v4, "lastmodified"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "sortorder"

    const-string v4, "ascending"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v4, "do_incremental_sync"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, doIncrementalSync:Z
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v4, "feed_updated_time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, feedUpdatedTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 141
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feedFetch, incremental "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updatedMin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_61
    if-eqz v0, :cond_76

    if-nez p1, :cond_76

    .line 146
    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 147
    const-string v3, "requirealldeleted"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "showdeleted"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_76
    return-object v2
.end method

.method public getRetryAfter()J
    .registers 3

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    return-wide v0
.end method

.method public isAuthenticationFailed()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z

    return v0
.end method

.method public isConnectionFailed()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z

    return v0
.end method

.method public isPartialSyncUnavailable()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    return v0
.end method

.method public isResourceUnavailable()Z
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    return v0
.end method

.method public isUnparsableFeed()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    return v0
.end method

.method public resumptionFailed()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    .line 96
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 98
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->fetchFeed()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_39

    .line 103
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 104
    :cond_1e
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_38
    :goto_38
    return-void

    .line 100
    :catch_39
    move-exception v0

    .line 103
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 104
    :cond_46
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 103
    :catchall_61
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 104
    :cond_6e
    iget-object v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    throw v0
.end method
