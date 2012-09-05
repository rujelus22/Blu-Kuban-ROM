.class public Lcom/google/android/youtube/core/suggest/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/youtube/core/suggest/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 112
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/suggest/a;->a(Landroid/content/ContentValues;)V

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->a:Lorg/apache/http/client/HttpClient;

    .line 77
    new-instance v0, Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/suggest/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Lcom/google/android/youtube/core/suggest/a;

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1a

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    .line 88
    :cond_1a
    new-instance v0, Lcom/google/android/youtube/core/suggest/c;

    invoke-direct {v0}, Lcom/google/android/youtube/core/suggest/c;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    if-eqz v2, :cond_fd

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fd

    .line 91
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_104

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_104

    :goto_49
    const-string v3, "http://suggestqueries.google.com/complete/search?hl=%s&ds=yt&client=androidyt&hjson=t&oe=UTF-8&q=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->a:Lorg/apache/http/client/HttpClient;

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_ca

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_8a} :catch_c3
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_8a} :catch_e0

    :try_start_8a
    iget-object v4, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_8f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_b5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/google/android/youtube/core/suggest/d;

    invoke-direct {v8, v5, v6, v4}, Lcom/google/android/youtube/core/suggest/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_8a .. :try_end_b6} :catchall_c0

    .line 97
    :goto_b6
    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 98
    :try_start_b9
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/suggest/c;->a(Ljava/util/ArrayList;)V

    .line 99
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_fa

    .line 103
    :goto_bf
    return-object v0

    .line 91
    :catchall_c0
    move-exception v1

    :try_start_c1
    monitor-exit v3

    throw v1
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c3} :catch_c3
    .catch Lorg/json/JSONException; {:try_start_c1 .. :try_end_c3} :catch_e0

    .line 92
    :catch_c3
    move-exception v1

    .line 93
    const-string v2, "error fetching suggestions"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b6

    .line 91
    :cond_ca
    :try_start_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected suggest response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_df} :catch_c3
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_df} :catch_e0

    goto :goto_b6

    .line 94
    :catch_e0
    move-exception v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error fetching suggestions, response was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b6

    .line 99
    :catchall_fa
    move-exception v0

    monitor-exit v1

    throw v0

    .line 101
    :cond_fd
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/suggest/a;->a()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_bf

    :cond_104
    move-object v2, v3

    goto/16 :goto_49
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
