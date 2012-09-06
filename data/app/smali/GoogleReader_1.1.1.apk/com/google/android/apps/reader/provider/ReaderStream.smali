.class public final Lcom/google/android/apps/reader/provider/ReaderStream;
.super Ljava/lang/Object;
.source "ReaderStream.java"


# static fields
.field public static final CATEGORY_BROADCAST:Ljava/lang/String; = "user/-/state/com.google/broadcast"

.field public static final CATEGORY_CREATED:Ljava/lang/String; = "user/-/state/com.google/created"

.field public static final CATEGORY_FOLLOWING:Ljava/lang/String; = "user/-/state/com.google/broadcast-friends"

.field public static final CATEGORY_LIKE:Ljava/lang/String; = "user/-/state/com.google/like"

.field public static final CATEGORY_LINK:Ljava/lang/String; = "user/-/source/com.google/link"

.field public static final CATEGORY_POST:Ljava/lang/String; = "user/-/source/com.google/post"

.field public static final CATEGORY_READ:Ljava/lang/String; = "user/-/state/com.google/read"

.field public static final CATEGORY_READING_LIST:Ljava/lang/String; = "user/-/state/com.google/reading-list"

.field public static final CATEGORY_ROOT:Ljava/lang/String; = "user/-/state/com.google/root"

.field public static final CATEGORY_SELF:Ljava/lang/String; = "user/-/state/com.google/self"

.field public static final CATEGORY_STARRED:Ljava/lang/String; = "user/-/state/com.google/starred"

.field private static final INFIX_LABEL:Ljava/lang/String; = "/label/"

.field private static final INFIX_LANGUAGE:Ljava/lang/String; = "/language/"

.field private static final INFIX_RECOMMENDATIONS:Ljava/lang/String; = "/state/com.google/itemrecs/"

.field private static final PATTERN_ILLEGAL:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern; = null

.field private static final PREFIX_POPULAR:Ljava/lang/String; = "pop/topic/"

.field private static final PREFIX_SPLICE:Ljava/lang/String; = "splice/"

.field private static final PREFIX_SUBSCRIPTION:Ljava/lang/String; = "feed/"

.field private static final PREFIX_USER:Ljava/lang/String; = "user/"

.field private static final PREFIX_WEBFEED:Ljava/lang/String; = "webfeed/"

.field private static final SUFFIX_BROADCAST:Ljava/lang/String; = "/state/com.google/broadcast"

.field private static final SUFFIX_CREATED:Ljava/lang/String; = "/state/com.google/created"

.field private static final SUFFIX_FOLLOWING:Ljava/lang/String; = "/state/com.google/broadcast-friends"

.field private static final SUFFIX_FRESH:Ljava/lang/String; = "/state/com.google/fresh"

.field private static final SUFFIX_LIKE:Ljava/lang/String; = "/state/com.google/like"

.field private static final SUFFIX_MY_STUFF:Ljava/lang/String; = "/state/com.google/self"

.field private static final SUFFIX_NOTE:Ljava/lang/String; = "/source/com.google/link"

.field private static final SUFFIX_READ:Ljava/lang/String; = "/state/com.google/read"

.field private static final SUFFIX_READING_LIST:Ljava/lang/String; = "/state/com.google/reading-list"

.field private static final SUFFIX_ROOT:Ljava/lang/String; = "/state/com.google/root"

.field private static final SUFFIX_STARRED:Ljava/lang/String; = "/state/com.google/starred"

.field public static final TOPIC_TOP:Ljava/lang/String; = "top"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const-string v0, "[\"^<>?&\\\\/,]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderStream;->PATTERN_ILLEGAL:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderStream;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method

.method public static canShowReadStateWhenUnsubscribed(Ljava/lang/String;)Z
    .registers 2
    .parameter "streamId"

    .prologue
    .line 370
    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isPopular(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSplice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isRecommendation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static createBroadcastId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "userId"

    .prologue
    .line 185
    if-nez p0, :cond_a

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/state/com.google/broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createPopularStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "topic"
    .parameter "language"

    .prologue
    .line 203
    if-nez p0, :cond_a

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Topic is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_a
    if-nez p1, :cond_14

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Language is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pop/topic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/language/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createRecommendationsStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "userId"
    .parameter "language"

    .prologue
    .line 213
    if-nez p0, :cond_a

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_a
    if-nez p1, :cond_14

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Language is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/state/com.google/itemrecs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createSpliceStreamId([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 455
    if-nez p0, :cond_8

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_8
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 461
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "splice/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x0

    :goto_1a
    array-length v2, p0

    if-ge v1, v2, :cond_34

    .line 463
    if-eqz v1, :cond_24

    .line 464
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_24
    aget-object v2, p0, v1

    .line 468
    if-nez v2, :cond_2e

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 473
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createSplicedRecommendationsStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "userId"
    .parameter "language"

    .prologue
    .line 223
    if-nez p0, :cond_a

    .line 224
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "User ID is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_a
    if-nez p1, :cond_14

    .line 227
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Language is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_14
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->createRecommendationsStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, recommendations:Ljava/lang/String;
    const-string v2, "top"

    invoke-static {v2, p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->createPopularStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, popular:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderStream;->createSpliceStreamId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createSubscriptionId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feed/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTagId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "label"

    .prologue
    .line 192
    const-string v0, "-"

    invoke-static {v0, p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTagId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "userId"
    .parameter "label"

    .prologue
    .line 175
    if-nez p0, :cond_a

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_a
    if-nez p1, :cond_14

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Label is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/label/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->sanitizeTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "streamId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const-string v1, "user/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 106
    const-string v1, "/label/"

    const-string v2, "user/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 108
    const-string v1, "/label/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .end local v0           #index:I
    :goto_22
    return-object v1

    :cond_23
    move-object v1, p0

    goto :goto_22
.end method

.method public static getReadItemsVisible(Ljava/lang/String;)Z
    .registers 2
    .parameter "streamId"

    .prologue
    .line 481
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isMyStuff(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isNotes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getSubscriptionUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "streamId"

    .prologue
    .line 115
    if-nez p0, :cond_a

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_a
    const-string v0, "feed/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 119
    const-string v0, "feed/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 121
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a subscription ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasReadState(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 243
    if-nez p0, :cond_a

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_a
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isReadingList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isFollowing(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isBroadcast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static isBroadcast(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 286
    if-nez p0, :cond_a

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_a
    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "/state/com.google/broadcast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isFollowing(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 349
    if-nez p0, :cond_a

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_a
    const-string v0, "/state/com.google/broadcast-friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFresh(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 314
    if-nez p0, :cond_a

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_a
    const-string v0, "/state/com.google/fresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLabel(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 335
    if-nez p0, :cond_a

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_a
    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "/label/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isLiked(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 293
    if-nez p0, :cond_a

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_a
    const-string v0, "/state/com.google/like"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMyStuff(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 251
    if-nez p0, :cond_a

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_a
    const-string v0, "/state/com.google/self"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNote(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 258
    if-nez p0, :cond_a

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_a
    const-string v0, "/source/com.google/link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotes(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 272
    if-nez p0, :cond_a

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_a
    const-string v0, "/state/com.google/created"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPopular(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 356
    if-nez p0, :cond_a

    .line 357
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_a
    const-string v0, "pop/topic/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRead(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 307
    if-nez p0, :cond_a

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_a
    const-string v0, "/state/com.google/read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isReadingList(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 279
    if-nez p0, :cond_a

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_a
    const-string v0, "/state/com.google/reading-list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRecommendation(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 342
    if-nez p0, :cond_a

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_a
    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "/state/com.google/itemrecs/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isRoot(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 265
    if-nez p0, :cond_a

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_a
    const-string v0, "/state/com.google/root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSplice(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 363
    if-nez p0, :cond_a

    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_a
    const-string v0, "splice/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStarred(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 300
    if-nez p0, :cond_a

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_a
    const-string v0, "/state/com.google/starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSubscription(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 321
    if-nez p0, :cond_a

    .line 322
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_a
    const-string v0, "feed/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUserIdMissing(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 424
    if-nez p0, :cond_a

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_a
    const-string v0, "user/-/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWebFeed(Ljava/lang/String;)Z
    .registers 3
    .parameter "streamId"

    .prologue
    .line 328
    if-nez p0, :cond_a

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_a
    const-string v0, "webfeed/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static normalizeLabelName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "labelName"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->stripIllegalControlCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderStream;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 155
    return-object p0
.end method

.method private static sanitizeTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->normalizeLabelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderStream;->PATTERN_ILLEGAL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 171
    return-object p0
.end method

.method public static setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "streamId"
    .parameter "userId"

    .prologue
    .line 383
    if-nez p0, :cond_a

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_a
    if-nez p1, :cond_14

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_14
    const-string v0, "user/-/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user/-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_3d
    return-object v0

    :cond_3e
    move-object v0, p0

    goto :goto_3d
.end method

.method public static setUserId(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    if-nez p0, :cond_a

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID list is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_a
    if-nez p1, :cond_14

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_14
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 411
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 415
    :cond_2d
    return-void
.end method

.method private static stripIllegalControlCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 134
    const/16 v3, 0x20

    if-ge v2, v3, :cond_20

    const/16 v3, 0x9

    if-eq v2, v3, :cond_20

    const/16 v3, 0xa

    if-eq v2, v3, :cond_20

    const/16 v3, 0xd

    if-ne v2, v3, :cond_23

    .line 135
    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unsetUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "streamId"

    .prologue
    .line 438
    if-nez p0, :cond_a

    .line 439
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Stream ID is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_a
    const-string v2, "user/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "user/-/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 442
    const-string v2, "user/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 443
    .local v1, start:I
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 444
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .end local v0           #index:I
    .end local v1           #start:I
    :goto_49
    return-object v2

    :cond_4a
    move-object v2, p0

    goto :goto_49
.end method
