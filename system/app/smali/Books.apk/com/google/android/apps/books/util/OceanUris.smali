.class public Lcom/google/android/apps/books/util/OceanUris;
.super Ljava/lang/Object;
.source "OceanUris.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/OceanUris$SupportApiValue;,
        Lcom/google/android/apps/books/util/OceanUris$SupportApiKey;,
        Lcom/google/android/apps/books/util/OceanUris$BookStore;
    }
.end annotation


# static fields
.field private static sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

.field private static sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

.field private static sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$1;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 95
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$2;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 126
    new-instance v0, Lcom/google/android/apps/books/util/OceanUris$3;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanUris$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static appendAuthorAndTitle(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "builder"
    .parameter "author"
    .parameter "title"

    .prologue
    .line 395
    if-eqz p1, :cond_7

    .line 396
    const-string v0, "a"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    :cond_7
    if-eqz p2, :cond_e

    .line 399
    const-string v0, "t"

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    :cond_e
    return-void
.end method

.method private static appendSourceAndVersion(Landroid/net/Uri$Builder;Lcom/google/android/apps/books/util/Config;)V
    .registers 5
    .parameter "builder"
    .parameter "config"

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, sourceParam:Ljava/lang/String;
    const-string v2, "is"

    invoke-virtual {p0, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 382
    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getVersionString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, versionString:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 384
    const-string v2, "av"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 386
    :cond_14
    return-void
.end method

.method private static appendVolumeId(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .registers 3
    .parameter "builder"
    .parameter "volumeId"

    .prologue
    .line 389
    if-eqz p1, :cond_7

    .line 390
    const-string v0, "v"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 392
    :cond_7
    return-void
.end method

.method public static buildGenericReportIssueUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 335
    const-string v0, "http://support.google.com/mobile/?p=books_reportanissue"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildPageUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter "volumeId"
    .parameter "pageId"

    .prologue
    .line 296
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "num"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildReportIssueUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12
    .parameter "config"
    .parameter "volumeId"
    .parameter "readingMode"
    .parameter "readingPosition"
    .parameter "pageNumber"
    .parameter "title"
    .parameter "author"

    .prologue
    .line 412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, language:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->buildGenericReportIssueUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 416
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/OceanUris;->appendSourceAndVersion(Landroid/net/Uri$Builder;Lcom/google/android/apps/books/util/Config;)V

    .line 417
    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/OceanUris;->appendVolumeId(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 419
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3c

    const-string v2, "i"

    .line 421
    .local v2, readingModeString:Ljava/lang/String;
    :goto_21
    const-string v3, "pt"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    if-eqz p3, :cond_2d

    .line 423
    const-string v3, "rp"

    invoke-virtual {v0, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 425
    :cond_2d
    if-eqz p4, :cond_34

    .line 426
    const-string v3, "pg"

    invoke-virtual {v0, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 429
    :cond_34
    invoke-static {v0, p6, p5}, Lcom/google/android/apps/books/util/OceanUris;->appendAuthorAndTitle(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 419
    .end local v2           #readingModeString:Ljava/lang/String;
    :cond_3c
    const-string v2, "t"

    goto :goto_21
.end method

.method public static buildSearchIntent(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "config"
    .parameter "query"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getSearchUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchWithinVolumeUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "config"
    .parameter "volumeId"
    .parameter "query"

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "jscmd"

    const-string v2, "SearchWithinVolume"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "scoring"

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;
    .registers 2
    .parameter "config"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getInstalledNativeFinskyPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 166
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    .line 170
    :goto_8
    return-object v0

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->isLargeDevice()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 168
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    goto :goto_8

    .line 170
    :cond_12
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sOceanWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    goto :goto_8
.end method

.method public static getBookUrlForPlusOne(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 200
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyWeb:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 191
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumesUrl(J)Landroid/net/Uri;
    .registers 4
    .parameter "collectionId"

    .prologue
    .line 268
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "me"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "collections"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentBlockedUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 339
    const-string v0, "http://support.google.com/mobile/?p=books_multipledevices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerSupportUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 331
    const-string v0, "http://support.google.com/mobile/?p=books_contact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getFinskyShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 234
    sget-object v0, Lcom/google/android/apps/books/util/OceanUris;->sFinskyLocal:Lcom/google/android/apps/books/util/OceanUris$BookStore;

    invoke-interface {v0, p0}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpCenterUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 327
    const-string v0, "http://support.google.com/mobile/?p=books_androidapp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getInternationalAvailabilityUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 343
    const-string v0, "http://support.google.com/mobile/?p=books_international"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 283
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "books"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "volumes"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "manifest"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "alt"

    const-string v3, "xml"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 288
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMyVolumesUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 263
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseGDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "books"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "me"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineLimitUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "config"
    .end parameter
    .parameter "volumeId"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "author"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "title"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 435
    const-string v2, "http://support.google.com/mobile/?p=books_offlinelimit"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 436
    .local v0, bare:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 437
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-static {v1, p0}, Lcom/google/android/apps/books/util/OceanUris;->appendSourceAndVersion(Landroid/net/Uri$Builder;Lcom/google/android/apps/books/util/Config;)V

    .line 438
    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/OceanUris;->appendVolumeId(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 439
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/books/util/OceanUris;->appendAuthorAndTitle(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static getPrivacyUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 323
    const-string v0, "http://support.google.com/mobile/?p=market_privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getBookStore(Lcom/google/android/apps/books/util/Config;)Lcom/google/android/apps/books/util/OceanUris$BookStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/books/util/OceanUris$BookStore;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getTermsOfServiceUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .registers 2
    .parameter "config"

    .prologue
    .line 319
    const-string v0, "http://support.google.com/mobile/?p=market_tos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
