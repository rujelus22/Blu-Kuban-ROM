.class public abstract Lcom/google/android/youtube/core/search/BaseSearchProvider;
.super Landroid/content/ContentProvider;
.source "BaseSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/ContentProvider;"
    }
.end annotation


# instance fields
.field private app:Lcom/google/android/youtube/core/BaseApplication;

.field private final baseThumbnailUri:Landroid/net/Uri;

.field private final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "authority"

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_query/*"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggest_shortcut/*"

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "thumbnail/*"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->baseThumbnailUri:Landroid/net/Uri;

    .line 59
    return-void
.end method

.method private getLimit(Landroid/net/Uri;)I
    .registers 4
    .parameter "uri"

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getQuery(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 143
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 147
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract buildCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation
.end method

.method protected abstract buildShortcutCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 180
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getThumbnailUri(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;
    .registers 4
    .parameter "video"

    .prologue
    .line 159
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->baseThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 164
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 169
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract makeRefreshShortcutRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract makeSearchRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract makeThumbnailRequest(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
.end method

.method protected abstract makeZeroQueryRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")TE;"
        }
    .end annotation
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 81
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    iput-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->app:Lcom/google/android/youtube/core/BaseApplication;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->app:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->init()V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "uri"
    .parameter "access"

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, result:Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->makeThumbnailRequest(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 139
    :cond_e
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    const/4 v5, 0x0

    .line 90
    iget-object v6, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 91
    .local v2, match:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_d

    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    .line 130
    :cond_d
    :goto_d
    return-object v5

    .line 95
    :cond_e
    const/4 v4, 0x0

    .line 98
    .local v4, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :try_start_f
    new-instance v0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/SyncAuthenticatee;-><init>()V

    .line 99
    .local v0, authenticatee:Lcom/google/android/youtube/core/async/SyncAuthenticatee;
    iget-object v6, p0, Lcom/google/android/youtube/core/search/BaseSearchProvider;->app:Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/BaseApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 100
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_20} :catch_3a

    move-result-object v4

    .line 105
    .end local v0           #authenticatee:Lcom/google/android/youtube/core/async/SyncAuthenticatee;
    :goto_21
    if-eqz v4, :cond_d

    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, results:Ljava/lang/Object;,"TE;"
    packed-switch v2, :pswitch_data_68

    .line 119
    .end local v3           #results:Ljava/lang/Object;,"TE;"
    :goto_27
    if-eqz v3, :cond_d

    .line 120
    packed-switch v2, :pswitch_data_72

    goto :goto_d

    .line 122
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getLimit(Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->buildCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_d

    .line 101
    :catch_3a
    move-exception v1

    .line 102
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    const-string v6, "Exception during authorization"

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 109
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #results:Ljava/lang/Object;,"TE;"
    :pswitch_45
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->makeSearchRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    goto :goto_27

    .line 112
    :pswitch_4a
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->makeZeroQueryRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    goto :goto_27

    .line 115
    :pswitch_4f
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->makeRefreshShortcutRequest(Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_27

    .line 124
    .end local v3           #results:Ljava/lang/Object;,"TE;"
    :pswitch_54
    const-string v5, ""

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getLimit(Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->buildCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_d

    .line 126
    :pswitch_5f
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getShortcutId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->buildShortcutCursor(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_d

    .line 107
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
    .end packed-switch

    .line 120
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_54
        :pswitch_5f
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<TR;TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
