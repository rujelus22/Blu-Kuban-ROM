.class public Lcom/google/android/finsky/download/DownloadUriUrlMap;
.super Ljava/lang/Object;
.source "DownloadUriUrlMap.java"


# instance fields
.field private final mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V
    .registers 2
    .parameter "store"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadUriUrlMap;->mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    .line 36
    return-void
.end method

.method private generateStoreKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 88
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Caught exception while encode ValueStore key."

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generateStoreValue(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 76
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v0
.end method

.method private generateUriFromKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 98
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 99
    :catch_7
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Caught exception while decode ValueStore key."

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUrlFromStoreValue(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, storeValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    const-string v0, "Empty uri pased to uri-url map"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadUriUrlMap;->mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->generateStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->getUrlFromStoreValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getGenericMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadUriUrlMap;->mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-interface {v4}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v3

    .line 67
    .local v3, valueStoreMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 68
    .local v0, copy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->generateUriFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->getUrlFromStoreValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 71
    .end local v2           #key:Ljava/lang/String;
    :cond_30
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "url"

    .prologue
    .line 39
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    const-string v0, "Empty uri pased to uri-url map"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_11
    return-void

    .line 44
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadUriUrlMap;->mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->generateStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->generateStoreValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_11
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 57
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 59
    const-string v0, "Empty uri pased to uri-url map"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_11
    return-void

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadUriUrlMap;->mStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->generateStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->delete(Ljava/lang/String;)V

    goto :goto_11
.end method
