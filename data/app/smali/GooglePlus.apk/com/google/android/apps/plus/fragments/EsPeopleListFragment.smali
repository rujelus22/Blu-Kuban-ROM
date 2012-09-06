.class public abstract Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "EsPeopleListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarsPreloaded:Z

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field protected mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private final mHandler:Landroid/os/Handler;

.field protected mListView:Landroid/widget/ListView;

.field protected mPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method


# virtual methods
.method protected addCircleMembership(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "personId"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 364
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method protected abstract getEmptyText()I
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 400
    :cond_c
    :goto_c
    return-void

    .line 388
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 390
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 391
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 394
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 396
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 397
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0801fd

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract isError()Z
.end method

.method protected abstract isLoaded()Z
.end method

.method protected isProgressViewNeeded()Z
    .registers 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 339
    const/4 v3, -0x1

    if-ne p2, v3, :cond_21

    if-nez p1, :cond_21

    .line 340
    const-string v3, "person_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, personId:Ljava/lang/String;
    const-string v3, "display_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, personName:Ljava/lang/String;
    const-string v3, "selected_circle_ids"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    .end local v0           #personId:Ljava/lang/String;
    .end local v1           #personName:Ljava/lang/String;
    .end local v2           #selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 134
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 136
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 145
    if-eqz p1, :cond_16

    .line 146
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 147
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 150
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onInitLoaders(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 193
    return-object v0
.end method

.method protected abstract onInitLoaders(Landroid/os/Bundle;)V
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 198
    instance-of v0, p1, Lcom/google/android/apps/plus/views/Recyclable;

    if-eqz v0, :cond_9

    .line 199
    check-cast p1, Lcom/google/android/apps/plus/views/Recyclable;

    .end local p1
    invoke-interface {p1}, Lcom/google/android/apps/plus/views/Recyclable;->onRecycle()V

    .line 201
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 301
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 282
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 284
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 285
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 287
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 291
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->updateView(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 162
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    :cond_12
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 322
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 308
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache;->pause()V

    .line 313
    :goto_8
    return-void

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache;->resume()V

    goto :goto_8
.end method

.method preloadAvatars(Landroid/database/Cursor;I)V
    .registers 7
    .parameter "cursor"
    .parameter "gaiaIdColumnIndex"

    .prologue
    .line 215
    if-eqz p1, :cond_6

    .line 216
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarsPreloaded:Z

    if-eqz v2, :cond_7

    .line 233
    :cond_6
    :goto_6
    return-void

    .line 219
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 222
    :cond_12
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, gaiaId:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 224
    new-instance v2, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_21
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 228
    .end local v0           #gaiaId:Ljava/lang/String;
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/service/ImageCache;->preloadAvatarsInBackground(Ljava/util/List;)V

    .line 231
    :cond_32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->mAvatarsPreloaded:Z

    goto :goto_6
.end method

.method protected showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "personId"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 371
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 374
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const v2, 0x7f090085

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->isProgressViewNeeded()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 274
    :goto_c
    return-void

    .line 260
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->isError()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 261
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->showContent(Landroid/view/View;)V

    goto :goto_c

    .line 264
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 266
    const v1, 0x7f090086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, emptyText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->getEmptyText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_c

    .line 270
    .end local v0           #emptyText:Landroid/widget/TextView;
    :cond_42
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->showContent(Landroid/view/View;)V

    goto :goto_c
.end method
