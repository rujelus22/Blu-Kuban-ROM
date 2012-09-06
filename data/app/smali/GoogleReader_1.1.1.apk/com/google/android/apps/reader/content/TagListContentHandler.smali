.class public Lcom/google/android/apps/reader/content/TagListContentHandler;
.super Ljava/net/ContentHandler;
.source "TagListContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

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
    iput-object p1, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 56
    iput-object p3, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 58
    return-void
.end method

.method private clearTags()V
    .registers 5

    .prologue
    .line 61
    const-string v0, "account_name = ?"

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tags"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private insertTag(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)V
    .registers 10
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 70
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getId()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->getSortid()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    .line 73
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 75
    const-string v6, "account_name"

    iget-object v7, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v7, v7, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v3, "id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "label"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "sortid"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 81
    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 85
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
    .line 91
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    .local v2, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v2}, Lcom/google/feedreader/extrpc/Client$TagListContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    move-result-object v3

    .line 95
    .local v3, list:Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 98
    iget-object v4, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 100
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/TagListContentHandler;->clearTags()V

    .line 101
    invoke-virtual {v3}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getTagsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    .line 102
    .local v0, entry:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/TagListContentHandler;->insertTag(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 106
    .end local v0           #entry:Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v4

    iget-object v5, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 95
    .end local v3           #list:Lcom/google/feedreader/extrpc/Client$TagListContent;
    :catchall_32
    move-exception v4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 104
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Lcom/google/feedreader/extrpc/Client$TagListContent;
    :cond_37
    :try_start_37
    iget-object v4, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_2b

    .line 106
    iget-object v4, p0, Lcom/google/android/apps/reader/content/TagListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/TagListContentHandler;->notifyChanged()V

    .line 111
    invoke-virtual {v3}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getTagsCount()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
