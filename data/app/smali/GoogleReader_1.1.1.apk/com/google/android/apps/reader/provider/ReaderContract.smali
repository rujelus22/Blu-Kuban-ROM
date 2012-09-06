.class public Lcom/google/android/apps/reader/provider/ReaderContract;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Lcom/google/android/apps/reader/provider/ReaderAccount;
.implements Lcom/google/android/apps/reader/provider/ReaderContent;
.implements Lcom/google/android/feeds/FeedExtras;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/provider/ReaderContract$UserInfo;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Overview;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Friends;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Links;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Items;,
        Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Tags;,
        Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetails;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Streams;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Recommendations;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;,
        Lcom/google/android/apps/reader/provider/ReaderContract$Intents;,
        Lcom/google/android/apps/reader/provider/ReaderContract$FriendsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$OverviewColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$UserInfoColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$ItemsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$LinksColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCountsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$StreamsSortKeys;,
        Lcom/google/android/apps/reader/provider/ReaderContract$StreamsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$TagsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$StreamDetailsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$RecommendationColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$SubscriptionsColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$PreferencesColumns;,
        Lcom/google/android/apps/reader/provider/ReaderContract$SyncColumns;
    }
.end annotation


# static fields
.field protected static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_MAX_UNREAD_COUNT:I = 0x3e8

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.google.reader.cursor.extra.ACCOUNT"

.field public static final EXTRA_URI:Ljava/lang/String; = "com.google.reader.cursor.extra.URI"

.field public static final MAX_LIKE_COUNT:I = 0x64

.field protected static final PARAM_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field protected static final PARAM_ANNOTATION:Ljava/lang/String; = "annotation"

.field protected static final PARAM_EXCLUDE_TARGET:Ljava/lang/String; = "xt"

.field protected static final PARAM_FOLLOWING:Ljava/lang/String; = "following"

.field protected static final PARAM_HAS_SUBSCRIPTIONS:Ljava/lang/String; = "has_subscriptions"

.field public static final PARAM_ITEM_COUNT:Ljava/lang/String; = "n"

.field protected static final PARAM_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final PARAM_MAX_AGE:Ljava/lang/String; = "max-age"

.field protected static final PARAM_PRIORITY:Ljava/lang/String; = "priority"

.field protected static final PARAM_QUERY:Ljava/lang/String; = "q"

.field protected static final PARAM_QUICK_ADD_URL:Ljava/lang/String; = "quick_add_url"

.field protected static final PARAM_RANKING:Ljava/lang/String; = "r"

.field protected static final PARAM_REL:Ljava/lang/String; = "rel"

.field protected static final PARAM_SHARE:Ljava/lang/String; = "share"

.field protected static final PARAM_SNIPPET:Ljava/lang/String; = "snippet"

.field protected static final PARAM_STREAM_FILTER:Ljava/lang/String; = "stream_filter"

.field protected static final PARAM_STREAM_ID:Ljava/lang/String; = "stream_id"

.field protected static final PARAM_SYNCHRONIZED:Ljava/lang/String; = "synchronized"

.field protected static final PARAM_SYNC_TO_NETWORK:Ljava/lang/String; = "sync-to-network"

.field protected static final PARAM_TAG:Ljava/lang/String; = "tag"

.field protected static final PARAM_TAG_COUNT:Ljava/lang/String; = "tag_count"

.field protected static final PARAM_TAG_ID:Ljava/lang/String; = "tag_id"

.field protected static final PATH_ACCOUNTS:Ljava/lang/String; = "accounts"

.field protected static final PATH_CLEANUP:Ljava/lang/String; = "cleanup"

.field protected static final PATH_FAVICONS:Ljava/lang/String; = "favicons"

.field protected static final PATH_FRIENDS:Ljava/lang/String; = "friends"

.field protected static final PATH_FRIEND_PHOTOS:Ljava/lang/String; = "friend-photos"

.field protected static final PATH_ITEMS:Ljava/lang/String; = "items"

.field protected static final PATH_ITEM_HTML:Ljava/lang/String; = "item_html"

.field protected static final PATH_LINKS:Ljava/lang/String; = "links"

.field protected static final PATH_OVERVIEW:Ljava/lang/String; = "overview"

.field protected static final PATH_PREFERENCES:Ljava/lang/String; = "preferences"

.field protected static final PATH_RECOMMENDATIONS:Ljava/lang/String; = "recommendations"

.field protected static final PATH_STREAMS:Ljava/lang/String; = "streams"

.field protected static final PATH_STREAM_DETAILS:Ljava/lang/String; = "stream-details"

.field protected static final PATH_STREAM_PREFERENCES:Ljava/lang/String; = "stream-preferences"

.field protected static final PATH_SUBSCRIPTIONS:Ljava/lang/String; = "subscriptions"

.field protected static final PATH_SYNC:Ljava/lang/String; = "sync"

.field protected static final PATH_TAGS:Ljava/lang/String; = "tags"

.field protected static final PATH_UNREAD_COUNTS:Ljava/lang/String; = "unread-counts"

.field protected static final PATH_USER_INFO:Ljava/lang/String; = "user-info"

.field public static final RESOURCE_URI:Landroid/net/Uri; = null

.field private static final URI_DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 607
    const-string v0, "content://com.google.android.apps.reader"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 620
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "android_res"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->RESOURCE_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2375
    return-void
.end method

.method protected static contentItemType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/vnd.com.google.android.apps.reader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static contentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/vnd.com.google.android.apps.reader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalsIgnoreMaxAgeAndItemCount(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2347
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract;->withoutMaxAgeAndItemCount(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 2348
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract;->withoutMaxAgeAndItemCount(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 2349
    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    if-nez p1, :cond_13

    const/4 v0, 0x1

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static formatQuery(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2362
    .local p0, parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemCount(Landroid/net/Uri;I)I
    .registers 4
    .parameter "uri"
    .parameter "defaultValue"

    .prologue
    .line 2268
    const-string v1, "n"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    .local v0, count:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2270
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2272
    :goto_c
    return v1

    :cond_d
    move v1, p1

    goto :goto_c
.end method

.method public static getMaxAge(Landroid/net/Uri;J)J
    .registers 6
    .parameter "uri"
    .parameter "defaultValue"

    .prologue
    .line 2259
    const-string v1, "max-age"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    .local v0, maxAge:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2261
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2263
    :goto_c
    return-wide v1

    :cond_d
    move-wide v1, p1

    goto :goto_c
.end method

.method private static nameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2371
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseQuery(Landroid/net/Uri;)Ljava/util/List;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2354
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2355
    .local v1, url:Ljava/net/URI;
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v2

    return-object v2

    .line 2356
    .end local v1           #url:Ljava/net/URI;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 2357
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static refresh(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"

    .prologue
    .line 2277
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->withMaxAge(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static replaceQuery(Landroid/net/Uri;Ljava/util/List;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 2367
    .local p1, parameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract;->formatQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static requery(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"

    .prologue
    .line 2286
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->withMaxAge(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static withMaxAge(Landroid/net/Uri;J)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2291
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract;->parseQuery(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 2292
    const-string v3, "max-age"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2296
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2301
    :cond_29
    const-string v0, "max-age"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->nameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2303
    invoke-static {p0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->replaceQuery(Landroid/net/Uri;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static withQueryParameters(Landroid/net/Uri;IJ)Landroid/net/Uri;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2308
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract;->parseQuery(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 2309
    const-string v3, "n"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "max-age"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2313
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2317
    :cond_35
    const-string v0, "n"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->nameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    const-string v0, "max-age"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->nameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    invoke-static {p0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->replaceQuery(Landroid/net/Uri;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static withoutMaxAgeAndItemCount(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    .line 2327
    if-nez p0, :cond_4

    .line 2328
    const/4 v0, 0x0

    .line 2339
    :goto_3
    return-object v0

    .line 2330
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract;->parseQuery(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 2332
    const-string v3, "max-age"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "n"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2339
    :cond_39
    invoke-static {p0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract;->replaceQuery(Landroid/net/Uri;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method
