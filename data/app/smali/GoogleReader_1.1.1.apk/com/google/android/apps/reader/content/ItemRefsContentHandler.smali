.class Lcom/google/android/apps/reader/content/ItemRefsContentHandler;
.super Ljava/net/ContentHandler;
.source "ItemRefsContentHandler.java"


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mItemList:Lcom/google/android/apps/reader/content/ItemList;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "itemList"
    .parameter "database"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 51
    if-nez p1, :cond_b

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_b
    if-nez p2, :cond_13

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 60
    return-void
.end method

.method private deleteItemPositions()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ItemList;->deleteItemPositions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method

.method private replaceItemList(JJ)V
    .registers 14
    .parameter "timestamp"
    .parameter "date"

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mValues:Landroid/content/ContentValues;

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/reader/content/ItemList;->replaceItemList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JJLjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private setItemPosition(JI)V
    .registers 10
    .parameter "itemId"
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mValues:Landroid/content/ContentValues;

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ItemList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 68
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 15
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 78
    .local v9, timestamp:J
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .local v4, input:Ljava/io/InputStream;
    :try_start_8
    invoke-static {v4}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_30

    move-result-object v1

    .line 82
    .local v1, data:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v2

    .line 85
    .local v2, date:J
    iget-object v11, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    :try_start_18
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->deleteItemPositions()V

    .line 88
    const/4 v7, 0x0

    .local v7, position:I
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getItemRefsCount()I

    move-result v0

    .local v0, count:I
    :goto_20
    if-ge v7, v0, :cond_35

    .line 89
    invoke-virtual {v1, v7}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v8

    .line 90
    .local v8, ref:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-virtual {v8}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getId()J

    move-result-wide v5

    .line 91
    .local v5, itemId:J
    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->setItemPosition(JI)V
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_4b

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 82
    .end local v0           #count:I
    .end local v1           #data:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .end local v2           #date:J
    .end local v5           #itemId:J
    .end local v7           #position:I
    .end local v8           #ref:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    :catchall_30
    move-exception v11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v11

    .line 93
    .restart local v0       #count:I
    .restart local v1       #data:Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
    .restart local v2       #date:J
    .restart local v7       #position:I
    :cond_35
    :try_start_35
    invoke-direct {p0, v9, v10, v2, v3}, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->replaceItemList(JJ)V

    .line 94
    iget-object v11, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_4b

    .line 96
    iget-object v11, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent;->getItemRefsCount()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 96
    .end local v0           #count:I
    .end local v7           #position:I
    :catchall_4b
    move-exception v11

    iget-object v12, p0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
.end method
