.class final Lcom/google/android/apps/reader/content/ItemsFeedResolver;
.super Ljava/lang/Object;
.source "ItemsFeedResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemsFeedResolver"


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mExtras:Landroid/os/Bundle;

.field private final mItemList:Lcom/google/android/apps/reader/content/ItemList;

.field private final mItemRefsContentHandler:Ljava/net/ContentHandler;

.field private final mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

.field private final mMaxAge:J

.field private final mRowCount:I


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/content/ItemList;IJLjava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .registers 10
    .parameter "itemList"
    .parameter "rowCount"
    .parameter "maxAge"
    .parameter "itemRefsContentHandler"
    .parameter "itemsContentHandler"
    .parameter "database"
    .parameter "extras"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p7, :cond_b

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_b
    if-nez p8, :cond_13

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_13
    if-nez p5, :cond_1b

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_1b
    if-nez p6, :cond_23

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_23
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    .line 81
    iput p2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mRowCount:I

    .line 82
    iput-wide p3, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mMaxAge:J

    .line 83
    iput-object p5, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemRefsContentHandler:Ljava/net/ContentHandler;

    .line 84
    iput-object p6, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 85
    iput-object p7, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    iput-object p8, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mExtras:Landroid/os/Bundle;

    .line 87
    return-void
.end method

.method private static createPostData([J)Lorg/apache/http/HttpEntity;
    .registers 2
    .parameter "itemIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/android/apps/reader/net/ReaderUri;->createStreamItemsContentsData([J)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private getRequiredItemIds()[J
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->queryRequiredItems()Landroid/database/Cursor;

    move-result-object v0

    .line 126
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 127
    new-array v2, v1, [J

    .line 128
    :goto_b
    if-ge v3, v1, :cond_1a

    .line 129
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 130
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1e

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 134
    :cond_1a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_1e
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private loadItemIds()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 143
    iget v2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mRowCount:I

    .line 144
    .local v2, n:I
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/reader/content/ItemList;->createItemsIdsUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 145
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemRefsContentHandler:Ljava/net/ContentHandler;

    invoke-static {v4, v3}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 150
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v5, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/reader/content/ItemList;->getMaxPosition(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 151
    .local v1, max:I
    sub-int v4, v2, v6

    if-ge v1, v4, :cond_26

    move v0, v6

    .line 152
    .local v0, lessThanExpected:Z
    :goto_1c
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v5, "com.google.feeds.cursor.extra.MORE"

    if-nez v0, :cond_28

    :goto_22
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-void

    .end local v0           #lessThanExpected:Z
    :cond_26
    move v0, v7

    .line 151
    goto :goto_1c

    .restart local v0       #lessThanExpected:Z
    :cond_28
    move v6, v7

    .line 152
    goto :goto_22
.end method

.method public static loadItems(Lcom/google/android/apps/reader/content/ItemList;IJLjava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .registers 17
    .parameter "itemList"
    .parameter "rowCount"
    .parameter "maxAge"
    .parameter "itemRefsContentHandler"
    .parameter "itemsContentHandler"
    .parameter "database"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;-><init>(Lcom/google/android/apps/reader/content/ItemList;IJLjava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 205
    .local v0, resolver:Lcom/google/android/apps/reader/content/ItemsFeedResolver;
    invoke-direct {v0}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->loadItemIds()V

    .line 206
    invoke-direct {v0}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->loadRequiredItems()V

    .line 207
    return-void
.end method

.method private loadItems([J)V
    .registers 7
    .parameter "itemIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/ItemList;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, streamId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/reader/net/ReaderUri;->streamItemsContents(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, uri:Landroid/net/Uri;
    :try_start_b
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-static {p1}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->createPostData([J)Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 163
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-static {v2, v1}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1f

    .line 165
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 167
    return-void

    .line 165
    :catchall_1f
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemsContentHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    throw v2
.end method

.method private loadRequiredItems()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->getRequiredItemIds()[J

    move-result-object v0

    .line 174
    array-length v1, v0

    if-eqz v1, :cond_23

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->loadItems([J)V

    .line 178
    :cond_23
    return-void
.end method

.method private queryRequiredItems()Landroid/database/Cursor;
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 96
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v8

    .line 97
    .local v8, account:Lcom/google/android/accounts/Account;
    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "item_id"

    aput-object v1, v2, v11

    .line 100
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "item_positions.account_name = ? AND item_positions.item_list_id = ?"

    .line 101
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v11

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/content/ItemList;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v12

    .line 104
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, sortOrder:Ljava/lang/String;
    iget-wide v11, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mMaxAge:J

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_53

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mMaxAge:J

    sub-long v9, v11, v13

    .line 110
    .local v9, minTimestamp:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(items.id IS NULL OR items.timestamp < "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ")"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 112
    .end local v9           #minTimestamp:J
    :cond_53
    const-string v1, "item_positions LEFT JOIN items ON (item_positions.account_name = items.account_name AND item_positions.item_id = items.id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
