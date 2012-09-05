.class public Lcom/google/android/apps/plus/fragments/AlbumViewFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "AlbumViewFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;
.implements Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;,
        Lcom/google/android/apps/plus/fragments/AlbumViewFragment$AlbumDetailsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Lcom/google/android/apps/plus/phone/AlbumGridView;",
        "Lcom/google/android/apps/plus/phone/AlbumViewAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;",
        "Lcom/google/android/apps/plus/fragments/Refreshable;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

.field private mAlbumCount:I

.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field private mCircleId:Ljava/lang/String;

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mFooterView:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;

.field private mOwnerId:Ljava/lang/Long;

.field private mPendingCursor:Landroid/database/Cursor;

.field private mPhotoOfUserId:Ljava/lang/Long;

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mPublicId:Ljava/lang/String;

.field private mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumCount:I

    .line 130
    new-instance v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method private fetchContent()V
    .registers 5

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    .local v1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object v0, v1

    .line 479
    check-cast v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 482
    .local v0, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    if-nez v1, :cond_11

    .line 491
    :goto_10
    return-void

    .line 487
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 488
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->loadMore()V

    .line 490
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    goto :goto_10
.end method

.method private loadAlbumName()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 568
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    if-eqz v5, :cond_29

    move v0, v3

    .line 569
    .local v0, hasAlbumAndOwner:Z
    :goto_b
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 570
    .local v2, needName:Z
    iget v5, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2b

    move v1, v3

    .line 571
    .local v1, needCount:Z
    :goto_17
    if-eqz v0, :cond_28

    if-nez v2, :cond_1d

    if-eqz v1, :cond_28

    .line 572
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f0d0025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 574
    :cond_28
    return-void

    .end local v0           #hasAlbumAndOwner:Z
    .end local v1           #needCount:Z
    .end local v2           #needName:Z
    :cond_29
    move v0, v4

    .line 568
    goto :goto_b

    .restart local v0       #hasAlbumAndOwner:Z
    .restart local v2       #needName:Z
    :cond_2b
    move v1, v4

    .line 570
    goto :goto_17
.end method

.method private updateView(Landroid/view/View;)V
    .registers 15
    .parameter "view"

    .prologue
    .line 498
    if-nez p1, :cond_3

    .line 564
    :cond_2
    :goto_2
    return-void

    .line 502
    :cond_3
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 503
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_68

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_68

    const/4 v4, 0x1

    .line 504
    .local v4, hasResults:Z
    :goto_14
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v11, :cond_1a

    if-nez v1, :cond_6a

    :cond_1a
    const/4 v7, 0x1

    .line 506
    .local v7, refreshInProgress:Z
    :goto_1b
    if-eqz v7, :cond_6c

    if-nez v4, :cond_6c

    .line 507
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 515
    :goto_22
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 518
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mFooterView:Landroid/view/View;

    .line 519
    .local v3, emptyProgressView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_76

    const/4 v10, 0x1

    .line 520
    .local v10, visible:Z
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v11

    const v12, 0x7f0d0024

    invoke-virtual {v11, v12}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v5

    .local v5, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object v0, v5

    .line 521
    check-cast v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 522
    .local v0, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    if-nez v0, :cond_78

    const/4 v6, 0x1

    .line 523
    .local v6, loadingMore:Z
    :goto_41
    if-eqz v6, :cond_7d

    if-eqz v7, :cond_47

    if-eqz v4, :cond_7d

    :cond_47
    const/4 v8, 0x1

    .line 524
    .local v8, shouldBeVisible:Z
    :goto_48
    if-eq v10, v8, :cond_2

    .line 526
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 527
    .local v2, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v2, :cond_53

    .line 528
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 533
    :cond_53
    if-eqz v8, :cond_7f

    .line 534
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f040009

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 535
    .local v9, titleAnimation:Landroid/view/animation/Animation;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :goto_64
    invoke-virtual {v3, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 503
    .end local v0           #albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    .end local v2           #currentAnimation:Landroid/view/animation/Animation;
    .end local v3           #emptyProgressView:Landroid/view/View;
    .end local v4           #hasResults:Z
    .end local v5           #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    .end local v6           #loadingMore:Z
    .end local v7           #refreshInProgress:Z
    .end local v8           #shouldBeVisible:Z
    .end local v9           #titleAnimation:Landroid/view/animation/Animation;
    .end local v10           #visible:Z
    :cond_68
    const/4 v4, 0x0

    goto :goto_14

    .line 504
    .restart local v4       #hasResults:Z
    :cond_6a
    const/4 v7, 0x0

    goto :goto_1b

    .line 509
    .restart local v7       #refreshInProgress:Z
    :cond_6c
    if-eqz v4, :cond_72

    .line 510
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->showContent(Landroid/view/View;)V

    goto :goto_22

    .line 512
    :cond_72
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_22

    .line 519
    .restart local v3       #emptyProgressView:Landroid/view/View;
    :cond_76
    const/4 v10, 0x0

    goto :goto_30

    .line 522
    .restart local v0       #albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    .restart local v5       #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    .restart local v10       #visible:Z
    :cond_78
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->isLoadingMore()Z

    move-result v6

    goto :goto_41

    .line 523
    .restart local v6       #loadingMore:Z
    :cond_7d
    const/4 v8, 0x0

    goto :goto_48

    .line 537
    .restart local v2       #currentAnimation:Landroid/view/animation/Animation;
    .restart local v8       #shouldBeVisible:Z
    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f04000b

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 538
    .restart local v9       #titleAnimation:Landroid/view/animation/Animation;
    new-instance v11, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;

    invoke-direct {v11, p0, v7, v4, v3}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;ZZLandroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_64
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_16

    .line 430
    :cond_3
    :goto_3
    return-void

    .line 419
    :pswitch_4
    if-eqz p2, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 417
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    if-eqz p1, :cond_3c

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.plus.AlbumViewFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    .line 188
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.OWNER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 189
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.OWNER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    .line 191
    :cond_2c
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.ALBUM_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 192
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.ALBUM_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    .line 196
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    if-nez v0, :cond_64

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    .line 201
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    .line 204
    :cond_7c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    .line 208
    :cond_94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "stream_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "stream_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mStreamId:Ljava/lang/String;

    .line 212
    :cond_a8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "circle_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "circle_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mCircleId:Ljava/lang/String;

    .line 216
    :cond_bc
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photos_of_user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photos_of_user_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPhotoOfUserId:Ljava/lang/Long;

    .line 220
    :cond_d4
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "public_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "public_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPublicId:Ljava/lang/String;

    .line 223
    :cond_e8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPublicId:Ljava/lang/String;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    if-nez v0, :cond_fc

    .line 224
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0d0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 228
    :goto_fb
    return-void

    .line 226
    :cond_fc
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->loadAlbumName()V

    goto :goto_fb
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
    .parameter "id"
    .parameter "bundle"
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

    .line 285
    packed-switch p1, :pswitch_data_58

    move-object v0, v4

    .line 306
    :goto_5
    return-object v0

    .line 287
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPublicId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/PublicIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_5

    .line 292
    :pswitch_14
    new-instance v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mCircleId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPhotoOfUserId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mStreamId:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    goto :goto_5

    .line 298
    :pswitch_2e
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 301
    .local v8, albumUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 302
    .local v2, loaderUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$AlbumDetailsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 285
    :pswitch_data_58
    .packed-switch 0x7f0d0023
        :pswitch_6
        :pswitch_14
        :pswitch_2e
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 233
    const v1, 0x7f030009

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumGridView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/phone/AlbumGridView;->setOnMeasuredListener(Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;)V

    .line 238
    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mFooterView:Landroid/view/View;

    .line 240
    new-instance v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mListView:Landroid/widget/AbsListView;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 241
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumGridView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/AlbumGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPublicId:Ljava/lang/String;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPublicId:Ljava/lang/String;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    if-eqz v1, :cond_46

    .line 244
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 248
    :cond_46
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumGridView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/phone/AlbumGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    .line 251
    const v1, 0x7f070076

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 253
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 37
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "mediarefs"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "mediarefs"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, [Lcom/google/android/apps/plus/api/MediaRef;

    check-cast v8, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object v11, v8

    .line 383
    .local v11, mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :goto_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "album_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "album_id"

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 385
    .local v13, albumId:Ljava/lang/Long;
    :goto_39
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "stream_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "stream_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 387
    .local v14, streamId:Ljava/lang/String;
    :goto_4f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "circle_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_eb

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "circle_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 389
    .local v15, circleId:Ljava/lang/String;
    :goto_65
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "photos_of_user_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ee

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "photos_of_user_id"

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 391
    .local v16, photoOfUserId:Ljava/lang/Long;
    :goto_83
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "photo_picker"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 392
    .local v30, usePhotoPicker:Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    const-string v9, "allow_crop"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 394
    .local v26, allowCrop:Z
    if-eqz v30, :cond_f1

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/database/Cursor;

    .line 396
    .local v27, c:Landroid/database/Cursor;
    const/16 v8, 0x8

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 397
    .local v3, ownerGaiaId:J
    const/16 v8, 0xb

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 398
    .local v5, photoId:J
    const/16 v8, 0xc

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, photoUrl:Ljava/lang/String;
    const/16 v8, 0xa

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 400
    .local v29, photoTitle:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 402
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v8, v9, v0, v2, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #ownerGaiaId:J
    .end local v5           #photoId:J
    .end local v7           #photoUrl:Ljava/lang/String;
    .end local v27           #c:Landroid/database/Cursor;
    .end local v29           #photoTitle:Ljava/lang/String;
    :goto_e1
    return-void

    .line 381
    .end local v11           #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v13           #albumId:Ljava/lang/Long;
    .end local v14           #streamId:Ljava/lang/String;
    .end local v15           #circleId:Ljava/lang/String;
    .end local v16           #photoOfUserId:Ljava/lang/Long;
    .end local v26           #allowCrop:Z
    .end local v30           #usePhotoPicker:Z
    :cond_e2
    const/4 v11, 0x0

    goto/16 :goto_1b

    .line 383
    .restart local v11       #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :cond_e5
    const/4 v13, 0x0

    goto/16 :goto_39

    .line 385
    .restart local v13       #albumId:Ljava/lang/Long;
    :cond_e8
    const/4 v14, 0x0

    goto/16 :goto_4f

    .line 387
    .restart local v14       #streamId:Ljava/lang/String;
    :cond_eb
    const/4 v15, 0x0

    goto/16 :goto_65

    .line 389
    .restart local v15       #circleId:Ljava/lang/String;
    :cond_ee
    const/16 v16, 0x0

    goto :goto_83

    .line 405
    .restart local v16       #photoOfUserId:Ljava/lang/Long;
    .restart local v26       #allowCrop:Z
    .restart local v30       #usePhotoPicker:Z
    :cond_f1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v8

    const v9, 0x7f0d0024

    invoke-virtual {v8, v9}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v28

    .local v28, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v25, v28

    .line 406
    check-cast v25, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 407
    .local v25, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    if-nez v25, :cond_12e

    const/16 v24, -0x1

    .line 409
    .local v24, pageHint:I
    :goto_104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v8 .. v24}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Long;I)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_e1

    .line 407
    .end local v24           #pageHint:I
    :cond_12e
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->getCurrentPage()I

    move-result v24

    goto :goto_104
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
    const/4 v3, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_84

    .line 357
    :cond_8
    :goto_8
    return-void

    .line 313
    :pswitch_9
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 314
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    .line 316
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->loadAlbumName()V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0d0024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8

    .line 322
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    .line 331
    :goto_42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->loadAlbumName()V

    goto :goto_8

    .line 327
    :cond_46
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPendingCursor:Landroid/database/Cursor;

    goto :goto_42

    .line 336
    :pswitch_49
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, albumName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    if-nez v1, :cond_65

    .line 339
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

    if-eqz v1, :cond_65

    .line 341
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;->onNameChanged(Ljava/lang/String;)V

    .line 345
    :cond_65
    iget v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 346
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    const/4 v1, -0x2

    :goto_71
    iput v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumCount:I

    .line 349
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

    if-eqz v1, :cond_8

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumCount:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;->onCountChanged(I)V

    goto :goto_8

    .line 346
    :cond_7f
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_71

    .line 311
    :pswitch_data_84
    .packed-switch 0x7f0d0023
        :pswitch_9
        :pswitch_2a
        :pswitch_49
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
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
    .line 362
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMeasured(Lcom/google/android/apps/plus/phone/AlbumGridView;)V
    .registers 5
    .parameter "listView"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mListView:Landroid/widget/AbsListView;

    if-ne p1, v1, :cond_19

    .line 367
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/AlbumGridView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/AlbumGridView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 368
    .local v0, listPadding:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->calculateThumbnailSize(Landroid/content/Context;I)V

    .line 371
    .end local v0           #listPadding:I
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPendingCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_30

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPendingCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPendingCursor:Landroid/database/Cursor;

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    .line 377
    :cond_30
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 266
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 260
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2c

    .line 273
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    if-eqz v0, :cond_21

    .line 275
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.OWNER_ID"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 277
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 278
    const-string v0, "com.google.android.apps.plus.AlbumViewFragment.ALBUM_NAME"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2c
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method protected onScrollDown()V
    .registers 1

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->fetchContent()V

    .line 465
    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public refresh()V
    .registers 9

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mStreamId:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 442
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mStreamId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 459
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    .line 460
    return-void

    .line 444
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPhotoOfUserId:Ljava/lang/Long;

    if-eqz v0, :cond_42

    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mPhotoOfUserId:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_23

    .line 447
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    if-eqz v0, :cond_5b

    .line 448
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mOwnerId:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_23

    .line 451
    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v7

    .line 452
    .local v7, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v7, :cond_6e

    move-object v6, v7

    .line 453
    check-cast v6, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 454
    .local v6, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->resetPaging()V

    .line 456
    .end local v6           #albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mCircleId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->refreshPhotosFromCircleList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_23
.end method

.method public setOnAlbumContentListener(Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAlbumContentListener:Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;

    .line 472
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressBarView"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 436
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V

    .line 437
    return-void
.end method
