.class public Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;
.super Lcom/google/android/youtube/core/search/BaseSearchProvider;
.source "VideoSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/search/BaseSearchProvider",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field private app:Lcom/google/android/youtube/videos/VideosApplication;

.field private purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private scoredVideosCursorBuilder:Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "com.google.android.videos"

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/search/BaseSearchProvider;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private getPreferences(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/content/SharedPreferences;
    .registers 5
    .parameter "userAuth"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getStoredPurchases(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;
    .registers 8
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    :try_start_1
    new-instance v1, Lcom/google/android/youtube/core/async/SyncCallback;

    invoke-direct {v1}, Lcom/google/android/youtube/core/async/SyncCallback;-><init>()V

    .line 87
    .local v1, callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    invoke-static {p1}, Lcom/google/android/youtube/videos/store/PurchaseRequests;->createActivePurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getStoredPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 91
    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/SyncCallback;->getResponse()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v3, v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 95
    .end local v1           #callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    :goto_17
    return-object v3

    .line 92
    :catch_18
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Exception fetching results."

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method


# virtual methods
.method protected bridge synthetic buildCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->buildCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected buildCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter "userAuth"
    .parameter "query"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    new-instance v3, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;

    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->app:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/videos/VideosApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, p3}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 107
    .local v3, queryVideoScorer:Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;
    new-instance v2, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getPreferences(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;-><init>(Landroid/content/SharedPreferences;)V

    .line 109
    .local v2, purchaseScorer:Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v5, scoredVideos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 112
    .local v1, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v6, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 113
    .local v6, video:Lcom/google/android/youtube/core/model/Video;
    new-instance v4, Lcom/google/android/youtube/core/search/scoring/ScoredResult;

    invoke-direct {v4, v6}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;-><init>(Ljava/lang/Object;)V

    .line 114
    .local v4, scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-virtual {v2, v1, v4}, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;->score(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v3, v6, v4}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->score(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 116
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, p4, :cond_1d

    .line 122
    .end local v1           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .end local v4           #scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v6           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_45
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->scoredVideosCursorBuilder:Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;

    invoke-virtual {v7, v5, p2}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->buildCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method protected bridge synthetic buildShortcutCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->buildShortcutCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected buildShortcutCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter "userAuth"
    .parameter "shortcutId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 132
    .local v1, p:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v6, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 133
    move-object v2, v1

    .line 137
    .end local v1           #p:Lcom/google/android/youtube/core/model/Purchase;
    :cond_1c
    if-eqz v2, :cond_44

    .line 138
    new-instance v3, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getPreferences(Lcom/google/android/youtube/core/model/UserAuth;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;-><init>(Landroid/content/SharedPreferences;)V

    .line 139
    .local v3, purchaseScorer:Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;
    new-instance v4, Lcom/google/android/youtube/core/search/scoring/ScoredResult;

    iget-object v6, v2, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {v4, v6}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;-><init>(Ljava/lang/Object;)V

    .line 140
    .local v4, scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-virtual {v3, v2, v4}, Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;->score(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v5, scoredVideos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v6, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->scoredVideosCursorBuilder:Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;

    invoke-virtual {v6, v5, p2}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->buildCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .end local v3           #purchaseScorer:Lcom/google/android/youtube/core/search/scoring/PurchaseScorer;
    .end local v4           #scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v5           #scoredVideos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;>;"
    :goto_43
    return-object v6

    :cond_44
    const/4 v6, 0x0

    goto :goto_43
.end method

.method protected bridge synthetic makeRefreshShortcutRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->makeRefreshShortcutRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected makeRefreshShortcutRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;
    .registers 3
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getStoredPurchases(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeSearchRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->makeSearchRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected makeSearchRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;
    .registers 3
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getStoredPurchases(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected makeThumbnailRequest(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .parameter "uri"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, videoId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, bitmapBytes:[B
    new-instance v2, Lcom/google/android/youtube/core/async/SyncCallback;

    invoke-direct {v2}, Lcom/google/android/youtube/core/async/SyncCallback;-><init>()V

    .line 156
    .local v2, callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Ljava/lang/String;[B>;"
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getStoredPosterBytes(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    .line 158
    :try_start_13
    invoke-virtual {v2}, Lcom/google/android/youtube/core/async/SyncCallback;->getResponse()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0
    :try_end_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1b} :catch_2c

    .line 164
    new-instance v3, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;

    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->app:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;-><init>(Ljava/util/concurrent/Executor;)V

    .line 165
    .local v3, converter:Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;
    const/4 v4, 0x0

    .line 167
    .local v4, descriptor:Landroid/os/ParcelFileDescriptor;
    :try_start_27
    invoke-virtual {v3, v1}, Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;->convertResponse([B)Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_27 .. :try_end_2a} :catch_49

    move-result-object v4

    .line 172
    .end local v3           #converter:Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;
    .end local v4           #descriptor:Landroid/os/ParcelFileDescriptor;
    :goto_2b
    return-object v4

    .line 159
    :catch_2c
    move-exception v5

    .line 160
    .local v5, e:Ljava/util/concurrent/ExecutionException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception fetching icon bytes for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    const/4 v4, 0x0

    goto :goto_2b

    .line 168
    .end local v5           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #converter:Lcom/google/android/youtube/coreicecream/BytesToPipeConverter;
    .restart local v4       #descriptor:Landroid/os/ParcelFileDescriptor;
    :catch_49
    move-exception v5

    .line 169
    .local v5, e:Lcom/google/android/youtube/core/converter/ConverterException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception converting icon bytes for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/youtube/core/converter/ConverterException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method protected bridge synthetic makeZeroQueryRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->makeZeroQueryRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected makeZeroQueryRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;
    .registers 3
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getStoredPurchases(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->onCreate()Z

    .line 57
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->app:Lcom/google/android/youtube/videos/VideosApplication;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->app:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getPurchaseStore()Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;-><init>(Lcom/google/android/youtube/core/search/BaseSearchProvider;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/search/VideoSearchProvider;->scoredVideosCursorBuilder:Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;

    .line 61
    const/4 v0, 0x1

    return v0
.end method
