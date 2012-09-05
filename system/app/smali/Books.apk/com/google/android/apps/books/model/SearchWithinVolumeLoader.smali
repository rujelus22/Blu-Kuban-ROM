.class public Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;
.super Landroid/content/CursorLoader;
.source "SearchWithinVolumeLoader.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mQuery:Ljava/lang/String;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "projection"
    .parameter "account"
    .parameter "volumeId"
    .parameter "query"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->setProjection([Ljava/lang/String;)V

    .line 40
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mAccount:Landroid/accounts/Account;

    .line 41
    const-string v0, "missing volumeId"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mVolumeId:Ljava/lang/String;

    .line 42
    const-string v0, "query"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mQuery:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 14

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter(Landroid/content/Context;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v9

    .line 50
    .local v9, responseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    .line 51
    .local v0, config:Lcom/google/android/apps/books/util/Config;
    iget-object v11, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mVolumeId:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0, v11, v12}, Lcom/google/android/apps/books/util/OceanUris;->buildSearchWithinVolumeUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 53
    .local v4, remoteUrl:Landroid/net/Uri;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 56
    .local v5, req:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1d
    iget-object v11, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mAccount:Landroid/accounts/Account;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-virtual {v9, v5, v11, v12}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 57
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_4f
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_29} :catch_56

    move-result-object v3

    .line 60
    .local v3, entity:Lorg/apache/http/HttpEntity;
    :try_start_2a
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, respString:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v7, respJson:Lorg/json/JSONObject;
    const-string v11, "search_results"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 64
    .local v10, searchResults:Lorg/json/JSONArray;
    new-instance v11, Lcom/google/android/apps/books/util/JSONCursor;

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->getProjection()[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/google/android/apps/books/util/JSONCursor;-><init>([Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_48

    .line 66
    if-eqz v3, :cond_47

    :try_start_44
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 71
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #respJson:Lorg/json/JSONObject;
    .end local v8           #respString:Ljava/lang/String;
    .end local v10           #searchResults:Lorg/json/JSONArray;
    :cond_47
    :goto_47
    return-object v11

    .line 66
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #resp:Lorg/apache/http/HttpResponse;
    :catchall_48
    move-exception v11

    if-eqz v3, :cond_4e

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4e
    throw v11
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4f} :catch_4f
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_4f} :catch_56

    .line 68
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catch_4f
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    new-instance v11, Lcom/google/android/apps/books/util/ExceptionCursor;

    invoke-direct {v11, v2}, Lcom/google/android/apps/books/util/ExceptionCursor;-><init>(Ljava/lang/Exception;)V

    goto :goto_47

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    :catch_56
    move-exception v2

    .line 71
    .local v2, e:Lorg/json/JSONException;
    new-instance v11, Lcom/google/android/apps/books/util/ExceptionCursor;

    invoke-direct {v11, v2}, Lcom/google/android/apps/books/util/ExceptionCursor;-><init>(Ljava/lang/Exception;)V

    goto :goto_47
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
