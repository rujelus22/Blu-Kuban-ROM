.class public Lcom/google/android/apps/plus/fragments/PostsSearchFragment;
.super Lcom/google/android/apps/plus/fragments/StreamListFragment;
.source "PostsSearchFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/FragmentSearchable;


# instance fields
.field protected mDelayedQuery:Ljava/lang/String;

.field protected mError:Z

.field protected final mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field protected mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PostsSearchFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;-><init>(Landroid/content/Intent;Z)V

    .line 49
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PostsSearchFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 82
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mIsActive:Z

    if-eqz v0, :cond_5

    .line 174
    :goto_4
    return-void

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_4
.end method

.method protected constructUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "com.google.android.apps.plus.INVALID_SEARCH_QUERY"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 335
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_10
.end method

.method protected createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "mainThreadPostRunnable"

    .prologue
    .line 424
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PostsSearchFragment;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    return-void
.end method

.method protected fetchContent(Z)V
    .registers 6
    .parameter "newer"

    .prologue
    .line 357
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 401
    :goto_8
    return-void

    .line 362
    :cond_9
    if-eqz p1, :cond_32

    .line 363
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/StreamAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 369
    :cond_32
    new-instance v1, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PostsSearchFragment;Z)V

    .line 394
    .local v1, fetchContentRunnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_47

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 399
    .end local v0           #context:Landroid/content/Context;
    :cond_47
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_8
.end method

.method public loadContent()V
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->setSearchQuery(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 345
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    if-eqz p1, :cond_2a

    .line 90
    const-string v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 91
    const-string v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    .line 94
    :cond_12
    const-string v0, "delayed_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    const-string v0, "delayed_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    .line 98
    :cond_22
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mError:Z

    .line 101
    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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
    const/4 v4, 0x0

    .line 251
    packed-switch p1, :pswitch_data_18

    move-object v0, v4

    .line 260
    :goto_5
    return-object v0

    .line 253
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    const-string v6, "created DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 251
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onDestroy()V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 155
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v2, :cond_19

    .line 157
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 159
    :cond_19
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    .line 162
    .end local v1           #context:Landroid/content/Context;
    :cond_22
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    const v1, 0x7f0d0065

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 315
    :goto_c
    return-void

    .line 272
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->saveScrollPosition()V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 276
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mEndOfStream:Z

    .line 277
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPreloadRequested:Z

    .line 279
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mError:Z

    if-eqz v0, :cond_4b

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_2a
    :goto_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_39

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_39

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 304
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->updateFooter()V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->restoreScrollPosition()V

    .line 308
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mFirstLoad:Z

    .line 310
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 311
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_c

    .line 282
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    if-eqz p2, :cond_76

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_76

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->showContent(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mEndOfStream:Z

    goto :goto_2a

    .line 286
    :cond_76
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_86

    .line 287
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_2a

    .line 288
    :cond_86
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mFirstLoad:Z

    if-eqz v0, :cond_9b

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->constructUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->fetchContent(Z)V

    goto :goto_2a

    .line 293
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_2a

    .line 270
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onResume()V

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 116
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->loadContent()V

    .line 131
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 133
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    .line 135
    :cond_39
    return-void

    .line 121
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 124
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 125
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->loadContent()V

    goto :goto_2e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 184
    const-string v0, "search_query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 188
    const-string v0, "delayed_query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_19
    const-string v0, "error"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    return-void
.end method

.method public onSearchQueryChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 199
    return-void
.end method

.method public onSearchQueryEntered(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-nez v1, :cond_14

    .line 207
    :cond_b
    if-eqz p1, :cond_13

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mDelayedQuery:Ljava/lang/String;

    .line 236
    :cond_13
    :goto_13
    return-void

    .line 213
    :cond_14
    if-nez p1, :cond_1c

    .line 214
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->prepareLoaderUri()V

    goto :goto_13

    .line 219
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 220
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mFirstLoad:Z

    .line 223
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    move v0, v2

    .line 224
    .local v0, changed:Z
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->prepareLoaderUri()V

    .line 228
    if-nez v0, :cond_40

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mError:Z

    if-eqz v1, :cond_13

    .line 229
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_54

    .line 231
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->fetchContent(Z)V

    goto :goto_13

    .line 233
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->loadContent()V

    goto :goto_13
.end method

.method protected prefetchContent()V
    .registers 1

    .prologue
    .line 350
    return-void
.end method

.method protected prepareLoaderUri()V
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->constructUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mPostsUri:Landroid/net/Uri;

    .line 244
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 325
    return-void
.end method

.method protected setupMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setupMenu(Landroid/view/Menu;)V

    .line 409
    const v0, 0x7f0d01c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    const v0, 0x7f0d01c5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    return-void
.end method
