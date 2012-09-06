.class Lcom/google/android/apps/reader/content/CachedContentHandler;
.super Lcom/google/android/feeds/AbstractCachedContentHandler;
.source "CachedContentHandler.java"


# instance fields
.field protected final mAccount:Lcom/google/android/accounts/Account;

.field protected final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mHandler:Ljava/net/ContentHandler;


# direct methods
.method public constructor <init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V
    .registers 8
    .parameter "maxAge"
    .parameter "handler"
    .parameter "db"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p6}, Lcom/google/android/feeds/AbstractCachedContentHandler;-><init>(JLandroid/os/Bundle;)V

    .line 66
    if-nez p3, :cond_b

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_b
    if-nez p4, :cond_13

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_13
    if-nez p5, :cond_1b

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_1b
    iput-object p3, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mHandler:Ljava/net/ContentHandler;

    .line 76
    iput-object p4, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    iput-object p5, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 78
    return-void
.end method


# virtual methods
.method protected getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "connection"

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/feeds/FeedLoader;->documentInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mHandler:Ljava/net/ContentHandler;

    invoke-virtual {v0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTimestamp(Ljava/net/URLConnection;)J
    .registers 14
    .parameter "connection"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 92
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 93
    .local v9, url:Ljava/net/URL;
    const-string v1, "timestamps"

    .line 94
    .local v1, table:Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "timestamp"

    aput-object v0, v2, v10

    .line 97
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND url = ?"

    .line 98
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 101
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 102
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 103
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 104
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 108
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d

    move-result-wide v10

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_36
    return-wide v10

    .line 110
    :cond_37
    const-wide/16 v10, -0x1

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_36

    :catchall_3d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected setTimestamp(Ljava/net/URLConnection;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 121
    const-string v2, "account_name"

    iget-object v3, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "url"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "timestamps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 125
    return-void
.end method
