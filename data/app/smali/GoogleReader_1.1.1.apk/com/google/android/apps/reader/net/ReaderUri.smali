.class public Lcom/google/android/apps/reader/net/ReaderUri;
.super Ljava/lang/Object;
.source "ReaderUri.java"

# interfaces
.implements Lcom/google/android/apps/reader/net/ReaderClient;


# static fields
.field private static final BASE_URI:Landroid/net/Uri; = null

.field private static final OUTPUT_JSON:Ljava/lang/String; = "json"

.field private static final OUTPUT_PROTO:Ljava/lang/String; = "proto"

.field public static final PAGE_SIZE:I = 0x14

.field public static final PARAM_CLIENT:Ljava/lang/String; = "client"

.field public static final PARAM_CONTINUATION:Ljava/lang/String; = "c"

.field public static final PARAM_EXCLUDE_TARGET:Ljava/lang/String; = "xt"

.field public static final PARAM_FRESHNESS:Ljava/lang/String; = "freshness"

.field public static final PARAM_MERGE:Ljava/lang/String; = "merge"

.field public static final PARAM_NUMBER:Ljava/lang/String; = "n"

.field public static final PARAM_OUTPUT:Ljava/lang/String; = "output"

.field public static final PARAM_QUERY:Ljava/lang/String; = "q"

.field public static final PARAM_RANKING:Ljava/lang/String; = "r"

.field private static final PARAM_SEARCH:Ljava/lang/String; = "search"

.field public static final PARAM_START:Ljava/lang/String; = "start"

.field public static final PARAM_STREAM:Ljava/lang/String; = "s"

.field private static final PATH_API:Ljava/lang/String; = "api"

.field private static final PATH_API_VERSION:Ljava/lang/String; = "0"

.field private static final PATH_CONTENTS:Ljava/lang/String; = "contents"

.field private static final PATH_DELETE:Ljava/lang/String; = "delete"

.field private static final PATH_DETAILS:Ljava/lang/String; = "details"

.field private static final PATH_DIRECTORY:Ljava/lang/String; = "directory"

.field private static final PATH_DISABLE_TAG:Ljava/lang/String; = "disable-tag"

.field private static final PATH_EDIT:Ljava/lang/String; = "edit"

.field private static final PATH_EDIT_TAG:Ljava/lang/String; = "edit-tag"

.field private static final PATH_FRIEND:Ljava/lang/String; = "friend"

.field private static final PATH_IDS:Ljava/lang/String; = "ids"

.field private static final PATH_ITEM:Ljava/lang/String; = "item"

.field private static final PATH_ITEMS:Ljava/lang/String; = "items"

.field private static final PATH_LIST:Ljava/lang/String; = "list"

.field private static final PATH_MARK_ALL_AS_READ:Ljava/lang/String; = "mark-all-as-read"

.field private static final PATH_OVERVIEW:Ljava/lang/String; = "overview"

.field private static final PATH_PREFERENCE:Ljava/lang/String; = "preference"

.field private static final PATH_QUICK_ADD:Ljava/lang/String; = "quickadd"

.field private static final PATH_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field private static final PATH_RENAME_TAG:Ljava/lang/String; = "rename-tag"

.field private static final PATH_SET:Ljava/lang/String; = "set"

.field private static final PATH_STREAM:Ljava/lang/String; = "stream"

.field private static final PATH_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field private static final PATH_TAG:Ljava/lang/String; = "tag"

.field private static final PATH_TOKEN:Ljava/lang/String; = "token"

.field private static final PATH_UNREAD_COUNT:Ljava/lang/String; = "unread-count"

.field private static final PATH_USER_INFO:Ljava/lang/String; = "user-info"

.field private static final PATH_WEBFEED_CONFIRMATION:Ljava/lang/String; = "webfeed-confirmation"

.field private static final POST_ITEM:Ljava/lang/String; = "i"

.field private static final POST_ITEM_TIMESTAMP:Ljava/lang/String; = "it"

.field public static final RANKING_AUTO:Ljava/lang/String; = "a"

.field public static final RANKING_HYBRID:Ljava/lang/String; = "h"

.field public static final RANKING_NEWEST:Ljava/lang/String; = "n"

.field public static final RANKING_OLDEST:Ljava/lang/String; = "o"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    const-string v0, "https://www.google.com/reader/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method

.method public static varargs createStreamItemsContentsData([J)Lorg/apache/http/HttpEntity;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 520
    aget-wide v2, p0, v1

    .line 521
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "i"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "it"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 524
    :cond_2f
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static directorySearch(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 506
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 507
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 508
    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 509
    const-string v1, "q"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 510
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 511
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static disableTag()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 427
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 428
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 429
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 430
    const-string v1, "disable-tag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 431
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 432
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static editSubscription()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 417
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 418
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 419
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 420
    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 421
    const-string v1, "edit"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static editTag()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 408
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 409
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 410
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 411
    const-string v1, "edit-tag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 412
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 413
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static friendList()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 454
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 455
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 456
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 457
    const-string v1, "friend"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 458
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 459
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 460
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 461
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getNumber(Landroid/net/Uri;I)I
    .registers 4
    .parameter "uri"
    .parameter "defaultValue"

    .prologue
    .line 540
    const-string v1, "n"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    move v1, p1

    goto :goto_c
.end method

.method public static isContinuation(Landroid/net/Uri;)Z
    .registers 2
    .parameter "uri"

    .prologue
    .line 532
    const-string v0, "c"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSpliced(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 179
    if-nez p0, :cond_a

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_a
    const-string v0, "splice/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static itemDelete()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 486
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 487
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 488
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 489
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 490
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 491
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 492
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static itemEdit()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 476
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 477
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 478
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 479
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 480
    const-string v1, "edit"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 481
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 482
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static listPreferences()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 385
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 386
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 387
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 388
    const-string v1, "preference"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 389
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 390
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 391
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 392
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static listStreamPreferences()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 396
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 397
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    const-string v1, "preference"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 402
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 403
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static markAllAsRead()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 445
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 446
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 447
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 448
    const-string v1, "mark-all-as-read"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 449
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static overview()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 318
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 319
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 320
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 321
    const-string v1, "overview"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 322
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 323
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static recommendationList(I)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 328
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 329
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 330
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    const-string v1, "recommendation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 333
    const-string v1, "n"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 334
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 335
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static renameTag()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 436
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 437
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 438
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 439
    const-string v1, "rename-tag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 440
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 441
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static roundUpItemCount(I)I
    .registers 3
    .parameter "n"

    .prologue
    const/16 v1, 0x14

    .line 166
    if-gt p0, v1, :cond_5

    .line 173
    :goto_4
    return v1

    .line 169
    :cond_5
    rem-int/lit8 v0, p0, 0x14

    .line 170
    .local v0, remainder:I
    if-eqz v0, :cond_e

    .line 171
    sub-int v1, p0, v0

    add-int/lit8 v1, v1, 0x14

    goto :goto_4

    :cond_e
    move v1, p0

    .line 173
    goto :goto_4
.end method

.method public static searchItemsIds(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 267
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 271
    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 272
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    if-eqz p0, :cond_3b

    .line 274
    const-string v1, "s"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 275
    invoke-static {p0}, Lcom/google/android/apps/reader/net/ReaderUri;->isSpliced(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 276
    const-string v1, "merge"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    :cond_3b
    const-string v1, "n"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 280
    const-string v1, "freshness"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 281
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 282
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setPreference()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 364
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 365
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 366
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 367
    const-string v1, "preference"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 368
    const-string v1, "set"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 369
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setStreamPreference()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 374
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 375
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 376
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 377
    const-string v1, "preference"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 378
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    const-string v1, "set"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 380
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 381
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 219
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    const-string v1, "contents"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 224
    invoke-static {p0}, Lcom/google/android/apps/reader/net/ReaderUri;->isSpliced(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 225
    const-string v1, "merge"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    :cond_2d
    if-eqz p1, :cond_34

    .line 228
    const-string v1, "xt"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    :cond_34
    if-eqz p2, :cond_3b

    .line 231
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 233
    :cond_3b
    const-string v1, "n"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->canShowReadStateWhenUnsubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 235
    const-string v1, "freshness"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 237
    :cond_54
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 238
    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamDetails(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 340
    if-nez p0, :cond_a

    .line 341
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 344
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 345
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 346
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 347
    const-string v1, "details"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 348
    const-string v1, "s"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 349
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 350
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamItemsContents(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 293
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 294
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 295
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 296
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 297
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 298
    const-string v1, "contents"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 299
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 300
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->canShowReadStateWhenUnsubscribed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 301
    const-string v1, "freshness"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    :cond_36
    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamItemsIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 244
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    const-string v1, "s"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    invoke-static {p0}, Lcom/google/android/apps/reader/net/ReaderUri;->isSpliced(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 251
    const-string v1, "merge"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    :cond_34
    if-eqz p1, :cond_3b

    .line 254
    const-string v1, "xt"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    :cond_3b
    if-eqz p2, :cond_42

    .line 257
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 259
    :cond_42
    const-string v1, "n"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 260
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static subscriptionList()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 186
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 187
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static subscriptionQuickAdd()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 465
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 466
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 467
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 468
    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 469
    const-string v1, "quickadd"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 470
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 471
    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static subscriptionWebfeedConfirmation()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 496
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 497
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 498
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 499
    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 500
    const-string v1, "webfeed-confirmation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 501
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 502
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static tagList()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 197
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 198
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static token()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 355
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 356
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 357
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 358
    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 359
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 360
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static unreadCount()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 209
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 210
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    const-string v1, "unread-count"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static userInfo()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 308
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderUri;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 309
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 311
    const-string v1, "user-info"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 312
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    const-string v1, "output"

    const-string v2, "proto"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
