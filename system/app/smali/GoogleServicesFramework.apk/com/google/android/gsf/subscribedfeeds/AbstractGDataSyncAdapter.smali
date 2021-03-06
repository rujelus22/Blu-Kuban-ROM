.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    }
.end annotation


# static fields
.field private static final SYNC_STATE_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mAuthToken:Ljava/lang/String;

.field protected mServerEntries:I

.field protected mServerQueries:I

.field protected volatile mSyncCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 468
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .registers 4
    .parameter "context"
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 67
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 68
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 89
    return-void
.end method

.method private getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .registers 7
    .parameter "entryClass"
    .parameter "url"

    .prologue
    .line 1193
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1196
    :goto_a
    return-object v1

    .line 1194
    :catch_b
    move-exception v0

    .line 1195
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B
    .registers 3
    .parameter "syncData"

    .prologue
    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    move-result-object v1

    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-object v1

    .line 554
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 527
    if-eqz p0, :cond_23

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, parcel:Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 530
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 532
    :try_start_e
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_16} :catch_1f

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_19
    return-object v1

    .line 537
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 533
    :catch_1f
    move-exception v1

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_23
    const/4 v1, 0x0

    goto :goto_19
.end method


# virtual methods
.method protected abstract cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected abstract deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected getAccountAllowsSyncing(Landroid/accounts/Account;)Z
    .registers 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .registers 8
    .parameter "feedUrl"
    .parameter "baseSyncData"

    .prologue
    .line 834
    move-object v2, p2

    check-cast v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .line 835
    .local v2, syncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    iget-object v3, v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 837
    .local v0, feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-nez v0, :cond_1d

    .line 838
    const-string v3, "^https://"

    const-string v4, "http://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, httpFeedUrl:Ljava/lang/String;
    iget-object v3, v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 841
    .end local v1           #httpFeedUrl:Ljava/lang/String;
    .restart local v0       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_1d
    return-object v0
.end method

.method protected abstract getFeedEntryClass()Ljava/lang/Class;
.end method

.method protected abstract getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method protected abstract getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
.end method

.method public getIsSyncable(Landroid/accounts/Account;)Z
    .registers 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccountAllowsSyncing(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public getMaxEntriesPerSync()I
    .registers 2

    .prologue
    .line 465
    const/16 v0, 0xc8

    return v0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 14
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, feedUrl:Ljava/lang/String;
    if-eqz p3, :cond_1a

    const-string v0, "feed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 570
    const-string v0, "feed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #feedUrl:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 572
    .restart local v3       #feedUrl:Ljava/lang/String;
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getMaxEntriesPerSync()I

    move-result v5

    move-object v6, p1

    check-cast v6, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 574
    return-void
.end method

.method protected getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .registers 50
    .parameter "tempProvider"
    .parameter "feedEntryClass"
    .parameter "feedUrl"
    .parameter "syncInfo"
    .parameter "maxResults"
    .parameter "syncData"
    .parameter "syncResult"

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_7

    .line 825
    :cond_6
    :goto_6
    return-void

    .line 593
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v9

    .line 595
    .local v9, feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    const-wide/16 v31, 0x0

    .line 596
    .local v31, lastSyncTime:J
    if-eqz v9, :cond_19

    .line 597
    iget-wide v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    move-wide/from16 v31, v0

    .line 601
    :cond_19
    new-instance v38, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 603
    .local v38, time:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v18

    .line 605
    .local v18, client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v34

    .line 606
    .local v34, params:Lcom/google/wireless/gdata/client/QueryParams;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 607
    const-wide/16 v7, 0x0

    cmp-long v3, v31, v7

    if-lez v3, :cond_52

    .line 608
    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 609
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 610
    const-string v3, "requirealldeleted"

    const-string v5, "true"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v5}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_52
    const/16 v37, 0x1

    .line 615
    .local v37, startIndex:I
    const/16 v25, 0x0

    .line 616
    .local v25, expectedFirstId:Ljava/lang/String;
    if-eqz v9, :cond_96

    iget-boolean v3, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v3, :cond_96

    .line 626
    iget v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    move/from16 v37, v0

    .line 627
    if-gtz v37, :cond_87

    .line 628
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad startIndex, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", it must be greater than 0, SyncData is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    :cond_87
    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setStartIndex(Ljava/lang/String;)V

    .line 634
    add-int/lit8 p5, p5, 0x1

    .line 635
    iget-object v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 638
    :cond_96
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setMaxResults(Ljava/lang/String;)V

    .line 640
    const/16 v16, 0x0

    .line 641
    .local v16, lastId:Ljava/lang/String;
    const/16 v33, 0x0

    .line 642
    .local v33, numResults:I
    const/16 v35, 0x0

    .line 643
    .local v35, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    const/16 v29, 0x0

    .line 645
    .local v29, feedUrlToQuery:Ljava/lang/String;
    :try_start_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 646
    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b5
    .catchall {:try_start_a7 .. :try_end_b5} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a7 .. :try_end_b5} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b5} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_a7 .. :try_end_b5} :catch_277

    move-result-object v29

    .line 649
    :try_start_b6
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_29f
    .catch Ljava/net/URISyntaxException; {:try_start_b6 .. :try_end_bd} :catch_11c
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_b6 .. :try_end_bd} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_b6 .. :try_end_bd} :catch_277

    .line 655
    :try_start_bd
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 656
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_e0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v35

    .line 659
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 660
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v4

    .line 661
    .local v4, feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-virtual {v4}, Lcom/google/wireless/gdata/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v26

    .line 663
    .local v26, feedUpdateDate:Ljava/lang/String;
    const/4 v6, 0x0

    .line 664
    .local v6, entry:Lcom/google/wireless/gdata/data/Entry;
    move-wide/from16 v23, v31

    .line 665
    .local v23, entryLastUpdated:J
    :goto_103
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v3

    if-eqz v3, :cond_2bc

    move/from16 v0, v33

    move/from16 v1, p5

    if-ge v0, v1, :cond_2bc

    .line 666
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z
    :try_end_113
    .catchall {:try_start_bd .. :try_end_113} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_bd .. :try_end_113} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_113} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_bd .. :try_end_113} :catch_277

    if-eqz v3, :cond_14d

    .line 823
    if-eqz v35, :cond_6

    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    :goto_117
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_6

    .line 650
    :catch_11c
    move-exception v22

    .line 651
    .local v22, e:Ljava/net/URISyntaxException;
    :try_start_11d
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the feed url "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not a valid URI"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    .line 823
    if-eqz v35, :cond_6

    goto :goto_117

    .line 667
    .end local v22           #e:Ljava/net/URISyntaxException;
    .restart local v4       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v6       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v23       #entryLastUpdated:J
    .restart local v26       #feedUpdateDate:Ljava/lang/String;
    :cond_14d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I
    :try_end_157
    .catchall {:try_start_11d .. :try_end_157} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_11d .. :try_end_157} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_157} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_11d .. :try_end_157} :catch_277

    .line 668
    add-int/lit8 v33, v33, 0x1

    .line 670
    :try_start_159
    move-object/from16 v0, v35

    invoke-interface {v0, v6}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_15e
    .catchall {:try_start_159 .. :try_end_15e} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_159 .. :try_end_15e} :catch_1a3
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15e} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_159 .. :try_end_15e} :catch_277

    move-result-object v6

    .line 677
    :try_start_15f
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 678
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read entry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_184
    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v16

    .line 684
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_1fa

    if-eqz v25, :cond_1fa

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1fa

    .line 692
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 693
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 823
    if-eqz v35, :cond_6

    goto/16 :goto_117

    .line 671
    :catch_1a3
    move-exception v22

    .line 672
    .local v22, e:Lcom/google/wireless/gdata/parser/ParseException;
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 673
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while parsing entry from account "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1df
    .catchall {:try_start_15f .. :try_end_1df} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_15f .. :try_end_1df} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_1df} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_15f .. :try_end_1df} :catch_277

    goto/16 :goto_103

    .line 785
    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v22           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    :catch_1e1
    move-exception v36

    .line 786
    .local v36, pe:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_1e2
    const-string v3, "Sync"

    const-string v5, "Unable to process gdata feed"

    move-object/from16 v0, v36

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1f6
    .catchall {:try_start_1e2 .. :try_end_1f6} :catchall_29f

    .line 823
    if-eqz v35, :cond_6

    goto/16 :goto_117

    .line 698
    .end local v36           #pe:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v4       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v6       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v23       #entryLastUpdated:J
    .restart local v26       #feedUpdateDate:Ljava/lang/String;
    :cond_1fa
    :try_start_1fa
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 699
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServerDiffs: updating provider with entry "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_21f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    .line 704
    .local v21, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_241

    .line 705
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "we should not be in a transaction"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_231
    .catchall {:try_start_1fa .. :try_end_231} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1fa .. :try_end_231} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_231} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1fa .. :try_end_231} :catch_277

    .line 788
    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    :catch_231
    move-exception v30

    .line 790
    .local v30, ioe:Ljava/io/IOException;
    :try_start_232
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_23d
    .catchall {:try_start_232 .. :try_end_23d} :catchall_29f

    .line 823
    if-eqz v35, :cond_6

    goto/16 :goto_117

    .line 707
    .end local v30           #ioe:Ljava/io/IOException;
    .restart local v4       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v6       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23       #entryLastUpdated:J
    .restart local v26       #feedUpdateDate:Ljava/lang/String;
    :cond_241
    :try_start_241
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_244
    .catchall {:try_start_241 .. :try_end_244} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_241 .. :try_end_244} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_241 .. :try_end_244} :catch_277

    .line 709
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    :try_start_24b
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 712
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numEntries:J

    .line 714
    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v39

    .line 715
    .local v39, updateDate:Ljava/lang/String;
    if-eqz v39, :cond_26f

    .line 716
    invoke-virtual/range {v38 .. v39}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 717
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v40

    .line 718
    .local v40, updated:J
    cmp-long v3, v40, v23

    if-lez v3, :cond_26f

    .line 719
    move-wide/from16 v23, v40

    .line 722
    .end local v40           #updated:J
    :cond_26f
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_272
    .catchall {:try_start_24b .. :try_end_272} :catchall_2b7
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_24b .. :try_end_272} :catch_28e
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_272} :catch_2a6

    .line 730
    :try_start_272
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_275
    .catchall {:try_start_272 .. :try_end_275} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_272 .. :try_end_275} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_275} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_272 .. :try_end_275} :catch_277

    goto/16 :goto_103

    .line 791
    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    .end local v39           #updateDate:Ljava/lang/String;
    :catch_277
    move-exception v22

    .line 792
    .local v22, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_278
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_39a

    .line 819
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_28a
    .catchall {:try_start_278 .. :try_end_28a} :catchall_29f

    .line 823
    :goto_28a
    if-eqz v35, :cond_6

    goto/16 :goto_117

    .line 723
    .end local v22           #e:Lcom/google/wireless/gdata/client/HttpException;
    .restart local v4       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v6       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23       #entryLastUpdated:J
    .restart local v26       #feedUpdateDate:Ljava/lang/String;
    :catch_28e
    move-exception v22

    .line 725
    .local v22, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_28f
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_29a
    .catchall {:try_start_28f .. :try_end_29a} :catchall_2b7

    .line 730
    :try_start_29a
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_29d
    .catchall {:try_start_29a .. :try_end_29d} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_29a .. :try_end_29d} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_29a .. :try_end_29d} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_29a .. :try_end_29d} :catch_277

    goto/16 :goto_103

    .line 823
    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    :catchall_29f
    move-exception v3

    if-eqz v35, :cond_2a5

    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_2a5
    throw v3

    .line 726
    .restart local v4       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v6       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23       #entryLastUpdated:J
    .restart local v26       #feedUpdateDate:Ljava/lang/String;
    :catch_2a6
    move-exception v22

    .line 728
    .local v22, e:Ljava/lang/RuntimeException;
    :try_start_2a7
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_2b2
    .catchall {:try_start_2a7 .. :try_end_2b2} :catchall_2b7

    .line 730
    :try_start_2b2
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_103

    .end local v22           #e:Ljava/lang/RuntimeException;
    :catchall_2b7
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 737
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2bc
    if-nez v26, :cond_331

    .line 738
    const-wide/16 v23, 0x0

    .line 758
    :goto_2c0
    move/from16 v0, v33

    move/from16 v1, p5

    if-ne v0, v1, :cond_354

    const/4 v15, 0x1

    .line 759
    .local v15, moreRecordsToGet:Z
    :goto_2c7
    new-instance v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    if-eqz v15, :cond_357

    move-wide/from16 v11, v31

    :goto_2cd
    move/from16 v0, v33

    int-to-long v13, v0

    add-int v3, v37, v33

    add-int/lit8 v17, v3, -0x1

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    .line 764
    .local v10, newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-eqz v9, :cond_2ef

    .line 765
    if-nez v15, :cond_35b

    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    const-wide/16 v11, 0x0

    cmp-long v3, v7, v11

    if-lez v3, :cond_35b

    .line 767
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 768
    const-wide/16 v7, 0x0

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 772
    move-wide/from16 v0, v31

    iput-wide v0, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 779
    :cond_2ef
    :goto_2ef
    iget-boolean v3, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    move-object/from16 v0, p7

    iput-boolean v3, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 780
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32d

    .line 782
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This call to getServerDiffsImpl for feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is returning "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_32d
    if-eqz v35, :cond_6

    goto/16 :goto_117

    .line 742
    .end local v10           #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v15           #moreRecordsToGet:Z
    :cond_331
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 743
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    .line 744
    .local v27, feedUpdateMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 745
    .local v19, currentMillis:J
    const-wide/32 v7, 0x493e0

    add-long v7, v7, v27

    cmp-long v3, v7, v19

    if-gez v3, :cond_350

    .line 753
    const-wide/16 v7, 0x3e8

    add-long v27, v27, v7

    .line 755
    :cond_350
    move-wide/from16 v23, v27

    goto/16 :goto_2c0

    .line 758
    .end local v19           #currentMillis:J
    .end local v27           #feedUpdateMillis:J
    :cond_354
    const/4 v15, 0x0

    goto/16 :goto_2c7

    .restart local v15       #moreRecordsToGet:Z
    :cond_357
    move-wide/from16 v11, v23

    .line 759
    goto/16 :goto_2cd

    .line 775
    .restart local v10       #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_35b
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 776
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J
    :try_end_363
    .catchall {:try_start_2b2 .. :try_end_363} :catchall_29f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2b2 .. :try_end_363} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_363} :catch_231
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2b2 .. :try_end_363} :catch_277

    goto :goto_2ef

    .line 795
    .end local v4           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v6           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v15           #moreRecordsToGet:Z
    .end local v23           #entryLastUpdated:J
    .end local v26           #feedUpdateDate:Ljava/lang/String;
    .local v22, e:Lcom/google/wireless/gdata/client/HttpException;
    :sswitch_364
    :try_start_364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v5, "com.google"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_28a

    .line 802
    :sswitch_382
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_393

    .line 807
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto/16 :goto_28a

    .line 814
    :cond_393
    const/4 v3, 0x1

    move-object/from16 v0, p7

    iput-boolean v3, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z
    :try_end_398
    .catchall {:try_start_364 .. :try_end_398} :catchall_29f

    goto/16 :goto_28a

    .line 792
    :sswitch_data_39a
    .sparse-switch
        0x191 -> :sswitch_364
        0x193 -> :sswitch_364
        0x19a -> :sswitch_382
    .end sparse-switch
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 8
    .parameter "sb"
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 122
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    if-lez v0, :cond_11

    .line 123
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    :cond_11
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    if-lez v0, :cond_20

    .line 126
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    :cond_20
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_35

    .line 129
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 131
    :cond_35
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4a

    .line 132
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 134
    :cond_4a
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5f

    .line 135
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 137
    :cond_5f
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    return-void
.end method

.method protected abstract handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
.end method

.method protected invalidateAndUpdateAuthToken()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1154
    return-void
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 2

    .prologue
    .line 493
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .registers 11
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 113
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 116
    return-void
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 560
    return-void
.end method

.method public onSyncEnding(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 1204
    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .registers 11
    .parameter "account"
    .parameter "manualSync"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x1

    .line 1211
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 1212
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 1213
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    .line 1217
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 1219
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1221
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1223
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez v1, :cond_3e

    .line 1224
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3e} :catch_3f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9 .. :try_end_3e} :catch_48
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_3e} :catch_51

    .line 1233
    :cond_3e
    :goto_3e
    return-void

    .line 1226
    :catch_3f
    move-exception v0

    .line 1227
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_3e

    .line 1228
    .end local v0           #e:Ljava/io/IOException;
    :catch_48
    move-exception v0

    .line 1229
    .local v0, e:Landroid/accounts/AuthenticatorException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_3e

    .line 1230
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_51
    move-exception v0

    .line 1231
    .local v0, e:Landroid/accounts/OperationCanceledException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_3e
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 9
    .parameter "contentProvider"

    .prologue
    const/4 v2, 0x0

    .line 478
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, c:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 483
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_34

    move-result-object v0

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 488
    :goto_33
    return-object v0

    .line 486
    :catchall_34
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    goto :goto_33
.end method

.method public bridge synthetic readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .registers 12
    .parameter "clientDiffs"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 859
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v3

    .line 860
    .local v3, syncInfo:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v2

    .local v2, entry:Lcom/google/wireless/gdata/data/Entry;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 861
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 863
    return-void
.end method

.method protected sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .registers 27
    .parameter "clientDiffs"
    .parameter "entry"
    .parameter "syncInfo"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    if-nez v3, :cond_e

    .line 883
    const-string v3, "Sync"

    const-string v4, "no username, so skipping the merge"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :goto_d
    return-void

    .line 894
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v15

    .line 896
    .local v15, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 898
    .local v5, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :try_start_1b
    const-string v3, "_sync_local_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 899
    .local v19, syncLocalIDColumn:I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_152

    move-result v18

    .local v18, numRows:I
    move-object/from16 v17, v5

    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .local v17, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_27
    :try_start_27
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v3

    if-nez v3, :cond_40

    .line 900
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_78

    .line 901
    const-string v3, "Sync"

    const-string v4, "stopping since the sync was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_c4

    .line 929
    :cond_40
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 936
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v15

    .line 938
    :try_start_4f
    const-string v3, "_sync_local_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 939
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_14e

    move-result v18

    move-object/from16 v5, v17

    .line 940
    .end local v17           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v5       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 941
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_ce

    .line 942
    const-string v3, "Sync"

    const-string v4, "stopping since the sync was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_108

    .line 979
    :cond_74
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto :goto_d

    .line 904
    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v17       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_78
    :try_start_78
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_c4

    .line 906
    :try_start_7b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_c4
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_7b .. :try_end_82} :catch_b6

    .line 916
    const/4 v3, 0x1

    :try_start_83
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 917
    if-nez p6, :cond_cb

    .line 918
    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_9a
    .catchall {:try_start_83 .. :try_end_9a} :catchall_c4

    move-result-object v5

    .line 923
    .end local v17           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v5       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_9b
    if-eqz v5, :cond_155

    .line 924
    :try_start_9d
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_b2
    .catchall {:try_start_9d .. :try_end_b2} :catchall_152

    move-object/from16 v17, v5

    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v17       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_27

    .line 907
    :catch_b6
    move-exception v16

    .line 912
    .local v16, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_b7
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c4

    goto/16 :goto_27

    .line 929
    .end local v16           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :catchall_c4
    move-exception v3

    move-object/from16 v5, v17

    .end local v17           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v18           #numRows:I
    .end local v19           #syncLocalIDColumn:I
    .restart local v5       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_c7
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v3

    .line 921
    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v17       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v18       #numRows:I
    .restart local v19       #syncLocalIDColumn:I
    :cond_cb
    move-object/from16 v5, p2

    .end local v17           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v5       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_9b

    .line 946
    :cond_ce
    :try_start_ce
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_108

    .line 952
    :try_start_d1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 953
    .local v8, targetUrl:Ljava/lang/String;
    if-nez v8, :cond_10d

    .line 954
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    .line 955
    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_108
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_d1 .. :try_end_e3} :catch_110

    .line 971
    .local v7, op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :goto_e3
    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    :try_start_ea
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v5

    .line 973
    if-eqz v5, :cond_5b

    .line 974
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object v11, v5

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_106
    .catchall {:try_start_ea .. :try_end_106} :catchall_108

    goto/16 :goto_5b

    .line 979
    .end local v7           #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v8           #targetUrl:Ljava/lang/String;
    :catchall_108
    move-exception v3

    :goto_109
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v3

    .line 957
    .restart local v8       #targetUrl:Ljava/lang/String;
    :cond_10d
    :try_start_10d
    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_10f
    .catchall {:try_start_10d .. :try_end_10f} :catchall_108
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_10d .. :try_end_10f} :catch_110

    .restart local v7       #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    goto :goto_e3

    .line 959
    .end local v7           #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v8           #targetUrl:Ljava/lang/String;
    :catch_110
    move-exception v16

    .line 960
    .restart local v16       #e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_111
    const-string v3, "skip"

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 963
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_14c
    .catchall {:try_start_111 .. :try_end_14c} :catchall_108

    goto/16 :goto_5b

    .line 979
    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v16           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v17       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :catchall_14e
    move-exception v3

    move-object/from16 v5, v17

    .end local v17           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v5       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_109

    .line 929
    .end local v18           #numRows:I
    .end local v19           #syncLocalIDColumn:I
    :catchall_152
    move-exception v3

    goto/16 :goto_c7

    .restart local v18       #numRows:I
    .restart local v19       #syncLocalIDColumn:I
    :cond_155
    move-object/from16 v17, v5

    .end local v5           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v17       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_27
.end method

.method public sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    .registers 16
    .parameter "op"
    .parameter "targetUrl"
    .parameter "entry"
    .parameter "syncResult"
    .parameter "retryAuthentication"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    .line 1005
    :try_start_4
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;->$SwitchMap$com$google$android$gsf$subscribedfeeds$AbstractGDataSyncAdapter$ClientDiffType:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e8

    :goto_f
    move-object v0, p3

    .line 1139
    :goto_10
    return-object v0

    .line 1007
    :pswitch_11
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1008
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_32
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1011
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is UPDATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_40} :catch_40
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_40} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_40} :catch_bd
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_40} :catch_113

    .line 1040
    :catch_40
    move-exception v6

    .line 1041
    .local v6, e:Lcom/google/wireless/gdata/parser/ParseException;
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-object v0, v7

    .line 1043
    goto :goto_10

    .line 1014
    .end local v6           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :cond_72
    :try_start_72
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1015
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J
    :try_end_83
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_72 .. :try_end_83} :catch_40
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_83} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_83} :catch_bd
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_72 .. :try_end_83} :catch_113

    goto :goto_f

    .line 1044
    :catch_84
    move-exception v6

    .line 1049
    .local v6, e:Ljava/io/IOException;
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v7

    .line 1050
    goto :goto_10

    .line 1019
    .end local v6           #e:Ljava/io/IOException;
    :pswitch_8e
    :try_start_8e
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1020
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_af
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1023
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is INSERT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bd
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_8e .. :try_end_bd} :catch_40
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_bd} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_bd} :catch_bd
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_8e .. :try_end_bd} :catch_113

    .line 1051
    :catch_bd
    move-exception v6

    .line 1052
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caught an exception during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1054
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v0, v7

    .line 1055
    goto/16 :goto_10

    .line 1026
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_100
    :try_start_100
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1027
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J
    :try_end_111
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_100 .. :try_end_111} :catch_40
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_111} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_100 .. :try_end_111} :catch_bd
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_100 .. :try_end_111} :catch_113

    goto/16 :goto_f

    .line 1056
    :catch_113
    move-exception v6

    .line 1057
    .local v6, e:Lcom/google/wireless/gdata/client/HttpException;
    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1f2

    .line 1138
    :pswitch_11b
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v7

    .line 1139
    goto/16 :goto_10

    .line 1031
    .end local v6           #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_125
    :try_start_125
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_133

    .line 1032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is not marked as deleted but op is DELETE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_133
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J
    :try_end_143
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_125 .. :try_end_143} :catch_40
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_143} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_125 .. :try_end_143} :catch_bd
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_125 .. :try_end_143} :catch_113

    goto/16 :goto_f

    .line 1060
    .restart local v6       #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_145
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_16b

    .line 1062
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1063
    if-nez p3, :cond_161

    .line 1064
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v7

    .line 1065
    goto/16 :goto_10

    .line 1067
    :cond_161
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    :cond_168
    :goto_168
    move-object v0, p3

    .line 1075
    goto/16 :goto_10

    .line 1068
    :cond_16b
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_17a

    .line 1070
    invoke-virtual {p3, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1071
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_168

    .line 1072
    :cond_17a
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_168

    .line 1073
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_168

    .line 1078
    :pswitch_186
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_18d

    .line 1079
    invoke-virtual {p3, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1081
    :cond_18d
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    move-object v0, p3

    .line 1082
    goto/16 :goto_10

    .line 1089
    :pswitch_197
    if-eqz p5, :cond_1ad

    .line 1091
    :try_start_199
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthToken()V

    .line 1092
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_1ad

    .line 1093
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1a9} :catch_1e5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_199 .. :try_end_1a9} :catch_1e3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_199 .. :try_end_1a9} :catch_1ac

    move-result-object v0

    goto/16 :goto_10

    .line 1100
    :catch_1ac
    move-exception v0

    .line 1104
    :cond_1ad
    :goto_1ad
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object v0, v7

    .line 1105
    goto/16 :goto_10

    .line 1108
    :pswitch_1b7
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_1c5

    .line 1110
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v7

    .line 1111
    goto/16 :goto_10

    .line 1121
    :cond_1c5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1122
    if-nez p3, :cond_1d9

    .line 1127
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v7

    .line 1128
    goto/16 :goto_10

    .line 1130
    :cond_1d9
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    move-object v0, p3

    .line 1131
    goto/16 :goto_10

    .line 1098
    :catch_1e3
    move-exception v0

    goto :goto_1ad

    .line 1096
    :catch_1e5
    move-exception v0

    goto :goto_1ad

    .line 1005
    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_11
        :pswitch_8e
        :pswitch_125
    .end packed-switch

    .line 1057
    :pswitch_data_1f2
    .packed-switch 0x190
        :pswitch_145
        :pswitch_197
        :pswitch_11b
        :pswitch_145
        :pswitch_186
        :pswitch_11b
        :pswitch_11b
        :pswitch_11b
        :pswitch_11b
        :pswitch_1b7
    .end packed-switch
.end method

.method protected abstract updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 15
    .parameter "provider"
    .parameter "entry"
    .parameter "syncLocalId"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 1164
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1165
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1167
    :try_start_7
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1168
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClientDiffs: updating provider with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_28
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 1172
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_39

    .line 1177
    :goto_35
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1179
    return-void

    .line 1173
    :catch_39
    move-exception v8

    .line 1175
    .local v8, e:Ljava/lang/Exception;
    :try_start_3a
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_35

    .line 1177
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .registers 3
    .parameter "params"
    .parameter "feedSyncData"

    .prologue
    .line 394
    return-void
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .registers 9
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    .line 502
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    if-nez p1, :cond_3f

    .line 506
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "data"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 518
    .end local p1
    :goto_3e
    return-void

    .line 513
    .end local v0           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_3f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .restart local v0       #values:Landroid/content/ContentValues;
    const-string v1, "data"

    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .end local p1
    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 515
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3e
.end method
