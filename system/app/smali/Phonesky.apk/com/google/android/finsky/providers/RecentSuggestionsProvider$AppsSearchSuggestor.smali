.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsSearchSuggestor"
.end annotation


# instance fields
.field final BASE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "query"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V

    .line 185
    const-string v0, "https://market.android.com/suggest/SuggRequest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->BASE_URI:Landroid/net/Uri;

    .line 189
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "query"

    iget-object v4, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "json"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hl"

    const-string v4, "en"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gl"

    const-string v4, "US"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 196
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 197
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 222
    :goto_31
    return-void

    .line 200
    :cond_32
    new-instance v1, Lcom/android/volley/toolbox/JsonArrayRequest;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    new-instance v4, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$2;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor$2;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 221
    .local v1, request:Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_31
.end method
