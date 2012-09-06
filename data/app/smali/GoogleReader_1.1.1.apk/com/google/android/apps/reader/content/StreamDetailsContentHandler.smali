.class Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;
.super Ljava/net/ContentHandler;
.source "StreamDetailsContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "account"
    .parameter "streamId"
    .parameter "contentResolver"
    .parameter "database"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 54
    if-nez p1, :cond_d

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_d
    if-nez p2, :cond_17

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_17
    if-nez p3, :cond_21

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentResolver is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_21
    if-nez p4, :cond_2b

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 67
    iput-object p2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mStreamId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    iput-object p4, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    return-void
.end method

.method private notifyChanged()V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 115
    return-void
.end method

.method private replaceStreamDetails(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)V
    .registers 7
    .parameter

    .prologue
    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v0, "stream_id"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mStreamId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "account_name"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "account_type"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mStreamId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v2, v0

    .line 81
    const-string v0, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasSubscribers()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 84
    const-string v0, "subscribers"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSubscribers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_41
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasSuccessfulCrawlTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 88
    const-string v0, "updated"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getSuccessfulCrawlTimeUsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    :cond_54
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->hasFeedUrl()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 92
    const-string v0, "feed_url"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_63
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->getTrendsChartsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6b
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    .line 96
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getChartUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v4, "dayChart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 100
    const-string v3, "day_chart_url"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 101
    :cond_91
    const-string v4, "hourChart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 102
    const-string v3, "hour_chart_url"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 103
    :cond_9f
    const-string v4, "dowChart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 104
    const-string v3, "week_chart_url"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 110
    :cond_ad
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "stream_details"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 111
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 123
    .local v1, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_26

    move-result-object v0

    .line 125
    .local v0, content:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 128
    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    :try_start_10
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->replaceStreamDetails(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;)V

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2b

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->notifyChanged()V

    .line 138
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 125
    .end local v0           #content:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2

    .line 133
    .restart local v0       #content:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
    :catchall_2b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
