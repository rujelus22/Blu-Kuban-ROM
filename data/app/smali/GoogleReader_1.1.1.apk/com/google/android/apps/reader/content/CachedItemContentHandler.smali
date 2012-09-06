.class Lcom/google/android/apps/reader/content/CachedItemContentHandler;
.super Lcom/google/android/feeds/AbstractCachedContentHandler;
.source "CachedItemContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHandler:Ljava/net/ContentHandler;

.field private final mItemId:J


# direct methods
.method public constructor <init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 10
    .parameter "maxAge"
    .parameter "handler"
    .parameter "database"
    .parameter "account"
    .parameter "itemId"
    .parameter "extras"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p8}, Lcom/google/android/feeds/AbstractCachedContentHandler;-><init>(JLandroid/os/Bundle;)V

    .line 48
    if-nez p3, :cond_b

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_b
    if-nez p4, :cond_13

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_13
    if-nez p5, :cond_1b

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_1b
    iput-object p3, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mHandler:Ljava/net/ContentHandler;

    .line 58
    iput-object p4, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    iput-object p5, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 60
    iput-wide p6, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mItemId:J

    .line 61
    return-void
.end method


# virtual methods
.method protected getLocalContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "connection"

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

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
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mHandler:Ljava/net/ContentHandler;

    invoke-virtual {v0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTimestamp(Ljava/net/URLConnection;)J
    .registers 14
    .parameter "connection"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 65
    const-string v1, "items"

    .line 66
    .local v1, table:Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "timestamp"

    aput-object v0, v2, v9

    .line 69
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND id = ?"

    .line 70
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-wide v9, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mItemId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 73
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 74
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 75
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 76
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 79
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_26
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 80
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_3b

    move-result-wide v9

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_34
    return-wide v9

    .line 82
    :cond_35
    const-wide/16 v9, -0x1

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected setTimestamp(Ljava/net/URLConnection;J)V
    .registers 4
    .parameter "connection"
    .parameter "value"

    .prologue
    .line 92
    return-void
.end method
