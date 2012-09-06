.class public Lcom/google/android/apps/reader/content/StreamContentHandler;
.super Lcom/google/android/apps/reader/content/ItemsContentHandler;
.source "StreamContentHandler.java"


# instance fields
.field private mConnection:Ljava/net/URLConnection;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mExtras:Landroid/os/Bundle;

.field private final mItemList:Lcom/google/android/apps/reader/content/ItemList;

.field private mTimestamp:J

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;Landroid/os/Bundle;)V
    .registers 12
    .parameter "context"
    .parameter "itemList"
    .parameter "database"
    .parameter "fileCache"
    .parameter "extras"

    .prologue
    .line 78
    invoke-virtual {p2}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ItemsContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;Landroid/os/Bundle;)V

    .line 79
    iput-object p2, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    .line 80
    iput-object p3, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    iput-object p5, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mExtras:Landroid/os/Bundle;

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mValues:Landroid/content/ContentValues;

    .line 83
    return-void
.end method

.method private deleteItemPositions()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ItemList;->deleteItemPositions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    return-void
.end method

.method private getMaxPosition()I
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ItemList;->getMaxPosition(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method private static isContinuation(Ljava/net/URLConnection;)Z
    .registers 5
    .parameter "connection"

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 50
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, spec:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "c"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private replaceItemList(JLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "date"
    .parameter "continuation"
    .parameter "title"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mValues:Landroid/content/ContentValues;

    iget-wide v3, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mTimestamp:J

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/reader/content/ItemList;->replaceItemList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JJLjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private setItemPosition(Lorg/json/JSONObject;I)V
    .registers 10
    .parameter "item"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, externalId:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/reader/provider/ReaderItem;->getItemId(Ljava/lang/String;)J

    move-result-wide v3

    .line 99
    .local v3, itemId:J
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mItemList:Lcom/google/android/apps/reader/content/ItemList;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mValues:Landroid/content/ContentValues;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ItemList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V

    .line 100
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 4
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mTimestamp:J

    .line 109
    iput-object p1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mConnection:Ljava/net/URLConnection;

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleFeed(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mExtras:Landroid/os/Bundle;

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v1

    .line 119
    const-string v3, "continuation"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/reader/content/PlainText;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/StreamContentHandler;->replaceItemList(JLjava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/reader/content/StreamContentHandler;->mConnection:Ljava/net/URLConnection;

    invoke-static {v1}, Lcom/google/android/apps/reader/content/StreamContentHandler;->isContinuation(Ljava/net/URLConnection;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 123
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/StreamContentHandler;->getMaxPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 127
    :goto_2b
    const-string v2, "items"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v8, v6

    move v6, v1

    move v1, v8

    .line 129
    :goto_38
    if-ge v1, v5, :cond_4b

    .line 130
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 131
    invoke-direct {p0, v7, v6}, Lcom/google/android/apps/reader/content/StreamContentHandler;->setItemPosition(Lorg/json/JSONObject;I)V

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 125
    :cond_46
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/StreamContentHandler;->deleteItemPositions()V

    move v1, v6

    goto :goto_2b

    .line 135
    :cond_4b
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->handleFeed(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 138
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v5, v3}, Lcom/google/android/feeds/FeedLoader;->documentInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
