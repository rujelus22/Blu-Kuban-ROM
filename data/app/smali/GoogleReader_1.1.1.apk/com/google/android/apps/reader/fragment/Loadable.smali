.class public final Lcom/google/android/apps/reader/fragment/Loadable;
.super Ljava/lang/Object;
.source "Loadable.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderLoadable"


# instance fields
.field private final mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasError:Z

.field private mHasMore:Z

.field private final mLoaderId:I

.field private mLoading:Z

.field private final mManager:Landroid/support/v4/app/LoaderManager;

.field private mMaxAgeAfterLoading:J

.field private mMaxAgeBeforeLoading:J

.field private mMinCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .registers 7
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeBeforeLoading:J

    .line 84
    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeAfterLoading:J

    .line 111
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    .line 113
    iput p3, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    .line 114
    iput-object p4, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 115
    return-void
.end method

.method private autoRefresh(J)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 226
    cmp-long v0, p1, v4

    if-gez v0, :cond_7

    .line 247
    :cond_6
    :goto_6
    return-void

    .line 228
    :cond_7
    iget-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeAfterLoading:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 230
    cmp-long v0, p1, v4

    if-nez v0, :cond_21

    .line 232
    const-string v0, "ReaderLoadable"

    const-string v1, "Refreshing because cached content is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    goto :goto_6

    .line 236
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 237
    cmp-long v2, v0, v4

    if-gez v2, :cond_35

    .line 240
    const-string v0, "ReaderLoadable"

    const-string v1, "Refreshing because system clock changed and age is unknown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    goto :goto_6

    .line 242
    :cond_35
    iget-wide v2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeAfterLoading:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 243
    const-string v0, "ReaderLoadable"

    const-string v1, "Refreshing because cached content is stale"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    goto :goto_6
.end method

.method private getDefaultMaxAge()J
    .registers 6

    .prologue
    .line 385
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/reader/util/SystemService;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 386
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 387
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 388
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 389
    .local v2, type:I
    if-nez v2, :cond_1c

    .line 392
    const-wide/32 v3, 0xdbba00

    .line 400
    .end local v2           #type:I
    :goto_1b
    return-wide v3

    .line 397
    .restart local v2       #type:I
    :cond_1c
    const-wide/32 v3, 0x6ddd00

    goto :goto_1b

    .line 400
    .end local v2           #type:I
    :cond_20
    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1b
.end method

.method private startSolution(Landroid/content/Intent;)V
    .registers 5
    .parameter "solution"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method


# virtual methods
.method public destroyLoader()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 303
    return-void
.end method

.method public destroyLoaderIf(Z)V
    .registers 4
    .parameter "condition"

    .prologue
    .line 309
    if-eqz p1, :cond_9

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 312
    :cond_9
    return-void
.end method

.method public filterable(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .registers 5
    .parameter "adapter"

    .prologue
    .line 269
    new-instance v0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/android/apps/reader/fragment/LoaderFilterable;-><init>(Landroid/widget/ListAdapter;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    return-object v0
.end method

.method public initLoader()V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 251
    return-void
.end method

.method public initLoaderIf(Z)V
    .registers 2
    .parameter "condition"

    .prologue
    .line 346
    if-eqz p1, :cond_6

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 351
    :goto_5
    return-void

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    goto :goto_5
.end method

.method public isReadyToLoadMore()Z
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasMore:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoading:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadMore(I)Z
    .registers 3
    .parameter "amount"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->isReadyToLoadMore()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 370
    iget v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoading:Z

    .line 149
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/CursorLoader;

    .line 152
    .local v0, loader:Landroid/support/v4/content/CursorLoader;
    invoke-virtual {v0}, Landroid/support/v4/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, uri:Landroid/net/Uri;
    iget v2, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    iget-wide v3, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeBeforeLoading:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/reader/provider/ReaderContract;->withQueryParameters(Landroid/net/Uri;IJ)Landroid/net/Uri;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/support/v4/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 156
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 12
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, l:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v7, 0x0

    .line 163
    move-object v0, p1

    check-cast v0, Landroid/support/v4/content/CursorLoader;

    move-object v4, v0

    .line 166
    .local v4, loader:Landroid/support/v4/content/CursorLoader;
    iget-object v6, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v6, v4, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 169
    if-eqz p2, :cond_35

    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v6

    .line 170
    .local v3, extras:Landroid/os/Bundle;
    :goto_11
    iput-boolean v7, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoading:Z

    .line 171
    const-string v6, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasError:Z

    .line 172
    const-string v6, "com.google.feeds.cursor.extra.MORE"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasMore:Z

    .line 175
    iget-boolean v6, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasError:Z

    if-eqz v6, :cond_39

    .line 176
    const-string v6, "com.google.feeds.cursor.extra.SOLUTION"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 177
    .local v5, solution:Landroid/content/Intent;
    if-eqz v5, :cond_34

    .line 178
    invoke-direct {p0, v5}, Lcom/google/android/apps/reader/fragment/Loadable;->startSolution(Landroid/content/Intent;)V

    .line 192
    .end local v5           #solution:Landroid/content/Intent;
    :cond_34
    :goto_34
    return-void

    .line 169
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_35
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v3, v6

    goto :goto_11

    .line 183
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_39
    invoke-virtual {v4}, Landroid/support/v4/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/reader/provider/ReaderContract;->requery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 186
    if-eqz p2, :cond_58

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :goto_4a
    iput v6, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    .line 189
    const-string v6, "com.google.feeds.cursor.extra.TIMESTAMP"

    const-wide/16 v7, -0x1

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 190
    .local v1, date:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/reader/fragment/Loadable;->autoRefresh(J)V

    goto :goto_34

    .end local v1           #date:J
    :cond_58
    move v6, v7

    .line 186
    goto :goto_4a
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/Loadable;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    .line 215
    iput-boolean v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoading:Z

    .line 216
    iput-boolean v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasError:Z

    .line 217
    iput-boolean v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasMore:Z

    .line 218
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh(I)V

    .line 289
    return-void
.end method

.method public refresh(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeBeforeLoading:J

    .line 279
    iput p1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMinCount:I

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 281
    return-void
.end method

.method public refreshAfterLoading()V
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->getDefaultMaxAge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeAfterLoading:J

    .line 139
    return-void
.end method

.method public refreshBeforeLoading()V
    .registers 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->getDefaultMaxAge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mMaxAgeBeforeLoading:J

    .line 127
    return-void
.end method

.method public restartLoader()V
    .registers 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 296
    return-void
.end method

.method public restartLoaderIf(Z)V
    .registers 2
    .parameter "condition"

    .prologue
    .line 322
    if-eqz p1, :cond_6

    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 327
    :goto_5
    return-void

    .line 325
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    goto :goto_5
.end method

.method public restartLoaderIfHasError()V
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasError:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 337
    return-void
.end method

.method public retry()V
    .registers 4

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mHasError:Z

    if-eqz v0, :cond_d

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/reader/fragment/Loadable;->mLoaderId:I

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 257
    :cond_d
    return-void
.end method
