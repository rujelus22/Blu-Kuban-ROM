.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonAppsSearchSuggestor"
.end annotation


# instance fields
.field final BASE_URI:Landroid/net/Uri;

.field private mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "backendId"
    .parameter "query"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;

    .line 132
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V

    .line 128
    const-string v0, "http://www.google.com/complete/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->BASE_URI:Landroid/net/Uri;

    .line 133
    invoke-direct {p0, p2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->constructUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->mRequestUrl:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private constructUrl(I)Ljava/lang/String;
    .registers 6
    .parameter "backendId"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "json"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hl"

    const-string v3, "en"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gl"

    const-string v3, "US"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 170
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    .line 171
    const-string v1, "ds"

    const-string v2, "bo"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    :goto_30
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    :cond_39
    const/4 v1, 0x4

    if-ne p1, v1, :cond_44

    .line 173
    const-string v1, "ds"

    const-string v2, "yt_mv"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_30

    .line 176
    :cond_44
    const-string v1, "ds"

    const-string v2, "cse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    const-string v1, "client"

    const-string v2, "partner"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    const-string v1, "partnerid"

    const-string v2, "skyjam-store"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_30
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 164
    :goto_b
    return-void

    .line 143
    :cond_c
    new-instance v0, Lcom/android/volley/toolbox/JsonArrayRequest;

    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;->mRequestUrl:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    new-instance v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor$2;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 163
    .local v0, request:Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_b
.end method
