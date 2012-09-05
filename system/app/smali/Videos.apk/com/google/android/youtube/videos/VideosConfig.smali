.class public Lcom/google/android/youtube/videos/VideosConfig;
.super Lcom/google/android/youtube/core/GservicesConfig;
.source "VideosConfig.java"


# instance fields
.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/youtube/core/utils/UriRewriter;)V
    .registers 4
    .parameter "resolver"
    .parameter "uriRewriter"

    .prologue
    .line 34
    const-string v0, "videos"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/GservicesConfig;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/google/android/youtube/videos/VideosConfig;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 36
    return-void
.end method


# virtual methods
.method public analyticsPropertyId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/youtube/core/GservicesConfig;->analyticsPropertyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/google/android/youtube/core/GservicesConfig;->analyticsPropertyId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "UA-20803990-2"

    goto :goto_a
.end method

.method public countryOverride()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    const-string v0, "country_override"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v1, "downloadFormats"

    const-string v2, "13,8,14,11,3,12,20"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, formats:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hdFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-string v1, "hdFormats"

    const-string v2, "16,8"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, formats:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public lqFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-string v1, "lqFormats"

    const-string v2, "20,12,3,11,15,14"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, formats:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public mobileDownloadsEnabled()Z
    .registers 3

    .prologue
    .line 62
    const-string v0, "mobileDownloadsEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/VideosConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public mobileStreamingEnabled()Z
    .registers 3

    .prologue
    .line 55
    const-string v0, "mobileStreamingEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/VideosConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sdFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v1, "sdFormats"

    const-string v2, "15,14,11,3,12,20"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, formats:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public wvDrmServerUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosConfig;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    const-string v1, "https://www.youtube.com/api/license/wv/fetch"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wvPortalName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    const-string v0, "wv_portal_name"

    const-string v1, "YouTube"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/VideosConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
