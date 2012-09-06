.class public Lcom/google/android/finsky/api/DfeUtils;
.super Ljava/lang/Object;
.source "DfeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "docId"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "query"
    .parameter "channelId"

    .prologue
    .line 41
    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 45
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .registers 2
    .parameter "error"

    .prologue
    .line 18
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_7

    .line 19
    const-string v0, "SERVER"

    .line 29
    :goto_6
    return-object v0

    .line 20
    :cond_7
    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_e

    .line 21
    const-string v0, "AUTH"

    goto :goto_6

    .line 22
    :cond_e
    instance-of v0, p0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_15

    .line 23
    const-string v0, "NETWORK"

    goto :goto_6

    .line 24
    :cond_15
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_1c

    .line 25
    const-string v0, "TIMEOUT"

    goto :goto_6

    .line 26
    :cond_1c
    instance-of v0, p0, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_23

    .line 27
    const-string v0, "SERVER"

    goto :goto_6

    .line 29
    :cond_23
    const-string v0, "SERVER"

    goto :goto_6
.end method

.method public static isSameDocumentDetailsUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "url1"
    .parameter "url2"

    .prologue
    .line 60
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 63
    :goto_5
    return v0

    :cond_6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5
.end method
