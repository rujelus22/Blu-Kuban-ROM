.class public Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;
.super Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.source "HostedPostSearchFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# instance fields
.field private mDelayedQuery:Ljava/lang/String;

.field private final mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mQuery:Ljava/lang/String;

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method private doSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 270
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mFirstLoad:Z

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->prepareLoaderUri()V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 273
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->fetchContent(Z)V

    .line 274
    return-void
.end method


# virtual methods
.method protected createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "mainThreadPostRunnable"

    .prologue
    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method protected createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;
    .registers 20
    .parameter "context"
    .parameter "gridView"
    .parameter "account"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewUseListener"
    .parameter "markPostsAsRead"
    .parameter "plusBarClickListener"
    .parameter "floatingComposeBarView"

    .prologue
    .line 171
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-super/range {v0 .. v9}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected fetchContent(Z)V
    .registers 6
    .parameter "newer"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 322
    :goto_8
    return-void

    .line 285
    :cond_9
    if-eqz p1, :cond_22

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 290
    :cond_22
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;Z)V

    .line 315
    .local v1, fetchContentRunnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_37

    .line 316
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 320
    .end local v0           #context:Landroid/content/Context;
    :cond_37
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_8
.end method

.method protected getComposeBarCursor()Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadContent()V
    .registers 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_22

    .line 74
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    .line 75
    const-string v0, "delayed_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->prepareLoaderUri()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 81
    :goto_21
    return-void

    .line 79
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    goto :goto_21
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 4
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
    .line 193
    packed-switch p1, :pswitch_data_a

    .line 199
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_7
    return-object v0

    .line 196
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    .line 193
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onDestroy()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 147
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 149
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V

    .line 151
    .end local v1           #context:Landroid/content/Context;
    :cond_17
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    const v1, 0x7f090085

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 244
    :goto_b
    return-void

    .line 211
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->saveScrollPosition()V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeStreamCursor(Landroid/database/Cursor;)V

    .line 215
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mEndOfStream:Z

    .line 216
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPreloadRequested:Z

    .line 218
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mError:Z

    if-eqz v0, :cond_2e

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->restoreScrollPosition()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->updateSpinner()V

    goto :goto_b

    .line 221
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    if-eqz p2, :cond_59

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->showContent(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mEndOfStream:Z

    .line 237
    :goto_56
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mFirstLoad:Z

    goto :goto_27

    .line 225
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_69

    .line 226
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_56

    .line 227
    :cond_69
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 228
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mFirstLoad:Z

    if-eqz v0, :cond_7a

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->fetchContent(Z)V

    goto :goto_56

    .line 231
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_56

    .line 235
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->showContent(Landroid/view/View;)V

    goto :goto_56

    .line 209
    :pswitch_data_8a
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 137
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showSearchView()V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->getSearchViewAdapter()Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryHint(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->requestFocus(Z)V

    .line 186
    return-void
.end method

.method public onQueryClose()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 251
    return-void
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->doSearch()V

    .line 260
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onResume()V

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPostsSearchServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_43

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 105
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->loadContent()V

    .line 120
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->doSearch()V

    .line 127
    :cond_42
    return-void

    .line 110
    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 113
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->loadContent()V

    goto :goto_2e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "delayed_query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mDelayedQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected prepareLoaderUri()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "com.google.android.apps.plus.INVALID_SEARCH_QUERY"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPostsUri:Landroid/net/Uri;

    .line 368
    :goto_12
    return-void

    .line 366
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mPostsUri:Landroid/net/Uri;

    goto :goto_12
.end method
