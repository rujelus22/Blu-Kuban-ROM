.class final Lcom/google/android/apps/reader/content/RecommendationListContentHandler;
.super Ljava/net/ContentHandler;
.source "RecommendationListContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mPosition:I

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "database"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 54
    if-nez p2, :cond_b

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_b
    if-nez p1, :cond_13

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_13
    if-nez p3, :cond_1b

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 65
    iput-object p3, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 67
    return-void
.end method

.method private clearRecommendations()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 96
    const-string v0, "account_name = ?"

    .line 97
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 100
    iget-object v2, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recommendations"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    iput v4, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mPosition:I

    .line 103
    return-void
.end method

.method private insertRecommendation(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)V
    .registers 7
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v2, "position"

    iget v3, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->hasSnippet()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    const-string v1, "snippet"

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_67
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recommendations"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    return-void
.end method

.method private notifyChange()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 8
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 74
    .local v1, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v1}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$RecommendationList;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    move-result-object v3

    .line 76
    .local v3, recommendations:Lcom/google/feedreader/extrpc/Client$RecommendationList;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 81
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->clearRecommendations()V

    .line 82
    invoke-virtual {v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getRecsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;

    .line 83
    .local v2, r:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->insertRecommendation(Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 87
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
    :catchall_2b
    move-exception v4

    iget-object v5, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 76
    .end local v3           #recommendations:Lcom/google/feedreader/extrpc/Client$RecommendationList;
    :catchall_32
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4

    .line 85
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #recommendations:Lcom/google/feedreader/extrpc/Client$RecommendationList;
    :cond_37
    :try_start_37
    iget-object v4, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_2b

    .line 87
    iget-object v4, p0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;->notifyChange()V

    .line 92
    invoke-virtual {v3}, Lcom/google/feedreader/extrpc/Client$RecommendationList;->getRecsCount()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
