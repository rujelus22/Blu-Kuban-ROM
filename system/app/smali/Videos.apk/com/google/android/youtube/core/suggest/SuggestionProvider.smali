.class public Lcom/google/android/youtube/core/suggest/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;
    }
.end annotation


# instance fields
.field private getRequest:Lorg/apache/http/client/methods/HttpGet;

.field private historyDb:Lcom/google/android/youtube/core/suggest/HistoryDb;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private jsonResponse:Ljava/lang/String;

.field private networkSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private suggestFragment:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public fetchSuggestions()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, escapedFragment:Ljava/lang/String;
    const-string v11, "en"

    .line 137
    .local v11, suggestLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, currentLanguage:Ljava/lang/String;
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    .line 139
    move-object v11, v2

    .line 141
    :cond_21
    const-string v15, "http://suggestqueries.google.com/complete/search?hl=%s&ds=yt&client=androidyt&hjson=t&oe=UTF-8&q=%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, url:Ljava/lang/String;
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v15, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 144
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 145
    .local v1, code:I
    const/16 v15, 0xc8

    if-ne v1, v15, :cond_b6

    .line 146
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    .line 151
    .local v9, responseData:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 152
    .local v8, responseArray:Lorg/json/JSONArray;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    .line 153
    .local v10, resultsArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 154
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v4, 0x0

    .local v4, i:I
    :goto_85
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v4, v15, :cond_b1

    .line 156
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    .line 157
    .local v13, triplet:Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, suggestion:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, numResults:Ljava/lang/String;
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, index:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    new-instance v17, Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v6, v5}, Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 162
    .end local v5           #index:Ljava/lang/String;
    .end local v6           #numResults:Ljava/lang/String;
    .end local v12           #suggestion:Ljava/lang/String;
    .end local v13           #triplet:Lorg/json/JSONArray;
    :cond_b1
    monitor-exit v16

    .line 166
    .end local v4           #i:I
    .end local v8           #responseArray:Lorg/json/JSONArray;
    .end local v9           #responseData:Ljava/lang/String;
    .end local v10           #resultsArray:Lorg/json/JSONArray;
    :goto_b2
    return-void

    .line 162
    .restart local v8       #responseArray:Lorg/json/JSONArray;
    .restart local v9       #responseData:Ljava/lang/String;
    .restart local v10       #resultsArray:Lorg/json/JSONArray;
    :catchall_b3
    move-exception v15

    monitor-exit v16
    :try_end_b5
    .catchall {:try_start_7d .. :try_end_b5} :catchall_b3

    throw v15

    .line 164
    .end local v8           #responseArray:Lorg/json/JSONArray;
    .end local v9           #responseData:Ljava/lang/String;
    .end local v10           #resultsArray:Lorg/json/JSONArray;
    :cond_b6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unexpected suggest response "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_b2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 115
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/core/suggest/HistoryDb;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/suggest/HistoryDb;->insert(Landroid/content/ContentValues;)V

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

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/suggest/HistoryDb;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/suggest/HistoryDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/core/suggest/HistoryDb;

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    .line 91
    :cond_18
    new-instance v0, Lcom/google/android/youtube/core/suggest/SuggestionCursor;

    invoke-direct {v0}, Lcom/google/android/youtube/core/suggest/SuggestionCursor;-><init>()V

    .line 92
    .local v0, cursor:Lcom/google/android/youtube/core/suggest/SuggestionCursor;
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5e

    .line 94
    :try_start_2d
    invoke-virtual {p0}, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->fetchSuggestions()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_30} :catch_41

    .line 100
    :goto_30
    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 101
    :try_start_33
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/suggest/SuggestionCursor;->setSuggestions(Ljava/util/ArrayList;)V

    .line 102
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_5b

    .line 106
    .end local v0           #cursor:Lcom/google/android/youtube/core/suggest/SuggestionCursor;
    :goto_39
    return-object v0

    .line 95
    .restart local v0       #cursor:Lcom/google/android/youtube/core/suggest/SuggestionCursor;
    :catch_3a
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/IOException;
    const-string v2, "error fetching suggestions"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    :catch_41
    move-exception v1

    .line 98
    .local v1, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error fetching suggestions, response was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 102
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v2

    .line 104
    :cond_5e
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/core/suggest/HistoryDb;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/suggest/HistoryDb;->query()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_39
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
