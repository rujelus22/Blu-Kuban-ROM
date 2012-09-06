.class public Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;
.super Ljava/net/ContentHandler;
.source "SubscriptionListContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/Account;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "account"
    .parameter "contentResolver"
    .parameter "database"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 57
    iput-object p2, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iput-object p3, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 60
    return-void
.end method

.method private clearCategories()V
    .registers 5

    .prologue
    .line 71
    const-string v0, "account_name = ?"

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 75
    iget-object v2, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "subscription_categories"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method private clearSubscriptions()V
    .registers 5

    .prologue
    .line 63
    const-string v0, "account_name = ?"

    .line 64
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "subscriptions"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private insertCategory(Ljava/lang/String;Lcom/google/feedreader/extrpc/Client$Category;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 99
    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Category;->getId()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 101
    const-string v2, "account_name"

    iget-object v3, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "tag_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "subscription_categories"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    return-void
.end method

.method private insertSubscription(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)V
    .registers 13
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mValues:Landroid/content/ContentValues;

    .line 80
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSortid()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getFirstitemmsec()J

    move-result-wide v5

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v7, v7

    .line 86
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 87
    const-string v9, "account_name"

    iget-object v10, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v10, v10, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v9, "_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v7, "id"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "sortid"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "firstitemmsec"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "html_url"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "subscriptions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 95
    return-void
.end method

.method private notifyChanged()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 11
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 117
    .local v3, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v3}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_50

    move-result-object v4

    .line 119
    .local v4, list:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 122
    iget-object v7, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->clearSubscriptions()V

    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->clearCategories()V

    .line 127
    invoke-virtual {v4}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getSubscriptionsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    .line 128
    .local v5, subscription:Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-direct {p0, v5}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->insertSubscription(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)V

    .line 130
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getId()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, subscriptionId:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getCategoriesList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/feedreader/extrpc/Client$Category;

    .line 132
    .local v0, category:Lcom/google/feedreader/extrpc/Client$Category;
    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->insertCategory(Ljava/lang/String;Lcom/google/feedreader/extrpc/Client$Category;)V
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_49

    goto :goto_39

    .line 137
    .end local v0           #category:Lcom/google/feedreader/extrpc/Client$Category;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #subscription:Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .end local v6           #subscriptionId:Ljava/lang/String;
    :catchall_49
    move-exception v7

    iget-object v8, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 119
    .end local v4           #list:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    :catchall_50
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7

    .line 135
    .restart local v4       #list:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    :cond_55
    :try_start_55
    iget-object v7, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_49

    .line 137
    iget-object v7, p0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;->notifyChanged()V

    .line 140
    invoke-virtual {v4}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getSubscriptionsCount()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method
