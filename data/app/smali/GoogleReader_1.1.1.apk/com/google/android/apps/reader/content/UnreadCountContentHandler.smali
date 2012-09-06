.class public Lcom/google/android/apps/reader/content/UnreadCountContentHandler;
.super Ljava/net/ContentHandler;
.source "UnreadCountContentHandler.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "UnreadCountContentHandler"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInvalidatedItemListCount:I

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "database"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 59
    if-nez p1, :cond_b

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_b
    if-nez p2, :cond_13

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_13
    if-nez p3, :cond_1b

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 70
    iput-object p3, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mValues:Landroid/content/ContentValues;

    .line 72
    return-void
.end method

.method private clearUnreadCounts()V
    .registers 5

    .prologue
    .line 75
    const-string v0, "account_name = ?"

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 79
    iget-object v2, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "unread_counts"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private insertUnreadCount(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;Ljava/lang/Integer;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mValues:Landroid/content/ContentValues;

    .line 84
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getId()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getCount()I

    move-result v2

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    .line 87
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getNewestItemTimestampUsec()J

    move-result-wide v5

    .line 88
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getLastReadItemTimestampUsec()J

    move-result-wide v7

    .line 89
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 90
    const-string v9, "account_name"

    iget-object v10, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v10, v10, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v9, "_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v3, "stream_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "unread_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "max_unread_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "newest_item_timestamp"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "last_read_item_timestamp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "unread_counts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 98
    return-void
.end method

.method private invalidateItemLists(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)V
    .registers 10
    .parameter "entry"

    .prologue
    const/4 v7, 0x1

    .line 105
    const-string v0, "item_lists"

    .line 106
    .local v0, table:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 107
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "timestamp"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v3, "account_name = ? AND stream_id = ? AND (newest_item_timestamp < ? OR last_read_item_timestamp < ?)"

    .line 109
    .local v3, whereClause:Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getNewestItemTimestampUsec()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getLastReadItemTimestampUsec()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 113
    .local v2, whereArgs:[Ljava/lang/String;
    iget v4, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mInvalidatedItemListCount:I

    iget-object v5, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mInvalidatedItemListCount:I

    .line 114
    return-void
.end method

.method private logInvalidatedItemListCount()V
    .registers 6

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mInvalidatedItemListCount:I

    if-eqz v0, :cond_16

    .line 118
    const-string v0, "Invalidated %d streams because unread counts changed"

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mInvalidatedItemListCount:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    :cond_16
    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 125
    return-void
.end method

.method private resetInvalidatedItemListCount()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mInvalidatedItemListCount:I

    .line 102
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 9
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 133
    .local v3, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v3}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_40

    move-result-object v0

    .line 135
    .local v0, data:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    iget-object v5, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 139
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->resetInvalidatedItemListCount()V

    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->clearUnreadCounts()V

    .line 141
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 142
    .local v4, maxUnreadCount:Ljava/lang/Integer;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getUnreadcountsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    .line 143
    .local v1, entry:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->insertUnreadCount(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;Ljava/lang/Integer;)V

    .line 144
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->invalidateItemLists(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_39

    goto :goto_26

    .line 149
    .end local v1           #entry:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #maxUnreadCount:Ljava/lang/Integer;
    :catchall_39
    move-exception v5

    iget-object v6, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 135
    .end local v0           #data:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    :catchall_40
    move-exception v5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v5

    .line 146
    .restart local v0       #data:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #maxUnreadCount:Ljava/lang/Integer;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->logInvalidatedItemListCount()V

    .line 147
    iget-object v5, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_39

    .line 149
    iget-object v5, p0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;->notifyChanged()V

    .line 153
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getUnreadcountsCount()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method
