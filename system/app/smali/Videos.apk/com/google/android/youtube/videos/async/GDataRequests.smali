.class public final Lcom/google/android/youtube/videos/async/GDataRequests;
.super Ljava/lang/Object;
.source "GDataRequests.java"


# static fields
.field private static volatile countryCodeRestrict:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 101
    const-string v0, "restriction"

    sget-object v1, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    :cond_b
    return-void
.end method

.method private static appendDefaultPageParameters(Landroid/net/Uri$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 117
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 118
    return-void
.end method

.method private static appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"

    .prologue
    .line 106
    const-string v1, "start-index"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v1, "max-results"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 108
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 112
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local p0
    :cond_1b
    return-object p0
.end method

.method private static appendPageParameters(Landroid/net/Uri$Builder;II)V
    .registers 5
    .parameter "builder"
    .parameter "startIndex"
    .parameter "maxResults"

    .prologue
    .line 121
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    const-string v0, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    return-void
.end method

.method private static appendPaidContentParameters(Landroid/net/Uri$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 93
    const-string v0, "paid-content"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    sget-object v0, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 95
    const-string v0, "region"

    sget-object v1, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    :cond_12
    return-void
.end method

.method public static getMyPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter "userAuth"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/youtube/videos/async/GDataRequests;->getMyPurchasesUriBuilder(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getMyPurchasesRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/android/youtube/videos/async/GDataRequests;->getMyPurchasesUriBuilder(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "video"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method private static getMyPurchasesUriBuilder(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/net/Uri$Builder;
    .registers 5
    .parameter "userAuth"

    .prologue
    .line 82
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "purchases"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "inline"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 88
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V

    .line 89
    return-object v0
.end method

.method public static getSuggestedMoviesRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "uri"

    .prologue
    .line 60
    const-string v1, "uri cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 62
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V

    .line 63
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendPaidContentParameters(Landroid/net/Uri$Builder;)V

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendDefaultPageParametersIfMissing(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getTrendingMoviesRequest()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3

    .prologue
    .line 46
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "charts"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "movies"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "trending"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendDefaultPageParameters(Landroid/net/Uri$Builder;)V

    .line 51
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendCountryRestrictionParameter(Landroid/net/Uri$Builder;)V

    .line 52
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/GDataRequests;->appendPaidContentParameters(Landroid/net/Uri$Builder;)V

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static setCountryCodeRestrict(Ljava/lang/String;)V
    .registers 3
    .parameter "countryCodeRestrict"

    .prologue
    .line 29
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 30
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    .line 34
    :goto_f
    return-void

    .line 32
    :cond_10
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/videos/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    goto :goto_f
.end method
