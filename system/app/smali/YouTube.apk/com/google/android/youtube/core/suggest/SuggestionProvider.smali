.class public Lcom/google/android/youtube/core/suggest/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/youtube/core/suggest/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 115
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->f:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/suggest/a;->a(Landroid/content/ContentValues;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->a:Lorg/apache/http/client/HttpClient;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/suggest/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->f:Lcom/google/android/youtube/core/suggest/a;

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    .line 91
    :cond_18
    new-instance v0, Lcom/google/android/youtube/core/suggest/c;

    invoke-direct {v0}, Lcom/google/android/youtube/core/suggest/c;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13c

    .line 94
    :try_start_2d
    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_143

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_143

    :goto_48
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->f:Lcom/google/android/youtube/core/suggest/a;

    iget-object v4, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/core/suggest/a;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, "suggest_intent_query"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_61
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/util/ArrayList;

    new-instance v8, Lcom/google/android/youtube/core/suggest/d;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v6}, Lcom/google/android/youtube/core/suggest/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_61

    :cond_7e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_84} :catch_fc
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_84} :catch_111

    :try_start_84
    iget-object v4, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_f9

    :try_start_91
    const-string v2, "http://suggestqueries.google.com/complete/search?hl=%s&ds=yt&client=androidyt&hjson=t&oe=UTF-8&q=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->a:Lorg/apache/http/client/HttpClient;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_127

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_d2} :catch_fc
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_d2} :catch_111

    const/4 v1, 0x0

    :goto_d3
    :try_start_d3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_10c

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
    :try_end_f6
    .catchall {:try_start_d3 .. :try_end_f6} :catchall_10e

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :catchall_f9
    move-exception v1

    :try_start_fa
    monitor-exit v2

    throw v1
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fc} :catch_fc
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_fc} :catch_111

    .line 95
    :catch_fc
    move-exception v1

    .line 96
    const-string v2, "error fetching suggestions"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_102
    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 101
    :try_start_105
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/suggest/c;->a(Ljava/util/ArrayList;)V

    .line 102
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_105 .. :try_end_10b} :catchall_139

    .line 106
    :goto_10b
    return-object v0

    .line 94
    :cond_10c
    :try_start_10c
    monitor-exit v3
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10e

    goto :goto_102

    :catchall_10e
    move-exception v1

    :try_start_10f
    monitor-exit v3

    throw v1
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_111} :catch_fc
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_111} :catch_111

    .line 97
    :catch_111
    move-exception v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error fetching suggestions, response was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_102

    .line 94
    :cond_127
    :try_start_127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unexpected suggest response "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_138} :catch_fc
    .catch Lorg/json/JSONException; {:try_start_127 .. :try_end_138} :catch_111

    goto :goto_102

    .line 102
    :catchall_139
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_13c
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->f:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/suggest/a;->a()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_10b

    :cond_143
    move-object v1, v2

    goto/16 :goto_48
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
