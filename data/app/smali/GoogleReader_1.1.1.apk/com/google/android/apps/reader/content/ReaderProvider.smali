.class public Lcom/google/android/apps/reader/content/ReaderProvider;
.super Landroid/content/ContentProvider;
.source "ReaderProvider.java"

# interfaces
.implements Lcom/google/android/apps/reader/content/ContentLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/content/ReaderProvider$1;
    }
.end annotation


# static fields
.field protected static final ACCOUNTS:I = 0x11

.field private static final ACCOUNT_STREAMS:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final API_VERSION:I = 0x0

.field protected static final CLEANUP:I = 0xf

.field private static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "reader.db"

.field private static final DEFAULT_DATABASE_VERSION:I = 0x47

.field protected static final EMPTY_SUGGEST:I = 0x12

.field protected static final FAVICON:I = 0x1a

.field protected static final FRIENDS:I = 0xd

.field protected static final FRIEND_ID:I = 0xe

.field protected static final FRIEND_PHOTO:I = 0x10

.field private static final GINGERBREAD:I = 0x9

.field protected static final ITEMS:I = 0x7

.field protected static final ITEM_HTML:I = 0x13

.field protected static final ITEM_ID:I = 0x8

.field protected static final LINKS:I = 0xb

.field private static final NO_REFRESH:J = 0x7fffffffffffffffL

.field protected static final OVERVIEW:I = 0x1b

.field protected static final OVERVIEW_ID:I = 0x1c

.field private static final PATTERN_CRAWL_TIME_OFFSET:Ljava/util/regex/Pattern; = null

.field protected static final PREFERENCES:I = 0x14

.field protected static final PREFERENCE_ID:I = 0x16

.field protected static final RECOMMENDATIONS:I = 0x1d

.field protected static final RECOMMENDATION_ID:I = 0x1e

.field protected static final STREAMS:I = 0x18

.field protected static final STREAM_DETAILS:I = 0x1f

.field protected static final STREAM_ID:I = 0x19

.field protected static final STREAM_PREFERENCES:I = 0x15

.field protected static final STREAM_PREFERENCE_ID:I = 0x17

.field protected static final SUBSCRIPTIONS:I = 0x1

.field protected static final SUBSCRIPTION_ID:I = 0x2

.field protected static final SUGGEST_ITEMS:I = 0xc

.field protected static final SYNC:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ReaderProvider"

.field protected static final TAGS:I = 0x3

.field protected static final TAG_ID:I = 0x4

.field private static final TIMESTAMP_ACCURACY:J = 0x927c0L

.field protected static final UNREAD_COUNTS:I = 0x5

.field protected static final UNREAD_COUNT_ID:I = 0x6

.field protected static final USER_INFO:I = 0x9


# instance fields
.field private mConfig:Lcom/google/android/apps/reader/util/Config;

.field private mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field private mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

.field private mFriendsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsTables:Ljava/lang/String;

.field private mItemsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsTables:Ljava/lang/String;

.field private final mNotifyAuthFailure:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewTables:Ljava/lang/String;

.field private mStreamsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsTables:Ljava/lang/String;

.field private mTagsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTagsTables:Ljava/lang/String;

.field private mUnreadCountsProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUriMatcher:Landroid/content/UriMatcher;

.field private final mUserIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user/-/state/com.google/reading-list"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user/-/state/com.google/starred"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user/-/state/com.google/self"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/content/ReaderProvider;->ACCOUNT_STREAMS:[Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/reader/content/ReaderProvider;->API_VERSION:I

    .line 205
    const-string v0, "crawl_time\\s*<\\s*(-\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/content/ReaderProvider;->PATTERN_CRAWL_TIME_OFFSET:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 271
    const-string v0, "reader.db"

    const/16 v1, 0x47

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;-><init>(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "databaseName"
    .parameter "databaseVersion"

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUserIds:Ljava/util/Map;

    .line 263
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    .line 266
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabaseName:Ljava/lang/String;

    .line 267
    iput p2, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabaseVersion:I

    .line 268
    return-void
.end method

.method private blockingGetExternalId(Lcom/google/android/accounts/Account;J)Ljava/lang/String;
    .registers 6
    .parameter "account"
    .parameter "itemId"

    .prologue
    .line 2239
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v0

    .line 2240
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "external_id"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetStringColumn(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blockingGetFriendPhotoUrl(Lcom/google/android/accounts/Account;J)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2202
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v0

    .line 2203
    const-string v1, "photo_url"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetStringColumn(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2204
    if-eqz v0, :cond_27

    .line 2205
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2212
    :cond_27
    :goto_27
    return-object v0

    .line 2207
    :cond_28
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private blockingGetStringColumn(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "uri"
    .parameter "columnName"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2184
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    .local v2, projection:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 2187
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ReaderProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2189
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_22

    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2190
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_29

    move-result-object v0

    .line 2195
    if-eqz v6, :cond_21

    .line 2196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    :goto_21
    return-object v0

    .line 2195
    :cond_22
    if-eqz v6, :cond_27

    .line 2196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_27
    move-object v0, v3

    goto :goto_21

    .line 2195
    :catchall_29
    move-exception v0

    if-eqz v6, :cond_2f

    .line 2196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    throw v0
.end method

.method private blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUserIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2221
    if-eqz v0, :cond_b

    .line 2229
    :cond_a
    :goto_a
    return-object v0

    .line 2224
    :cond_b
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$UserInfo;->itemUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 2225
    const-string v1, "user_id"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetStringColumn(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    if-eqz v0, :cond_a

    .line 2227
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUserIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private createHttpPostContentHandler(Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;
    .registers 4
    .parameter "account"

    .prologue
    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v1

    return-object v1
.end method

.method private createItemList(Landroid/net/Uri;)Lcom/google/android/apps/reader/content/ItemList;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 1990
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1991
    .local v6, type:I
    const/16 v7, 0xc

    if-ne v6, v7, :cond_20

    .line 1992
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1993
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1994
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v5, 0x0

    .line 1995
    .local v5, streamId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 1996
    .local v3, query:Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 1997
    new-instance v7, Lcom/google/android/apps/reader/content/ItemList;

    invoke-direct {v7, v0, v3, v5}, Lcom/google/android/apps/reader/content/ItemList;-><init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    .end local v1           #context:Landroid/content/Context;
    :goto_1d
    return-object v7

    .restart local v1       #context:Landroid/content/Context;
    :cond_1e
    move-object v7, v8

    .line 1999
    goto :goto_1d

    .line 2002
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #query:Ljava/lang/String;
    .end local v5           #streamId:Ljava/lang/String;
    :cond_20
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 2003
    .restart local v0       #account:Lcom/google/android/accounts/Account;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 2004
    .restart local v5       #streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getExcludeTarget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2005
    .local v2, excludeTarget:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getRanking(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 2006
    .local v4, ranking:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2007
    .restart local v3       #query:Ljava/lang/String;
    if-eqz v3, :cond_3c

    .line 2008
    new-instance v7, Lcom/google/android/apps/reader/content/ItemList;

    invoke-direct {v7, v0, v3, v5}, Lcom/google/android/apps/reader/content/ItemList;-><init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 2009
    :cond_3c
    if-eqz v5, :cond_46

    if-eqz v4, :cond_46

    .line 2010
    new-instance v7, Lcom/google/android/apps/reader/content/ItemList;

    invoke-direct {v7, v0, v5, v2, v4}, Lcom/google/android/apps/reader/content/ItemList;-><init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_46
    move-object v7, v8

    .line 2012
    goto :goto_1d
.end method

.method private createItemRefsContentHandler(Lcom/google/android/apps/reader/content/ItemList;JLandroid/os/Bundle;)Ljava/net/ContentHandler;
    .registers 13
    .parameter "itemList"
    .parameter "maxAge"
    .parameter "extras"

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1688
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;

    invoke-direct {v0, p1, v5}, Lcom/google/android/apps/reader/content/ItemRefsContentHandler;-><init>(Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1691
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p1}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v7

    .line 1692
    .local v7, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0, v0, v7}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1695
    invoke-virtual {p0, v0, v7}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v3

    .line 1697
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;

    move-wide v1, p2

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;-><init>(JLjava/net/ContentHandler;Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 1699
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    return-object v0
.end method

.method private createItemsContentHandler(Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Lcom/google/android/apps/reader/net/HttpContentHandler;
    .registers 9
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1709
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;

    move-result-object v4

    .line 1710
    .local v4, fileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1711
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ItemsContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;Landroid/os/Bundle;)V

    .line 1712
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v2

    return-object v2
.end method

.method private createPreferencesContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;
    .registers 4
    .parameter "account"

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1907
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/reader/content/PreferencesContentHandler;

    invoke-direct {v1, v0, p1}, Lcom/google/android/apps/reader/content/PreferencesContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 1908
    .local v1, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v1

    .line 1909
    return-object v1
.end method

.method private createQuickAddContentHandler(Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;
    .registers 4
    .parameter "account"

    .prologue
    .line 1930
    new-instance v0, Lcom/google/android/apps/reader/content/QuickAddContentHandler;

    invoke-direct {v0}, Lcom/google/android/apps/reader/content/QuickAddContentHandler;-><init>()V

    .line 1931
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v1

    return-object v1
.end method

.method private createStreamPreferencesContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;
    .registers 4
    .parameter "account"

    .prologue
    .line 1919
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1920
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;

    invoke-direct {v1, v0, p1}, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 1921
    .local v1, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v1

    .line 1922
    return-object v1
.end method

.method private createTokenContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;
    .registers 3
    .parameter "account"

    .prologue
    .line 1894
    new-instance v0, Lcom/google/android/apps/reader/content/TokenContentHandler;

    invoke-direct {v0}, Lcom/google/android/apps/reader/content/TokenContentHandler;-><init>()V

    .line 1895
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1896
    return-object v0
.end method

.method private createVirtualStreamTables(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    const-string v1, "(SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 602
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v1, "com.google"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 604
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 606
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 608
    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, "NULL AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sortid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, "NULL AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "html_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, "NULL AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subscription_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "NULL AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sort_key_alpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, "NULL AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sort_key_manual"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, ") AS streams LEFT JOIN unread_counts ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, "unread_counts.account_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 617
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "unread_counts.stream_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 620
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    return-object v0
.end method

.method private feedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/database/MatrixCursor;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2035
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v6

    .line 2037
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->getItemCount(Landroid/net/Uri;I)I

    move-result v5

    .line 2038
    invoke-static {v5}, Lcom/google/android/apps/reader/net/ReaderUri;->roundUpItemCount(I)I

    move-result v8

    .line 2043
    const-wide v9, 0x7fffffffffffffffL

    .line 2044
    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->getMaxAge(Landroid/net/Uri;J)J

    move-result-wide v9

    .line 2045
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v9, v11

    if-nez v5, :cond_58

    const/4 v5, 0x1

    .line 2046
    :goto_26
    const-string v7, "max-age"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5a

    const/4 v7, 0x1

    .line 2047
    :goto_32
    if-eqz v5, :cond_5c

    if-eqz v7, :cond_5c

    const/4 v5, 0x1

    .line 2050
    :goto_37
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v11

    .line 2051
    const/4 v7, 0x1

    if-ne v11, v7, :cond_5e

    .line 2052
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 2053
    if-eqz v7, :cond_5e

    .line 2054
    const/4 v5, 0x0

    new-instance v9, Landroid/database/MatrixCursor;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    aput-object v9, p6, v5

    move-object/from16 v5, p0

    move-object/from16 v10, p7

    .line 2055
    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadDirectorySearch(Lcom/google/android/accounts/Account;Ljava/lang/String;ILandroid/database/MatrixCursor;Landroid/os/Bundle;)V

    move-object v5, v9

    .line 2169
    :goto_57
    return-object v5

    .line 2045
    :cond_58
    const/4 v5, 0x0

    goto :goto_26

    .line 2046
    :cond_5a
    const/4 v7, 0x0

    goto :goto_32

    .line 2047
    :cond_5c
    const/4 v5, 0x0

    goto :goto_37

    .line 2061
    :cond_5e
    packed-switch v11, :pswitch_data_294

    .line 2172
    :pswitch_61
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2072
    :pswitch_7d
    const-wide v7, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUserInfo(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2073
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadTags(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2074
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadSubscriptions(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2075
    const/16 v5, 0x18

    if-ne v11, v5, :cond_b0

    .line 2076
    sget-object v5, Lcom/google/android/apps/reader/content/ReaderProvider$1;->$SwitchMap$com$google$android$apps$reader$provider$ReaderContract$Streams$Filter:[I

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->getFilter(Landroid/net/Uri;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ordinal()I

    move-result v7

    aget v5, v5, v7

    sparse-switch v5, :sswitch_data_2d6

    .line 2085
    :cond_b0
    :goto_b0
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2086
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_57

    .line 2079
    :sswitch_cc
    sget-object v5, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/util/Experiment;->isDisabled()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 2080
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadFriends(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    goto :goto_b0

    .line 2092
    :pswitch_de
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadFriends(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2093
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2094
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2098
    :pswitch_104
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2099
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2103
    :pswitch_121
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemList(Landroid/net/Uri;)Lcom/google/android/apps/reader/content/ItemList;

    move-result-object v7

    .line 2104
    if-nez v7, :cond_133

    .line 2105
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_57

    .line 2107
    :cond_133
    invoke-virtual {v7}, Lcom/google/android/apps/reader/content/ItemList;->excludesRead()Z

    move-result v6

    if-eqz v6, :cond_142

    if-nez v5, :cond_142

    .line 2110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/android/apps/reader/content/ItemList;->deleteReadItemPositions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2112
    :cond_142
    invoke-virtual {v7}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v5

    .line 2116
    const-wide v11, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v11

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUserInfo(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2118
    sget-object v6, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/util/Experiment;->isDisabled()Z

    move-result v6

    if-eqz v6, :cond_16a

    .line 2120
    const-wide v11, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v11

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadFriends(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2126
    :cond_16a
    const-wide/32 v11, 0x927c0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v11

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2128
    invoke-virtual {v7}, Lcom/google/android/apps/reader/content/ItemList;->isSearch()Z

    move-result v5

    if-nez v5, :cond_182

    invoke-virtual {v7}, Lcom/google/android/apps/reader/content/ItemList;->isMagic()Z

    move-result v5

    if-eqz v5, :cond_19d

    :cond_182
    move-object/from16 v6, p0

    move-object/from16 v11, p7

    .line 2129
    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadItems(Lcom/google/android/apps/reader/content/ItemList;IJLandroid/os/Bundle;)V

    :goto_189
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2134
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    :cond_19d
    move-object/from16 v6, p0

    move-object/from16 v11, p7

    .line 2131
    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadStream(Lcom/google/android/apps/reader/content/ItemList;IJLandroid/os/Bundle;)V

    goto :goto_189

    .line 2137
    :pswitch_1a5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 2138
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadItem(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2139
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2142
    :pswitch_1c6
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Links;->getItemId(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v5

    .line 2143
    if-nez v5, :cond_1e8

    .line 2144
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item ID is missing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2146
    :cond_1e8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadItem(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2147
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2150
    :pswitch_209
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUserInfo(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2151
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2154
    :pswitch_226
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v12, v6

    move-wide v14, v9

    move-object/from16 v16, p7

    .line 2155
    invoke-direct/range {v11 .. v16}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadStreamDetails(Lcom/google/android/accounts/Account;Ljava/lang/String;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2156
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2160
    :pswitch_247
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadSubscriptions(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2161
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 2163
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadOverview(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2164
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2168
    :pswitch_276
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadRecommendations(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 2169
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_57

    .line 2061
    nop

    :pswitch_data_294
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_104
        :pswitch_104
        :pswitch_121
        :pswitch_1a5
        :pswitch_209
        :pswitch_61
        :pswitch_1c6
        :pswitch_121
        :pswitch_de
        :pswitch_de
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_7d
        :pswitch_7d
        :pswitch_61
        :pswitch_247
        :pswitch_61
        :pswitch_276
        :pswitch_276
        :pswitch_226
    .end packed-switch

    .line 2076
    :sswitch_data_2d6
    .sparse-switch
        0x1 -> :sswitch_cc
        0x8 -> :sswitch_cc
    .end sparse-switch
.end method

.method private getSubscriptionOrdering(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 826
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderProvider;->streamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 827
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getSubscriptionOrdering(Landroid/content/SharedPreferences;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 831
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :goto_8
    return-object v1

    :catch_9
    move-exception v1

    const/4 v1, 0x0

    goto :goto_8
.end method

.method private loadDirectorySearch(Lcom/google/android/accounts/Account;Ljava/lang/String;ILandroid/database/MatrixCursor;Landroid/os/Bundle;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1641
    new-instance v0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;

    invoke-direct {v0, p4, p1}, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;-><init>(Landroid/database/MatrixCursor;Lcom/google/android/accounts/Account;)V

    .line 1644
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1647
    invoke-static {p2}, Lcom/google/android/apps/reader/net/ReaderUri;->directorySearch(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1648
    const-string v2, "start"

    .line 1649
    const/4 v3, 0x0

    .line 1650
    const/16 v4, 0xa

    move v5, p3

    move-object v6, p5

    .line 1651
    invoke-static/range {v0 .. v6}, Lcom/google/android/feeds/FeedLoader;->loadIndexedFeed(Ljava/net/ContentHandler;Landroid/net/Uri;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1653
    return-void
.end method

.method private loadFriends(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 14
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1590
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1591
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->friendList()Landroid/net/Uri;

    move-result-object v8

    .line 1594
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/FriendsContentHandler;

    invoke-direct {v0, v7, p1, v4}, Lcom/google/android/apps/reader/content/FriendsContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1597
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1600
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1602
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v8}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1603
    return-void
.end method

.method private loadItem(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 15
    .parameter "account"
    .parameter "itemId"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1749
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemsContentHandler(Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1750
    .local v3, http:Lcom/google/android/apps/reader/net/HttpContentHandler;
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p2, v5, v6

    invoke-static {v5}, Lcom/google/android/apps/reader/net/ReaderUri;->createStreamItemsContentsData([J)Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1752
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1756
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, v1, v2, p4}, Lcom/google/android/apps/reader/content/ReaderProvider;->loadUserInfo(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 1759
    new-instance v0, Lcom/google/android/apps/reader/content/CachedItemContentHandler;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/reader/content/CachedItemContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V

    .line 1762
    .local v0, handler:Ljava/net/ContentHandler;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/apps/reader/net/ReaderUri;->streamItemsContents(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1763
    .local v9, uri:Landroid/net/Uri;
    invoke-static {v0, v9}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1764
    return-void
.end method

.method private loadItems(Lcom/google/android/apps/reader/content/ItemList;IJLandroid/os/Bundle;)V
    .registers 15
    .parameter "itemList"
    .parameter "itemCount"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1731
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v8

    .line 1733
    .local v8, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemRefsContentHandler(Lcom/google/android/apps/reader/content/ItemList;JLandroid/os/Bundle;)Ljava/net/ContentHandler;

    move-result-object v4

    .line 1735
    .local v4, refsHandler:Ljava/net/ContentHandler;
    invoke-direct {p0, v8, p5}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemsContentHandler(Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v5

    .local v5, itemsHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;
    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    move-object v7, p5

    .line 1738
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ItemsFeedResolver;->loadItems(Lcom/google/android/apps/reader/content/ItemList;IJLjava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 1740
    return-void
.end method

.method private loadOverview(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 14
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1847
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1848
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->overview()Landroid/net/Uri;

    move-result-object v8

    .line 1851
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/OverviewContentHandler;

    invoke-direct {v0, v7, p1, v4}, Lcom/google/android/apps/reader/content/OverviewContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1854
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1857
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1859
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v8}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1860
    return-void
.end method

.method private loadRecommendations(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 15
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1870
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1873
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v8, 0x32

    .line 1874
    .local v8, n:I
    invoke-static {v8}, Lcom/google/android/apps/reader/net/ReaderUri;->recommendationList(I)Landroid/net/Uri;

    move-result-object v9

    .line 1877
    .local v9, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;

    invoke-direct {v0, v7, p1, v4}, Lcom/google/android/apps/reader/content/RecommendationListContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1880
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1883
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1885
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v9}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1886
    return-void
.end method

.method private loadStream(Lcom/google/android/apps/reader/content/ItemList;IJLandroid/os/Bundle;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1778
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v11

    .line 1779
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;

    move-result-object v9

    .line 1781
    new-instance v5, Lcom/google/android/apps/reader/content/StreamContentHandler;

    move-object/from16 v7, p1

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/reader/content/StreamContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;Landroid/os/Bundle;)V

    .line 1782
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v5

    .line 1783
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v12

    .line 1784
    new-instance v9, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;

    move-wide/from16 v10, p3

    move-object/from16 v13, p1

    move-object v14, v8

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/apps/reader/content/CachedStreamContentHandler;-><init>(JLjava/net/ContentHandler;Lcom/google/android/apps/reader/content/ItemList;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 1785
    const/16 v5, 0x14

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ItemList;->createStreamContentsUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 1786
    const-string v6, "c"

    .line 1787
    move-object v0, v9

    move-object v1, v5

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/feeds/FeedLoader;->loadContinuedFeed(Ljava/net/ContentHandler;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1788
    return-void
.end method

.method private loadStreamDetails(Lcom/google/android/accounts/Account;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 16
    .parameter "account"
    .parameter "streamId"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1824
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1825
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1826
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/google/android/apps/reader/net/ReaderUri;->streamDetails(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1829
    .local v9, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;

    invoke-direct {v0, p1, p2, v8, v4}, Lcom/google/android/apps/reader/content/StreamDetailsContentHandler;-><init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1832
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1835
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1837
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v9}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1838
    return-void
.end method

.method private loadSubscriptions(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 15
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1610
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1611
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1612
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->subscriptionList()Landroid/net/Uri;

    move-result-object v9

    .line 1615
    .local v9, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;

    invoke-direct {v0, p1, v8, v4}, Lcom/google/android/apps/reader/content/SubscriptionListContentHandler;-><init>(Lcom/google/android/accounts/Account;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1618
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v3

    .line 1624
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1626
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v9}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1627
    return-void
.end method

.method private loadTags(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 14
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1567
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1568
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->tagList()Landroid/net/Uri;

    move-result-object v8

    .line 1571
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/TagListContentHandler;

    invoke-direct {v0, v7, p1, v4}, Lcom/google/android/apps/reader/content/TagListContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1574
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1577
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v3

    .line 1580
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1582
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v8}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1583
    return-void
.end method

.method private loadUnreadCounts(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 14
    .parameter "account"
    .parameter "maxAge"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1660
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1661
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->unreadCount()Landroid/net/Uri;

    move-result-object v8

    .line 1664
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;

    invoke-direct {v0, v7, p1, v4}, Lcom/google/android/apps/reader/content/UnreadCountContentHandler;-><init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1667
    .local v0, handler:Ljava/net/ContentHandler;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 1670
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v3

    .line 1673
    .end local v0           #handler:Ljava/net/ContentHandler;
    .local v3, handler:Ljava/net/ContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/CachedContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1675
    .end local v3           #handler:Ljava/net/ContentHandler;
    .restart local v0       #handler:Ljava/net/ContentHandler;
    invoke-static {v0, v8}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1676
    return-void
.end method

.method private loadUserInfo(Lcom/google/android/accounts/Account;JLandroid/os/Bundle;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1799
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->userInfo()Landroid/net/Uri;

    move-result-object v7

    .line 1801
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUserIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1802
    if-eqz v0, :cond_1f

    .line 1805
    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_1f
    new-instance v0, Lcom/google/android/apps/reader/content/UserInfoContentHandler;

    invoke-direct {v0, p1, v1, v4, p4}, Lcom/google/android/apps/reader/content/UserInfoContentHandler;-><init>(Lcom/google/android/accounts/Account;Landroid/content/ContentResolver;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 1812
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v3

    .line 1816
    new-instance v0, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;

    move-wide v1, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/CachedUserInfoContentHandler;-><init>(JLjava/net/ContentHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)V

    .line 1818
    invoke-static {v0, v7}, Lcom/google/android/feeds/FeedLoader;->loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V

    .line 1819
    return-void
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 2485
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2488
    .local v1, context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 2489
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getSyncToNetwork(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2490
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->requestSyncUpload(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 2493
    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 2494
    return-void
.end method

.method private retrieveFile(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2733
    if-nez p1, :cond_a

    .line 2734
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2736
    :cond_a
    if-nez p3, :cond_14

    .line 2737
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2739
    :cond_14
    if-nez p4, :cond_1e

    .line 2740
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2744
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;

    invoke-direct {v0, p4}, Lcom/google/android/apps/reader/net/FileOutputContentHandler;-><init>(Ljava/io/File;)V

    .line 2747
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    .line 2750
    invoke-static {p3, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Ljava/lang/String;Ljava/net/ContentHandler;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 2757
    return-void

    .line 2751
    :catch_2b
    move-exception v0

    .line 2753
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 2754
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2755
    throw v1
.end method

.method private retrieveFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2767
    if-nez p1, :cond_a

    .line 2768
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2770
    :cond_a
    if-nez p2, :cond_14

    .line 2771
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :cond_14
    :try_start_14
    new-instance v0, Lcom/google/android/apps/reader/net/FileOutputContentHandler;

    invoke-direct {v0, p2}, Lcom/google/android/apps/reader/net/FileOutputContentHandler;-><init>(Ljava/io/File;)V

    .line 2778
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Ljava/lang/String;Ljava/net/ContentHandler;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 2785
    return-void

    .line 2779
    :catch_1d
    move-exception v0

    .line 2781
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 2782
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2783
    throw v1
.end method

.method private sortKeyAlpha()Ljava/lang/String;
    .registers 5

    .prologue
    .line 845
    const-string v0, "(id LIKE \'%/label/%\' AND subscription_categories.tag_id is NULL)"

    .line 846
    const-string v1, "(id LIKE \'feed/%\' OR id LIKE \'webfeed/%\')"

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " * 2) + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sortKeyManual(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x29

    const/16 v6, 0x28

    .line 861
    if-nez p1, :cond_e

    .line 862
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_e
    if-nez p2, :cond_18

    .line 865
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderProvider;->getSubscriptionOrdering(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 869
    const-string v0, "0"

    .line 908
    :goto_24
    return-object v0

    .line 871
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 872
    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_48

    .line 873
    const-string v1, "ReaderProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid subscription-ordering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v0, "0"

    goto :goto_24

    .line 876
    :cond_48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    const/4 v3, 0x0

    :goto_57
    if-ge v3, v1, :cond_93

    .line 883
    if-eqz v3, :cond_60

    .line 884
    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_60
    mul-int/lit8 v4, v3, 0x8

    .line 887
    add-int/lit8 v5, v4, 0x8

    .line 888
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    const-string v5, "sortid = \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    const-string v4, " * "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    sub-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 907
    :cond_93
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method


# virtual methods
.method protected buildDatabaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    const/4 v3, 0x0

    .line 915
    const/4 v7, 0x0

    .line 916
    const/4 v9, 0x0

    .line 917
    const/4 v4, 0x0

    .line 918
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 919
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v5

    .line 920
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v6

    .line 921
    packed-switch v6, :pswitch_data_726

    .line 1308
    :pswitch_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 923
    :pswitch_2d
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->isUnsynchronized(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 925
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 926
    const-string v5, "committed IS NULL"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 927
    const-string v5, "pending_actions"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1310
    :goto_45
    if-eqz v3, :cond_70f

    .line 1311
    if-nez v4, :cond_6f6

    :goto_49
    move-object v8, v3

    :goto_4a
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 1313
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 930
    :cond_55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Full account list query is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    :pswitch_5d
    const-string v6, "stream_id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 934
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 936
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 939
    :pswitch_73
    const-string v6, "unread_counts.account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 940
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 942
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUnreadCountsProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 943
    const-string v5, "unread_counts"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 944
    goto :goto_45

    .line 946
    :pswitch_91
    const-string v6, "subscriptions"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 947
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 948
    const-string v6, "id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 949
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 950
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 951
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 954
    :pswitch_b1
    const-string v6, "subscriptions.account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 955
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v6, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 958
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mSubscriptionsTables:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    new-instance v8, Ljava/util/HashMap;

    iget-object v10, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mSubscriptionsProjectionMap:Ljava/util/Map;

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 962
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 963
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getTagId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 964
    if-eqz v10, :cond_f1

    .line 967
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a database query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_f1
    if-eqz v11, :cond_1f5

    .line 970
    invoke-static {v11}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_722

    .line 971
    const-string v10, "com.google.reader.cursor.extra.USER_ID"

    move-object/from16 v0, p6

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 972
    if-nez v10, :cond_1ef

    .line 973
    const-string v10, "ReaderProvider"

    const-string v12, "Failed to get user ID"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 979
    :goto_10c
    const-string v11, " AND "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 980
    const-string v11, "subscription_categories.account_name"

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 981
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 982
    const-string v11, "subscriptions.account_name"

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 983
    const-string v11, " AND "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 984
    const-string v11, "subscription_categories.subscription_id"

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 985
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 986
    const-string v11, "subscriptions.id"

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 987
    const-string v11, " AND "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 988
    const-string v11, "subscription_categories.tag_id = "

    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 989
    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 992
    const-string v11, ", "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "subscription_categories"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v3

    move-object v3, v13

    .line 1015
    :goto_14f
    if-eqz v3, :cond_239

    .line 1016
    :goto_151
    const-string v11, "sort_key_manual"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5, v3}, Lcom/google/android/apps/reader/content/ReaderProvider;->sortKeyManual(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sort_key_manual"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v3, "sort_key_alpha"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->sortKeyAlpha()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " AS "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "sort_key_alpha"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v3, "sort_key_manual"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ab

    const-string v3, "sort_key_alpha"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71e

    .line 1022
    :cond_1ab
    const-string v3, "sort_key_manual"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71a

    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sort_key_alpha"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1029
    :goto_1cc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", title COLLATE NOCASE ASC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1031
    :goto_1df
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v10

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    .line 1033
    goto/16 :goto_45

    .line 975
    :cond_1ef
    invoke-static {v11, v10}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_10c

    .line 995
    :cond_1f5
    const-string v10, " LEFT JOIN subscription_categories ON ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v10, "subscriptions.account_name"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v10, " = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v10, "subscription_categories.account_name"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v10, " AND "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v10, "subscriptions.id = subscription_categories.subscription_id"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->isUntagged(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_22c

    .line 1005
    const-string v10, " AND "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1006
    const-string v10, "subscription_categories.subscription_id is NULL"

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v3, v11

    goto/16 :goto_14f

    .line 1009
    :cond_22c
    const-string v3, "subscriptions.id, subscription_categories.subscription_id"

    .line 1010
    const-string v10, "tag_count"

    const-string v12, "COUNT(subscription_categories.tag_id) AS tag_count"

    invoke-interface {v8, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    move-object v3, v11

    goto/16 :goto_14f

    .line 1015
    :cond_239
    const-string v3, "user/-/state/com.google/root"

    goto/16 :goto_151

    .line 1036
    :pswitch_23d
    const-string v6, "tags"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1037
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1038
    const-string v6, "id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1039
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1040
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1041
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1044
    :pswitch_25d
    const-string v6, "tags"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1045
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1046
    const-string v6, "account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1047
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v6, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1052
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1053
    const-string v6, "id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1054
    const-string v6, " LIKE \'%/label/%\'"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getSubscriptionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1057
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getItemId(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v8

    .line 1058
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mTagsTables:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    new-instance v11, Ljava/util/HashMap;

    iget-object v12, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mTagsProjectionMap:Ljava/util/Map;

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1061
    if-eqz v6, :cond_36f

    .line 1062
    const-string v3, " LEFT JOIN subscription_categories ON ("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v3, "tags.account_name = subscription_categories.account_name"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v3, " AND "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string v3, "tags.id = subscription_categories.tag_id"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string v3, " AND "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v3, "subscription_categories.subscription_id = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v3, "tags.id, subscription_categories.tag_id"

    .line 1073
    const-string v6, "subscription_count"

    const-string v8, "COUNT(subscription_categories.subscription_id) AS subscription_count"

    invoke-interface {v11, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    :goto_2d0
    const-string v6, "sort_key_manual"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "user/-/state/com.google/root"

    invoke-direct {p0, v5, v12}, Lcom/google/android/apps/reader/content/ReaderProvider;->sortKeyManual(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " AS "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "sort_key_manual"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string v5, "sort_key_alpha"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->sortKeyAlpha()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " AS "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "sort_key_alpha"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v5, "sort_key_manual"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32c

    const-string v5, "sort_key_alpha"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_716

    .line 1115
    :cond_32c
    const-string v5, "sort_key_manual"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_712

    .line 1118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sort_key_alpha"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1122
    :goto_34d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", label COLLATE NOCASE ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1124
    :goto_360
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    .line 1126
    goto/16 :goto_45

    .line 1076
    :cond_36f
    if-eqz v8, :cond_399

    .line 1079
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1080
    const-string v6, "item_categories.item_id = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1082
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1083
    const-string v6, "item_categories.stream_id = tags.id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1084
    const-string v6, ", "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_categories"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2d0

    .line 1086
    :cond_399
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->withoutSubscriptions(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3d1

    .line 1087
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1088
    const-string v6, "subscription_categories.subscription_id is NULL"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1089
    const-string v6, "subscription_count"

    const-string v8, "0"

    invoke-interface {v11, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :goto_3b0
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->withSubscriptions(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3db

    .line 1102
    :goto_3b6
    const-string v6, " JOIN subscription_categories ON ("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v6, "tags.account_name = subscription_categories.account_name"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v6, " AND "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string v6, "tags.id = subscription_categories.tag_id"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v6, ")"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2d0

    .line 1092
    :cond_3d1
    const-string v3, "tags.id, subscription_categories.tag_id"

    .line 1093
    const-string v6, "subscription_count"

    const-string v8, "COUNT(subscription_categories.subscription_id) AS subscription_count"

    invoke-interface {v11, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b0

    .line 1100
    :cond_3db
    const-string v6, " LEFT"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b6

    .line 1129
    :pswitch_3e1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 1130
    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/reader/content/ReaderProvider;->createVirtualStreamTables(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1131
    new-instance v8, Ljava/util/HashMap;

    iget-object v10, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mStreamsProjectionMap:Ljava/util/Map;

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1133
    invoke-static {v6}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_418

    .line 1135
    const-string v3, "streams.id, subscription_categories.tag_id"

    .line 1136
    const-string v6, "subscription_count"

    const-string v10, "COUNT(subscription_categories.subscription_id) AS subscription_count"

    invoke-interface {v8, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v6, "LEFT JOIN subscription_categories ON ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v6, "streams.account_name = subscription_categories.account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    const-string v6, "streams.id = subscription_categories.tag_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_418
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1147
    goto/16 :goto_45

    .line 1150
    :pswitch_428
    const-string v6, "friends"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1151
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1152
    const-string v6, "contact_id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1153
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1154
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1155
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1158
    :pswitch_448
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->isFollowing(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_47b

    .line 1159
    const-string v6, "stream"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1160
    const-string v6, " IS NOT NULL"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1161
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1162
    const-string v6, "has_shared_items"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1163
    const-string v6, " != 0"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1164
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1165
    const-string v6, "is_me"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1166
    const-string v6, " = 0"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1167
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1169
    :cond_47b
    const-string v6, "friends.account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1170
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1172
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFriendsTables:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1173
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFriendsProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1174
    goto/16 :goto_45

    .line 1176
    :pswitch_49a
    const-string v6, "items"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1177
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1178
    const-string v6, "account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1179
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1181
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1182
    const-string v5, "items"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1183
    const-string v5, "."

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1184
    const-string v5, "id"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1185
    const-string v5, " = "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1186
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1187
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsTables:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1188
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsProjectionMap:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1190
    const-string v6, "position"

    const-string v8, "0"

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1192
    goto/16 :goto_45

    .line 1196
    :pswitch_4ef
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemList(Landroid/net/Uri;)Lcom/google/android/apps/reader/content/ItemList;

    move-result-object v8

    .line 1197
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 1198
    if-eqz v8, :cond_56a

    .line 1199
    invoke-virtual {v8}, Lcom/google/android/apps/reader/content/ItemList;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v5

    .line 1200
    const-string v10, "items.account_name = "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v10, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1202
    const-string v10, " AND "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1203
    const-string v10, "item_positions.account_name = "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v10, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1205
    const-string v10, " AND "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1206
    const-string v10, "item_positions.item_list_id = "

    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-virtual {v8}, Lcom/google/android/apps/reader/content/ItemList;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1208
    const-string v8, " AND "

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1209
    const-string v8, "item_positions.item_id = items.id"

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "item_positions, "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsTables:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1211
    const/16 v8, 0xc

    if-ne v6, v8, :cond_564

    .line 1212
    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSuggestProjectionMap(Lcom/google/android/accounts/Account;)Ljava/util/Map;

    move-result-object v5

    .line 1213
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1217
    :goto_554
    if-eqz p5, :cond_55d

    .line 1218
    const-string v5, "ReaderProvider"

    const-string v6, "Sort order ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_55d
    const-string v5, "item_positions.position"

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_45

    .line 1215
    :cond_564
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_554

    .line 1221
    :cond_56a
    if-eqz v10, :cond_5c2

    const/4 v8, 0x7

    if-ne v6, v8, :cond_5c2

    .line 1222
    const-string v6, "items.account_name = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v6, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1224
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1225
    const-string v6, "item_categories.account_name = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1226
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1227
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1228
    const-string v5, "item_categories.item_id = items.id"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1229
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1230
    const-string v5, "item_categories.stream_id = "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1231
    invoke-virtual {v2, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item_categories, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsTables:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1233
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    goto/16 :goto_45

    .line 1237
    :cond_5c2
    const-string v5, "0"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsTables:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1239
    iget-object v5, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1241
    goto/16 :goto_45

    .line 1244
    :pswitch_5d7
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Links;->getItemId(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v6

    .line 1245
    if-eqz v6, :cond_620

    .line 1246
    const-string v8, "item_links.account_name = "

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1248
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item_links.item_id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Links;->getRel(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1251
    if-eqz v5, :cond_615

    .line 1252
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1253
    const-string v6, "item_links.rel = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1256
    :cond_615
    const-string v5, "item_links"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1257
    goto/16 :goto_45

    .line 1259
    :cond_620
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item was not specified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    :pswitch_639
    const-string v6, "account_name = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1265
    const-string v5, "user_info"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1266
    goto/16 :goto_45

    .line 1268
    :pswitch_64e
    const-string v6, "stream_id"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1269
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1270
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1271
    const-string v6, " AND "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1272
    const-string v6, "account_name"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1273
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1275
    const-string v5, "stream_details"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1276
    goto/16 :goto_45

    .line 1278
    :pswitch_67e
    const-string v4, "overview"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1279
    const-string v4, "."

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1280
    const-string v4, "sid"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1281
    const-string v4, " = "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1282
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1283
    const-string v4, " AND "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1286
    :pswitch_69e
    const-string v4, "overview"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1287
    const-string v4, "."

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1288
    const-string v4, "account_name = "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v4, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1290
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mOverviewTables:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1291
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mOverviewProjectionMap:Ljava/util/Map;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1292
    const-string v4, "position ASC"

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1293
    goto/16 :goto_45

    .line 1295
    :pswitch_6c4
    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1296
    const-string v4, " = "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1297
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1298
    const-string v4, " AND "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1301
    :pswitch_6da
    const-string v4, "account_name"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1302
    const-string v4, " = "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v4, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1304
    const-string v4, "recommendations"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1305
    const-string v4, "position ASC"

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, p5

    .line 1306
    goto/16 :goto_45

    .line 1311
    :cond_6f6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_49

    :cond_70f
    move-object v8, v4

    goto/16 :goto_4a

    :cond_712
    move-object/from16 v5, p5

    goto/16 :goto_34d

    :cond_716
    move-object/from16 v5, p5

    goto/16 :goto_360

    :cond_71a
    move-object/from16 v3, p5

    goto/16 :goto_1cc

    :cond_71e
    move-object/from16 v3, p5

    goto/16 :goto_1df

    :cond_722
    move-object v10, v11

    goto/16 :goto_10c

    .line 921
    nop

    :pswitch_data_726
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_91
        :pswitch_25d
        :pswitch_23d
        :pswitch_73
        :pswitch_5d
        :pswitch_4ef
        :pswitch_49a
        :pswitch_639
        :pswitch_14
        :pswitch_5d7
        :pswitch_4ef
        :pswitch_448
        :pswitch_428
        :pswitch_14
        :pswitch_14
        :pswitch_2d
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_3e1
        :pswitch_14
        :pswitch_69e
        :pswitch_67e
        :pswitch_6da
        :pswitch_6c4
        :pswitch_64e
    .end packed-switch
.end method

.method protected buildUnionQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1319
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v2

    .line 1320
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1321
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_1aa

    .line 1377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a UNION query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1323
    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1324
    invoke-static {v2, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p3

    .line 1380
    :goto_3b
    const-string v2, "sort_key_manual"

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "sort_key_alpha"

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 1382
    :cond_51
    const-string v2, "sort_key_manual"

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", sort_key_alpha"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    :goto_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", label COLLATE NOCASE ASC"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 1391
    :goto_86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_156

    .line 1393
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/reader/content/ReaderProvider;->buildDatabaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1411
    :goto_9f
    return-object v2

    .line 1328
    :pswitch_a0
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->getFilter(Landroid/net/Uri;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    move-result-object v4

    .line 1329
    sget-object v5, Lcom/google/android/apps/reader/content/ReaderProvider$1;->$SwitchMap$com$google$android$apps$reader$provider$ReaderContract$Streams$Filter:[I

    invoke-virtual {v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1b2

    .line 1373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected filter: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1331
    :pswitch_c8
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    :goto_df
    move-object v5, v2

    .line 1375
    goto/16 :goto_3b

    .line 1336
    :pswitch_e2
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 1337
    if-eqz v4, :cond_101

    .line 1338
    sget-object v5, Lcom/google/android/apps/reader/content/ReaderProvider;->ACCOUNT_STREAMS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_ec
    if-ge v7, v6, :cond_fe

    aget-object v8, v5, v7

    .line 1339
    invoke-static {v8, v4}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1340
    invoke-static {v2, v8}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    add-int/lit8 v7, v7, 0x1

    goto :goto_ec

    :cond_fe
    move-object/from16 v2, p3

    goto :goto_df

    .line 1343
    :cond_101
    const-string v4, "ReaderProvider"

    const-string v5, "Unable to query streams because User ID is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const-string v4, "0"

    .line 1350
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    .line 1352
    goto :goto_df

    .line 1354
    :pswitch_113
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->untaggedUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1356
    goto :goto_df

    .line 1358
    :pswitch_124
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1359
    goto :goto_df

    .line 1361
    :pswitch_12e
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1362
    goto :goto_df

    .line 1364
    :pswitch_138
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->withSubscriptions(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1365
    goto :goto_df

    .line 1367
    :pswitch_142
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->withoutSubscriptions(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1368
    goto :goto_df

    .line 1370
    :pswitch_14c
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->followingUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    .line 1371
    goto :goto_df

    .line 1397
    :cond_156
    if-eqz p4, :cond_174

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection arguments not supported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1403
    :cond_174
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1404
    const/4 v4, 0x0

    :goto_17b
    array-length v6, v2

    if-ge v4, v6, :cond_195

    .line 1405
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    move-object/from16 v10, p2

    move-object v11, v5

    move-object/from16 v14, p6

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/apps/reader/content/ReaderProvider;->buildDatabaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 1404
    add-int/lit8 v4, v4, 0x1

    goto :goto_17b

    .line 1409
    :cond_195
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1410
    const/4 v4, 0x0

    .line 1411
    invoke-virtual {v3, v2, v7, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9f

    :cond_1a1
    move-object/from16 v2, p5

    goto/16 :goto_72

    :cond_1a5
    move-object/from16 v7, p5

    goto/16 :goto_86

    .line 1321
    nop

    :pswitch_data_1aa
    .packed-switch 0x18
        :pswitch_a0
        :pswitch_2e
    .end packed-switch

    .line 1329
    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_e2
        :pswitch_113
        :pswitch_124
        :pswitch_12e
        :pswitch_138
        :pswitch_142
        :pswitch_14c
    .end packed-switch
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2431
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 2450
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    :goto_10
    return v0

    .line 2433
    :pswitch_11
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2434
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getTagId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2435
    if-eqz v2, :cond_2e

    .line 2436
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 2437
    if-nez v3, :cond_2a

    .line 2438
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2439
    goto :goto_10

    .line 2441
    :cond_2a
    invoke-static {v2, v3}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2443
    :cond_2e
    invoke-static {v0, v1, p2, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->subscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;[Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2444
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2445
    array-length v0, p2

    goto :goto_10

    :cond_39
    move v0, v4

    .line 2447
    goto :goto_10

    .line 2431
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method protected final createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1986
    const-string v0, "reader"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v0

    return-object v0
.end method

.method protected createAuthenticatedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/reader/net/HttpContentHandler;
    .registers 10
    .parameter "handler"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 1973
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1974
    .local v5, notifyAuthFailure:Z
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1975
    .local v2, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/reader/net/ReaderContentHandler;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/net/ReaderContentHandler;-><init>(Ljava/net/ContentHandler;Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;
    .registers 5

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 668
    .local v1, context:Landroid/content/Context;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "filecache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v0, cacheDir:Ljava/io/File;
    new-instance v2, Lcom/google/android/apps/reader/content/ReaderFileCache;

    iget v3, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabaseVersion:I

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;-><init>(Ljava/io/File;I)V

    return-object v2
.end method

.method protected createFriendsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    const-string v1, "_id"

    const-string v2, "friends._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v1, "account_name"

    const-string v2, "friends.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v1, "photo_uri"

    const-string v2, "photo_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "stream"

    const-string v2, "stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "email_address"

    const-string v2, "email_address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "is_me"

    const-string v2, "is_me"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "is_hidden"

    const-string v2, "is_hidden"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "is_new"

    const-string v2, "is_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "uses_reader"

    const-string v2, "uses_reader"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "is_blocked"

    const-string v2, "is_blocked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "has_profile"

    const-string v2, "has_profile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "is_ignored"

    const-string v2, "is_ignored"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v1, "is_new_follower"

    const-string v2, "is_new_follower"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v1, "is_anonymous"

    const-string v2, "is_anonymous"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v1, "has_shared_items"

    const-string v2, "has_shared_items"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "photo_url"

    const-string v2, "photo_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v1, "id"

    const-string v2, "stream AS id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v1, "label"

    const-string v2, "display_name AS label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v1, "sortid"

    const-string v2, "NULL AS sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v1, "html_url"

    const-string v2, "NULL AS html_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v1, "subscription_count"

    const-string v2, "NULL AS subscription_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-object v0
.end method

.method protected createFriendsTables()Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    const-string v0, "friends LEFT JOIN unread_counts ON (friends.account_name = unread_counts.account_name AND friends.stream = unread_counts.stream_id)"

    return-object v0
.end method

.method protected createItemsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createFriendsProjectionMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 476
    const-string v1, "_id"

    const-string v2, "items._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "account_name"

    const-string v2, "items.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "external_id"

    const-string v2, "external_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "crawl_time"

    const-string v2, "crawl_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v1, "title_plaintext"

    const-string v2, "title_plaintext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v1, "author"

    const-string v2, "author"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v1, "alternate_href"

    const-string v2, "alternate_href"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v1, "source_title"

    const-string v2, "source_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v1, "source_title_plaintext"

    const-string v2, "source_title_plaintext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v1, "source_alternate_href"

    const-string v2, "source_alternate_href"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v1, "source_stream_id"

    const-string v2, "source_stream_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "published"

    const-string v2, "published"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v1, "updated"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "locked"

    const-string v2, "locked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v1, "read"

    const-string v2, "read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "starred"

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "shared"

    const-string v2, "shared"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "source_link"

    const-string v2, "source_link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v1, "source_post"

    const-string v2, "source_post"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "liked"

    const-string v2, "liked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v1, "like_count"

    const-string v2, "like_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "broadcaster"

    const-string v2, "broadcaster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v1, "annotation"

    const-string v2, "annotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-object v0
.end method

.method protected createItemsTables()Ljava/lang/String;
    .registers 3

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "items LEFT JOIN friends ON ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    const-string v1, "items.account_name = friends.account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "items.broadcaster = friends.stream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createOverviewProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    const-string v1, "_id"

    const-string v2, "overview._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "account_name"

    const-string v2, "overview.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "account_type"

    const-string v2, "overview.account_type AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "sid"

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "summary"

    const-string v2, "summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "image_url"

    const-string v2, "image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object v0
.end method

.method protected createOverviewTables()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    const-string v0, "overview LEFT JOIN subscriptions ON (overview.account_name = subscriptions.account_name AND overview.sid = subscriptions.id) LEFT JOIN unread_counts ON (overview.account_name = unread_counts.account_name AND overview.sid = unread_counts.stream_id)"

    return-object v0
.end method

.method protected createSQLiteOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 6

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 656
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/reader/content/ReaderDatabase;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabaseName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabaseVersion:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-object v1
.end method

.method protected createStreamsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    const-string v1, "_id"

    const-string v2, "streams._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v1, "account_name"

    const-string v2, "streams.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "label"

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "sortid"

    const-string v2, "NULL AS sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "html_url"

    const-string v2, "NULL AS html_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "subscription_count"

    const-string v2, "NULL AS subscription_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-object v0
.end method

.method protected createSubscriptionsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v1, "_id"

    const-string v2, "subscriptions._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "account_name"

    const-string v2, "subscriptions.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "sortid"

    const-string v2, "sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "firstitemmsec"

    const-string v2, "firstitemmsec"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "html_url"

    const-string v2, "html_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "id"

    const-string v2, "id AS id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "label"

    const-string v2, "title AS label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "sortid"

    const-string v2, "sortid AS sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "html_url"

    const-string v2, "html_url AS html_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "subscription_count"

    const-string v2, "NULL AS subscription_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-object v0
.end method

.method protected createSubscriptionsTables()Ljava/lang/String;
    .registers 2

    .prologue
    .line 557
    const-string v0, "subscriptions LEFT JOIN unread_counts ON (subscriptions.account_name = unread_counts.account_name AND subscriptions.id = unread_counts.stream_id)"

    return-object v0
.end method

.method protected createSuggestProjectionMap(Lcom/google/android/accounts/Account;)Ljava/util/Map;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    const-string v1, "_id"

    const-string v2, "items._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v1, "suggest_text_1"

    const-string v2, "title_plaintext AS suggest_text_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "suggest_text_2"

    const-string v2, "source_title_plaintext AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 527
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 528
    const-string v3, "subscription"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 529
    const-string v2, "suggest_icon_1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggest_icon_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v2, "/0?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 534
    if-gez v2, :cond_66

    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Item ID not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_66
    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 538
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    const-string v2, "suggest_intent_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggest_intent_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "suggest_shortcut_id"

    const-string v2, "\'_-1\' AS suggest_shortcut_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-object v0
.end method

.method protected createSyncCallable(Lcom/google/android/accounts/Account;I)Ljava/util/concurrent/Callable;
    .registers 12
    .parameter "account"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "I)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2462
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2463
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2464
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v4, p0

    .line 2465
    .local v4, loader:Lcom/google/android/apps/reader/content/ContentLoader;
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createTokenContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v5

    .line 2466
    .local v5, tokenHandler:Ljava/net/ContentHandler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createPreferencesContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v6

    .line 2467
    .local v6, preferencesHandler:Ljava/net/ContentHandler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createStreamPreferencesContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v7

    .line 2468
    .local v7, streamPreferencesHandler:Ljava/net/ContentHandler;
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createHttpPostContentHandler(Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v8

    .line 2469
    .local v8, httpPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;
    new-instance v0, Lcom/google/android/apps/reader/content/ReaderSync;

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/reader/content/ReaderSync;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/content/ContentLoader;Ljava/net/ContentHandler;Ljava/net/ContentHandler;Ljava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;)V

    .line 2471
    .local v0, sync:Lcom/google/android/apps/reader/content/ReaderSync;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/content/ReaderSync;->setMode(I)V

    .line 2472
    return-object v0
.end method

.method protected createSynchronizedContentHandler(Ljava/net/ContentHandler;Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;
    .registers 5
    .parameter "handler"
    .parameter "account"

    .prologue
    .line 1955
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSyncCallable(Lcom/google/android/accounts/Account;I)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 1956
    .local v0, precondition:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    new-instance v1, Lcom/google/android/apps/reader/content/PreconditionContentHandler;

    invoke-direct {v1, p1, v0}, Lcom/google/android/apps/reader/content/PreconditionContentHandler;-><init>(Ljava/net/ContentHandler;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

.method protected createTagsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    const-string v1, "_id"

    const-string v2, "tags._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "account_name"

    const-string v2, "tags.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "label"

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "sortid"

    const-string v2, "sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "id"

    const-string v2, "id AS id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "label"

    const-string v2, "label AS label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "sortid"

    const-string v2, "sortid AS sortid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "html_url"

    const-string v2, "NULL AS html_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "subscription_count"

    const-string v2, "subscription_count AS subscription_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-object v0
.end method

.method protected createTagsTables()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    const-string v0, "tags LEFT JOIN unread_counts ON (tags.account_name = unread_counts.account_name AND tags.id = unread_counts.stream_id)"

    return-object v0
.end method

.method protected createUnreadCountsProjectionMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "account_name"

    const-string v2, "unread_counts.account_name AS account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "account_type"

    const-string v2, "\'com.google\' AS account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "stream_id"

    const-string v2, "stream_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v1, "unread_count"

    const-string v2, "unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "max_unread_count"

    const-string v2, "max_unread_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v1, "newest_item_timestamp"

    const-string v2, "newest_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "last_read_item_timestamp"

    const-string v2, "last_read_item_timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-object v0
.end method

.method protected createUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;
    .registers 5
    .parameter

    .prologue
    .line 718
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 719
    const-string v1, "accounts"

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 720
    const-string v1, "sync"

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 721
    const-string v1, "cleanup"

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 722
    const-string v1, "preferences"

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    const-string v1, "preferences/*"

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    const-string v1, "stream-preferences"

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 725
    const-string v1, "stream-preferences/*"

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 726
    const-string v1, "subscriptions"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    const-string v1, "subscriptions/*"

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 728
    const-string v1, "recommendations"

    const/16 v2, 0x1d

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    const-string v1, "recommendations/*"

    const/16 v2, 0x1e

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 730
    const-string v1, "tags"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    const-string v1, "tags/*"

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 732
    const-string v1, "streams"

    const/16 v2, 0x18

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 733
    const-string v1, "streams/*"

    const/16 v2, 0x19

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    const-string v1, "friends"

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 735
    const-string v1, "friends/#"

    const/16 v2, 0xe

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    const-string v1, "friend-photos/#"

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    const-string v1, "unread-counts"

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 738
    const-string v1, "unread-counts/*"

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    const-string v1, "items"

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 740
    const-string v1, "items/*"

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 741
    const-string v1, "item_html/*"

    const/16 v2, 0x13

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 742
    const-string v1, "links"

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 743
    const-string v1, "user-info"

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    const-string v1, "overview"

    const/16 v2, 0x1b

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 745
    const-string v1, "overview/*"

    const/16 v2, 0x1c

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 746
    const-string v1, "stream-details/*"

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    const-string v1, "favicons/*"

    const/16 v2, 0x1a

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 748
    const-string v1, "suggest_items/search_suggest_query"

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 749
    const-string v1, "suggest_items/search_suggest_query/*"

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 750
    return-object v0
.end method

.method public databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1425
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1426
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1433
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/apps/reader/content/ReaderProvider;->buildDatabaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1439
    invoke-virtual {v2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1440
    if-eqz v0, :cond_3a

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1442
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1443
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 1444
    invoke-interface {v1, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1446
    :cond_3a
    return-object v1

    .line 1429
    :pswitch_3b
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/apps/reader/content/ReaderProvider;->buildUnionQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 1426
    :pswitch_data_40
    .packed-switch 0x18
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2651
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    move v0, v6

    .line 2718
    :goto_e
    return v0

    .line 2653
    :sswitch_f
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2654
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2655
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->unsubscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2656
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v7

    .line 2657
    goto :goto_e

    :cond_22
    move v0, v6

    .line 2659
    goto :goto_e

    .line 2663
    :sswitch_24
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2664
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2665
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getItemId(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v3

    .line 2666
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getSubscriptionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 2667
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 2668
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 2669
    if-nez v5, :cond_49

    .line 2670
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2671
    goto :goto_e

    .line 2673
    :cond_49
    invoke-static {v2, v5}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2675
    :cond_4d
    if-eqz v3, :cond_6f

    .line 2676
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetExternalId(Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v4

    .line 2677
    if-nez v4, :cond_62

    .line 2678
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot update without external ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2679
    goto :goto_e

    .line 2681
    :cond_62
    invoke-static {v0, v1, v3, v4, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->removeItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2682
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v7

    .line 2683
    goto :goto_e

    :cond_6d
    move v0, v6

    .line 2685
    goto :goto_e

    .line 2687
    :cond_6f
    if-eqz v4, :cond_7e

    .line 2688
    invoke-static {v0, v1, v4, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->removeSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2689
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v7

    .line 2690
    goto :goto_e

    :cond_7c
    move v0, v6

    .line 2692
    goto :goto_e

    .line 2695
    :cond_7e
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->disableTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2696
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v7

    .line 2697
    goto :goto_e

    :cond_89
    move v0, v6

    .line 2699
    goto :goto_e

    .line 2704
    :sswitch_8b
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2705
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2706
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetExternalId(Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v2

    .line 2707
    if-nez v2, :cond_a3

    .line 2708
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot delete without external ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2709
    goto/16 :goto_e

    .line 2711
    :cond_a3
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderActions;->deleteItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2712
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v7

    .line 2713
    goto/16 :goto_e

    :cond_af
    move v0, v6

    .line 2715
    goto/16 :goto_e

    .line 2651
    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_f
        0x4 -> :sswitch_24
        0x8 -> :sswitch_8b
    .end sparse-switch
.end method

.method protected final getFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    if-nez v0, :cond_a

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 705
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    return-object v0
.end method

.method protected final getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_a

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 681
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 809
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 766
    :pswitch_9
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 769
    :pswitch_c
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 771
    :pswitch_f
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 773
    :pswitch_12
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 775
    :pswitch_15
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 777
    :pswitch_18
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 779
    :pswitch_1b
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 781
    :pswitch_1e
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 783
    :pswitch_21
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 785
    :pswitch_24
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 787
    :pswitch_27
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 789
    :pswitch_2a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 791
    :pswitch_2d
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Links;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 793
    :pswitch_30
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$UserInfo;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 795
    :pswitch_33
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 797
    :pswitch_36
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Friends;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 799
    :pswitch_39
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Overview;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 801
    :pswitch_3c
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Overview;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 803
    :pswitch_3f
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetails;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_8

    .line 805
    :pswitch_42
    const-string v0, "text/html"

    goto :goto_8

    .line 807
    :pswitch_45
    const-string v0, "image/png"

    goto :goto_8

    .line 763
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_1b
        :pswitch_1e
        :pswitch_7
        :pswitch_7
        :pswitch_27
        :pswitch_2a
        :pswitch_30
        :pswitch_7
        :pswitch_2d
        :pswitch_7
        :pswitch_33
        :pswitch_36
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_42
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_21
        :pswitch_24
        :pswitch_45
        :pswitch_39
        :pswitch_3c
        :pswitch_15
        :pswitch_18
        :pswitch_3f
    .end packed-switch
.end method

.method protected final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_a

    .line 691
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 693
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2245
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_23c

    move-object v0, v12

    .line 2424
    :goto_e
    return-object v0

    .line 2248
    :sswitch_f
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2249
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getQuickAddUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2250
    if-eqz v2, :cond_3a

    .line 2251
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createTokenContentHandler(Lcom/google/android/accounts/Account;)Ljava/net/ContentHandler;

    move-result-object v3

    .line 2252
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createQuickAddContentHandler(Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v4

    .line 2253
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createHttpPostContentHandler(Lcom/google/android/accounts/Account;)Lcom/google/android/apps/reader/net/HttpContentHandler;

    move-result-object v5

    .line 2255
    new-instance v0, Lcom/google/android/apps/reader/content/QuickAdd;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/reader/content/QuickAdd;-><init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Lcom/google/android/apps/reader/content/ContentLoader;)V

    .line 2258
    :try_start_2b
    invoke-virtual {v0}, Lcom/google/android/apps/reader/content/QuickAdd;->run()Landroid/net/Uri;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_e

    .line 2259
    :catch_30
    move-exception v0

    .line 2260
    const-string v1, "ReaderProvider"

    const-string v2, "quick add failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v12

    .line 2261
    goto :goto_e

    .line 2264
    :cond_3a
    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2265
    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2266
    if-nez v2, :cond_51

    .line 2267
    const-string v0, "ReaderProvider"

    const-string v1, "Stream ID was not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 2268
    goto :goto_e

    .line 2270
    :cond_51
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->subscribe(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2271
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2272
    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-static {v1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    :cond_65
    move-object v0, v12

    .line 2275
    goto :goto_e

    .line 2280
    :sswitch_67
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2281
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getItemId(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v2

    .line 2282
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->getSubscriptionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2283
    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2284
    const-string v5, "label"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2285
    if-nez v4, :cond_87

    if-eqz v5, :cond_87

    .line 2286
    invoke-static {v5}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2288
    :cond_87
    if-nez v4, :cond_93

    .line 2289
    const-string v0, "ReaderProvider"

    const-string v1, "Must specify either a tag ID or a label"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 2290
    goto/16 :goto_e

    .line 2292
    :cond_93
    invoke-static {v4}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 2293
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 2294
    if-nez v5, :cond_a9

    .line 2295
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 2296
    goto/16 :goto_e

    .line 2298
    :cond_a9
    invoke-static {v4, v5}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2300
    :cond_ad
    if-eqz v2, :cond_d5

    .line 2301
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetExternalId(Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v3

    .line 2302
    if-nez v3, :cond_c3

    .line 2303
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot update without external ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 2304
    goto/16 :goto_e

    .line 2306
    :cond_c3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->addItemTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 2307
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2308
    invoke-static {v1, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_d2
    move-object v0, v12

    .line 2310
    goto/16 :goto_e

    .line 2312
    :cond_d5
    if-eqz v3, :cond_e9

    .line 2313
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->addSubscriptionTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 2314
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2315
    invoke-static {v1, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_e6
    move-object v0, v12

    .line 2317
    goto/16 :goto_e

    .line 2320
    :cond_e9
    invoke-static {v0, v1, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->createTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2322
    invoke-static {v1, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_f8
    move-object v0, v12

    .line 2324
    goto/16 :goto_e

    .line 2329
    :sswitch_fb
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2330
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 2331
    if-nez v2, :cond_10f

    .line 2332
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 2333
    goto/16 :goto_e

    .line 2335
    :cond_10f
    const-string v3, "alternate_href"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2336
    const-string v4, "title_plaintext"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2337
    const-string v5, "source_alternate_href"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2338
    const-string v6, "source_title_plaintext"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2339
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getSnippet(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 2340
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getAnnotation(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 2341
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getShare(Landroid/net/Uri;)Z

    move-result v9

    .line 2342
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getTags(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v10

    .line 2344
    invoke-static/range {v0 .. v11}, Lcom/google/android/apps/reader/content/ReaderActions;->createNote(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 2346
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2351
    const-string v0, "-"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_148
    move-object v0, v12

    .line 2358
    goto/16 :goto_e

    .line 2362
    :sswitch_14b
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2363
    const-string v2, "key"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2364
    const-string v3, "value"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2365
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->setPreference(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 2366
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->preferences(Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2367
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2369
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2370
    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_178
    move-object v0, v12

    .line 2372
    goto/16 :goto_e

    .line 2376
    :sswitch_17b
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2377
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2378
    const-string v3, "key"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2379
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2380
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/reader/content/ReaderActions;->setStreamPreference(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 2381
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderProvider;->streamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2382
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2384
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    .line 2385
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->streamItemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_1ac
    move-object v0, v12

    .line 2387
    goto/16 :goto_e

    .line 2391
    :sswitch_1af
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 2393
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "upload"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 2394
    or-int/lit8 v1, v11, 0x2

    .line 2396
    :goto_1c3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "preferences"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 2397
    or-int/lit8 v1, v1, 0x4

    .line 2399
    :cond_1d3
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2401
    :try_start_1da
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSyncCallable(Lcom/google/android/accounts/Account;I)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 2402
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1e1
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_21c
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e1} :catch_1e9

    .line 2412
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, p1

    goto/16 :goto_e

    .line 2404
    :catch_1e9
    move-exception v1

    .line 2405
    :try_start_1ea
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v2

    if-eqz v2, :cond_214

    .line 2406
    const-string v2, "ReaderProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synchronization failed for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20c
    .catchall {:try_start_1ea .. :try_end_20c} :catchall_21c

    .line 2412
    :goto_20c
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v12

    goto/16 :goto_e

    .line 2408
    :cond_214
    :try_start_214
    const-string v0, "ReaderProvider"

    const-string v2, "Synchronization failed for account"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21b
    .catchall {:try_start_214 .. :try_end_21b} :catchall_21c

    goto :goto_20c

    .line 2412
    :catchall_21c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 2416
    :sswitch_223
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2417
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;

    move-result-object v2

    .line 2418
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getCleanupPriority(Landroid/content/ContentValues;)I

    move-result v3

    .line 2419
    new-instance v4, Lcom/google/android/apps/reader/content/ReaderCleanup;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/google/android/apps/reader/content/ReaderCleanup;-><init>(Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;I)V

    .line 2420
    invoke-virtual {v4}, Lcom/google/android/apps/reader/content/ReaderCleanup;->run()V

    move-object v0, p1

    .line 2421
    goto/16 :goto_e

    :cond_23a
    move v1, v11

    goto :goto_1c3

    .line 2246
    :sswitch_data_23c
    .sparse-switch
        0x1 -> :sswitch_f
        0x3 -> :sswitch_67
        0x7 -> :sswitch_fb
        0xa -> :sswitch_1af
        0xf -> :sswitch_223
        0x14 -> :sswitch_14b
        0x15 -> :sswitch_17b
    .end sparse-switch
.end method

.method public loadContent(Landroid/net/Uri;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2024
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 2025
    const-string v3, "0"

    .line 2028
    new-array v6, v5, [Landroid/database/MatrixCursor;

    aput-object v4, v6, v1

    .line 2029
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 2030
    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderProvider;->feedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/database/MatrixCursor;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2031
    return-void
.end method

.method protected final match(Landroid/net/Uri;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 276
    sget v0, Lcom/google/android/apps/reader/content/ReaderProvider;->API_VERSION:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    .line 278
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    :cond_d
    const-string v0, "com.google.android.apps.reader"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSQLiteOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSubscriptionsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mSubscriptionsProjectionMap:Ljava/util/Map;

    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createTagsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mTagsProjectionMap:Ljava/util/Map;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createStreamsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mStreamsProjectionMap:Ljava/util/Map;

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createUnreadCountsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUnreadCountsProjectionMap:Ljava/util/Map;

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsProjectionMap:Ljava/util/Map;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createOverviewProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mOverviewProjectionMap:Ljava/util/Map;

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createSubscriptionsTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mSubscriptionsTables:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createFriendsTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFriendsTables:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createFriendsProjectionMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mFriendsProjectionMap:Ljava/util/Map;

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createTagsTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mTagsTables:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createOverviewTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mOverviewTables:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemsTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mItemsTables:Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/util/Config;->get(Landroid/content/Context;)Lcom/google/android/apps/reader/util/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2850
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 2851
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_47

    const-string v0, "android_res"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2863
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2864
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2865
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2866
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2867
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2868
    invoke-virtual {v3, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2869
    if-eqz v0, :cond_3d

    .line 2870
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 2875
    :goto_3c
    return-object v0

    .line 2872
    :cond_3d
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2875
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_3c
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x1000

    .line 2789
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2790
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2792
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getFileCache()Lcom/google/android/apps/reader/content/ReaderFileCache;

    move-result-object v0

    .line 2793
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_d0

    .line 2844
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_33
    return-object v0

    .line 2795
    :sswitch_34
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2796
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2797
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getFriendPhotoFile(Lcom/google/android/accounts/Account;J)Ljava/io/File;

    move-result-object v0

    .line 2798
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2819
    :goto_46
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_33

    .line 2802
    :cond_4b
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetFriendPhotoUrl(Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v2

    .line 2803
    if-eqz v2, :cond_6a

    .line 2807
    iget-object v3, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2809
    :try_start_58
    const-string v3, "cp"

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/google/android/apps/reader/content/ReaderProvider;->retrieveFile(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_63

    .line 2811
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_46

    :catchall_63
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mNotifyAuthFailure:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 2816
    :cond_6a
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 2822
    :sswitch_70
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2823
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2824
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 2825
    if-nez v2, :cond_97

    .line 2826
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2828
    :cond_97
    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getFaviconFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2829
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 2835
    :goto_a1
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_33

    .line 2832
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://s2.googleusercontent.com/s2/favicons?domain="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2833
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/content/ReaderProvider;->retrieveFile(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_a1

    .line 2838
    :sswitch_bd
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2839
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2840
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getItemHtmlFile(Lcom/google/android/accounts/Account;J)Ljava/io/File;

    move-result-object v0

    .line 2841
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_33

    .line 2793
    nop

    :sswitch_data_d0
    .sparse-switch
        0x10 -> :sswitch_34
        0x13 -> :sswitch_bd
        0x1a -> :sswitch_70
    .end sparse-switch
.end method

.method preferences(Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;
    .registers 4
    .parameter "account"

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1552
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/content/PreferencesContentHandler;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method putUserId(Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mUserIds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1452
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1453
    sparse-switch v0, :sswitch_data_dc

    :cond_a
    move-object v2, p2

    .line 1472
    :goto_b
    packed-switch v0, :pswitch_data_ee

    .line 1494
    :pswitch_e
    new-array v6, v4, [Landroid/database/MatrixCursor;

    .line 1495
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1498
    const-string v0, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1501
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_25

    .line 1503
    const-string v1, "com.google.reader.cursor.extra.ACCOUNT"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_25
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1509
    :try_start_2a
    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderProvider;->feedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/database/MatrixCursor;Landroid/os/Bundle;)Landroid/database/Cursor;
    :try_end_2d
    .catch Ljava/net/HttpRetryException; {:try_start_2a .. :try_end_2d} :catch_9a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_ac

    move-result-object v0

    .line 1520
    :goto_2e
    :try_start_2e
    invoke-static {v0, v7}, Lcom/google/android/feeds/FeedProvider;->feedCursor(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/database/Cursor;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_ac

    move-result-object v0

    .line 1542
    :goto_32
    return-object v0

    .line 1456
    :sswitch_33
    if-nez p2, :cond_a

    .line 1457
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v9

    const-string v2, "suggest_text_1"

    aput-object v2, v1, v4

    const-string v2, "suggest_text_2"

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "suggest_icon_1"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "suggest_intent_data"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "suggest_shortcut_id"

    aput-object v3, v1, v2

    move-object v2, v1

    goto :goto_b

    .line 1467
    :sswitch_55
    if-nez p2, :cond_a

    .line 1468
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "key"

    aput-object v2, v1, v9

    const-string v2, "value"

    aput-object v2, v1, v4

    move-object v2, v1

    goto :goto_b

    .line 1474
    :pswitch_63
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1475
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_32

    .line 1479
    :pswitch_72
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_32

    .line 1481
    :pswitch_78
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1482
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderProvider;->preferences(Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1483
    new-instance v1, Lcom/google/android/apps/reader/content/PreferencesCursor;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/reader/content/PreferencesCursor;-><init>([Ljava/lang/String;Landroid/content/SharedPreferences;)V

    move-object v0, v1

    goto :goto_32

    .line 1486
    :pswitch_87
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 1487
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->streamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1489
    new-instance v1, Lcom/google/android/apps/reader/content/PreferencesCursor;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/reader/content/PreferencesCursor;-><init>([Ljava/lang/String;Landroid/content/SharedPreferences;)V

    move-object v0, v1

    goto :goto_32

    .line 1511
    :catch_9a
    move-exception v0

    .line 1516
    :try_start_9b
    const-string v1, "ReaderProvider"

    const-string v3, "Retrying query..."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1517
    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/reader/content/ReaderProvider;->feedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/database/MatrixCursor;Landroid/os/Bundle;)Landroid/database/Cursor;
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_aa} :catch_ac

    move-result-object v0

    goto :goto_2e

    .line 1521
    :catch_ac
    move-exception v0

    move-object v8, v0

    .line 1522
    const-string v0, "ReaderProvider"

    const-string v1, "Query failed"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1525
    aget-object v0, v6, v9

    .line 1527
    if-nez v0, :cond_c3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    .line 1531
    :try_start_bf
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderProvider;->databaseQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c2} :catch_cd

    move-result-object v0

    .line 1541
    :cond_c3
    :goto_c3
    invoke-static {v8}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->getSolutionForError(Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v1

    .line 1542
    invoke-static {v0, v7, v8, v1}, Lcom/google/android/feeds/FeedProvider;->errorCursor(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/Throwable;Landroid/content/Intent;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_32

    .line 1533
    :catch_cd
    move-exception v0

    .line 1536
    const-string v1, "ReaderProvider"

    const-string v3, "Database query failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_c3

    .line 1453
    nop

    :sswitch_data_dc
    .sparse-switch
        0xc -> :sswitch_33
        0x12 -> :sswitch_33
        0x14 -> :sswitch_55
        0x15 -> :sswitch_55
    .end sparse-switch

    .line 1472
    :pswitch_data_ee
    .packed-switch 0x11
        :pswitch_63
        :pswitch_72
        :pswitch_e
        :pswitch_78
        :pswitch_87
    .end packed-switch
.end method

.method streamPreferences(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 5
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1559
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/reader/content/StreamPreferencesContentHandler;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2498
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2499
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_20a

    :pswitch_f
    move v0, v7

    .line 2644
    :goto_10
    return v0

    .line 2501
    :pswitch_11
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2502
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 2503
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetExternalId(Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v5

    .line 2504
    if-nez v5, :cond_28

    .line 2505
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot update without external ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2506
    goto :goto_10

    .line 2508
    :cond_28
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 2509
    if-nez v2, :cond_37

    .line 2510
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2511
    goto :goto_10

    .line 2513
    :cond_37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2516
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v8

    .line 2517
    goto :goto_10

    .line 2519
    :cond_4f
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2520
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update %s with %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v7

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    move v0, v7

    .line 2524
    goto :goto_10

    .line 2522
    :cond_6a
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update uri with values"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2528
    :pswitch_72
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2529
    if-nez v1, :cond_a3

    .line 2530
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2531
    const-string v0, "ReaderProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update without stream ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_98
    move v0, v7

    .line 2535
    goto/16 :goto_10

    .line 2533
    :cond_9b
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot update without stream ID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 2538
    :cond_a3
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->createItemList(Landroid/net/Uri;)Lcom/google/android/apps/reader/content/ItemList;

    move-result-object v3

    .line 2539
    if-nez v3, :cond_d4

    .line 2540
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 2541
    const-string v0, "ReaderProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c9
    move v0, v7

    .line 2545
    goto/16 :goto_10

    .line 2543
    :cond_cc
    const-string v0, "ReaderProvider"

    const-string v1, "Unsupported content URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 2548
    :cond_d4
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2550
    if-eqz p3, :cond_14b

    .line 2552
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "read"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 2553
    sget-object v2, Lcom/google/android/apps/reader/content/ReaderProvider;->PATTERN_CRAWL_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2554
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 2555
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2556
    invoke-static {v0, v3, v4, v5}, Lcom/google/android/apps/reader/content/ReaderActions;->markAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ItemList;J)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 2557
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v9

    .line 2559
    goto/16 :goto_10

    .line 2564
    :cond_108
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 2565
    if-nez v2, :cond_118

    .line 2566
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2567
    goto/16 :goto_10

    :cond_118
    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    .line 2569
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/reader/content/ReaderActions;->updateItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/content/ItemList;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 2571
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v9

    .line 2574
    goto/16 :goto_10

    .line 2576
    :cond_127
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 2577
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update %s with %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v7

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_140
    move v0, v7

    .line 2581
    goto/16 :goto_10

    .line 2579
    :cond_143
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update uri with values"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    .line 2584
    :cond_14b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "read"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    invoke-static {v0, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->markAllAsRead(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ItemList;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 2586
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v9

    .line 2589
    goto/16 :goto_10

    .line 2591
    :cond_165
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderProvider;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 2592
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update %s with %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v7

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17e
    move v0, v7

    .line 2596
    goto/16 :goto_10

    .line 2594
    :cond_181
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to update uri with values"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    .line 2601
    :pswitch_189
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2602
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2603
    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2604
    if-nez v3, :cond_1a3

    .line 2605
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot rename without title"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2606
    goto/16 :goto_10

    .line 2608
    :cond_1a3
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->renameSubscription(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 2609
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v8

    .line 2610
    goto/16 :goto_10

    :cond_1af
    move v0, v7

    .line 2612
    goto/16 :goto_10

    .line 2616
    :pswitch_1b2
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 2617
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2618
    const-string v3, "label"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2619
    if-nez v3, :cond_1cc

    .line 2620
    const-string v0, "ReaderProvider"

    const-string v1, "Cannot rename without label"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2621
    goto/16 :goto_10

    .line 2623
    :cond_1cc
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ReaderProvider;->blockingGetUserId(Lcom/google/android/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 2624
    if-nez v4, :cond_1dc

    .line 2625
    const-string v0, "ReaderProvider"

    const-string v1, "Failed to get user ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2626
    goto/16 :goto_10

    .line 2628
    :cond_1dc
    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isUserIdMissing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e6

    .line 2629
    invoke-static {v2, v4}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2631
    :cond_1e6
    invoke-static {v4, v3}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2632
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fa

    .line 2633
    const-string v0, "ReaderProvider"

    const-string v1, "Tag ID did not change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2634
    goto/16 :goto_10

    .line 2636
    :cond_1fa
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/apps/reader/content/ReaderActions;->renameTag(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_206

    .line 2637
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderProvider;->notifyChange(Landroid/net/Uri;)V

    move v0, v8

    .line 2638
    goto/16 :goto_10

    :cond_206
    move v0, v7

    .line 2640
    goto/16 :goto_10

    .line 2499
    nop

    :pswitch_data_20a
    .packed-switch 0x2
        :pswitch_189
        :pswitch_f
        :pswitch_1b2
        :pswitch_f
        :pswitch_f
        :pswitch_72
        :pswitch_11
    .end packed-switch
.end method
