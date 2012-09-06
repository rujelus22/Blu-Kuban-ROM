.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThirdPartySearchSuggestor"
.end annotation


# instance fields
.field final BASE_URI:Landroid/net/Uri;

.field private mRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .registers 5
    .parameter "backendId"
    .parameter "query"
    .parameter "context"

    .prologue
    .line 181
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 177
    const-string v0, "http://www.google.com/complete/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->BASE_URI:Landroid/net/Uri;

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->constructUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->mRequestUrl:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private constructUrl(I)Ljava/lang/String;
    .registers 6
    .parameter "backendId"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "json"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hl"

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gl"

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 219
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_44

    .line 220
    const-string v1, "ds"

    const-string v2, "bo"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    const-string v1, "client"

    const-string v2, "books"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    :goto_3b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_44
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4f

    .line 223
    const-string v1, "ds"

    const-string v2, "yt_mv"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3b

    .line 226
    :cond_4f
    const-string v1, "ds"

    const-string v2, "cse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    const-string v1, "client"

    const-string v2, "partner"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    const-string v1, "partnerid"

    const-string v2, "skyjam-store"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3b
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 189
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 213
    :goto_b
    return-void

    .line 192
    :cond_c
    new-instance v0, Lcom/android/volley/toolbox/JsonArrayRequest;

    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->mRequestUrl:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    new-instance v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 212
    .local v0, request:Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_b
.end method
