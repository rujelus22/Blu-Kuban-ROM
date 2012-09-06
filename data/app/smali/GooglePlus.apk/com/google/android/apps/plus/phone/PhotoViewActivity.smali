.class public Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
.implements Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;
.implements Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;",
        "Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;",
        "Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionBarHeight:I

.field private mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

.field private mActivityId:Ljava/lang/String;

.field private mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

.field private mAlbumCount:I

.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field private mCircleId:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mFailedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFragmentIsLoading:Z

.field private mFullScreen:Z

.field private mIsEmpty:Z

.field private mIsPaused:Z

.field private mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

.field private mMenuItemListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerGaiaId:Ljava/lang/String;

.field private mPageHint:I

.field private mPhotoIndex:I

.field private mPhotoOfUserGaiaId:Ljava/lang/String;

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mPhotoUrl:Ljava/lang/String;

.field private mRestartLoader:Z

.field private mRootView:Landroid/view/View;

.field private mScreenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPhotoOnly:Z

.field private mStreamId:Ljava/lang/String;

.field private mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

.field private mViewScrolling:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 180
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    .line 184
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 221
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFailedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 983
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/plus/phone/PhotoViewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->clearListener()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getCursorPosition(Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/views/PhotoViewPager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    return-object v0
.end method

.method private clearListener()V
    .registers 3

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 928
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 930
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    .line 931
    return-void
.end method

.method private getCursorPosition(Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I
    .registers 13
    .parameter "data"
    .parameter "photoRef"

    .prologue
    .line 829
    const/4 v3, -0x1

    .line 830
    .local v3, cursorPosition:I
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    .line 831
    .local v6, photoId:J
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v4

    .line 832
    .local v4, localUri:Landroid/net/Uri;
    if-nez v4, :cond_2c

    const/4 v5, 0x0

    .line 834
    .local v5, localUrl:Ljava/lang/String;
    :goto_c
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 836
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 837
    :cond_16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 838
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, cursorLocalUrl:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 840
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 853
    .end local v0           #cursorLocalUrl:Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v3

    .line 832
    .end local v5           #localUrl:Ljava/lang/String;
    :cond_2c
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 844
    .restart local v5       #localUrl:Ljava/lang/String;
    :cond_31
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2b

    .line 845
    :cond_37
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 846
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 847
    .local v1, cursorPhotoId:J
    cmp-long v8, v6, v1

    if-nez v8, :cond_37

    .line 848
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 849
    goto :goto_2b
.end method

.method private isLocalPhoto([Lcom/google/android/apps/plus/api/MediaRef;)Z
    .registers 7
    .parameter "mediaRefs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1003
    if-eqz p1, :cond_2c

    array-length v4, p1

    if-ne v4, v2, :cond_2c

    .line 1004
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, mediaRefUrl:Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 1006
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    .line 1007
    .local v0, localUri:Landroid/net/Uri;
    if-eqz v0, :cond_1b

    .line 1008
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    .end local v0           #localUri:Landroid/net/Uri;
    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "content:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1013
    .end local v1           #mediaRefUrl:Ljava/lang/String;
    :goto_29
    return v2

    .restart local v1       #mediaRefUrl:Ljava/lang/String;
    :cond_2a
    move v2, v3

    .line 1011
    goto :goto_29

    .end local v1           #mediaRefUrl:Ljava/lang/String;
    :cond_2c
    move v2, v3

    .line 1013
    goto :goto_29
.end method

.method private setFullScreen(ZZ)V
    .registers 11
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    const/16 v7, 0xb

    const/4 v5, 0x1

    .line 759
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eq p1, v6, :cond_2f

    move v1, v5

    .line 760
    .local v1, fullScreenChanged:Z
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 762
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_35

    .line 763
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v6, :cond_31

    .line 764
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->hideTitlebar(Z)V

    .line 788
    :goto_15
    if-eqz v1, :cond_5f

    .line 789
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;

    .line 790
    .local v3, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-interface {v3, v5, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onFullScreenChanged(ZZ)V

    goto :goto_1d

    .line 759
    .end local v1           #fullScreenChanged:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_8

    .line 766
    .restart local v1       #fullScreenChanged:Z
    :cond_31
    invoke-virtual {p0, p2, v5}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showTitlebar(ZZ)V

    goto :goto_15

    .line 769
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 770
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v5, :cond_41

    .line 771
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_15

    .line 777
    :cond_41
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_5b

    iget v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    if-nez v5, :cond_5b

    .line 778
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 779
    .local v4, observer:Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    .line 780
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 784
    .end local v4           #observer:Landroid/view/ViewTreeObserver;
    :cond_5b
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_15

    .line 793
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_5f
    return-void
.end method

.method private setViewActivated()V
    .registers 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;

    .line 800
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onViewActivated()V

    goto :goto_6

    .line 802
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_16
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 886
    const v0, 0x7f090192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    return-void
.end method

.method private showEmptyView(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "view"
    .parameter "emptyText"

    .prologue
    const/4 v3, 0x0

    .line 873
    const v1, 0x7f090194

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 874
    const v1, 0x7f090193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 875
    .local v0, etv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    const v1, 0x7f090192

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    return-void
.end method

.method private showEmptyViewProgress(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 862
    const v0, 0x7f090193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 864
    const v0, 0x7f090192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 865
    return-void
.end method

.method private updateTitleAndSubtitle()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 893
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 895
    .local v2, position:I
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ltz v6, :cond_2b

    move v1, v4

    .line 897
    .local v1, hasAlbumCount:Z
    :goto_f
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v6, :cond_17

    if-eqz v1, :cond_17

    if-gtz v2, :cond_2d

    .line 898
    :cond_17
    const/4 v3, 0x0

    .line 903
    .local v3, subtitle:Ljava/lang/String;
    :goto_18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4a

    .line 904
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 906
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 907
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 913
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2a
    return-void

    .end local v1           #hasAlbumCount:Z
    .end local v3           #subtitle:Ljava/lang/String;
    :cond_2b
    move v1, v5

    .line 895
    goto :goto_f

    .line 900
    .restart local v1       #hasAlbumCount:Z
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800a5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #subtitle:Ljava/lang/String;
    goto :goto_18

    .line 909
    :cond_4a
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 911
    const v4, 0x7f100023

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_2a
.end method

.method private updateView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 809
    if-nez p1, :cond_3

    .line 822
    :goto_2
    return-void

    .line 813
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v0, :cond_17

    .line 814
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_2

    .line 816
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v0, :cond_1f

    .line 817
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showContent(Landroid/view/View;)V

    goto :goto_2

    .line 819
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showEmptyView(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public addMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method public addScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getActionBarHeight()I
    .registers 2

    .prologue
    .line 920
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    return v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 946
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public isFragmentActive(Landroid/support/v4/app/Fragment;)Z
    .registers 5
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    .line 701
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-nez v1, :cond_a

    .line 704
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
    .registers 4
    .parameter "fragment"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 534
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 536
    :goto_12
    return v0

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_12

    :cond_27
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isShowPhotoOnly()Z
    .registers 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, photoFragment:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
    instance-of v2, p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    if-eqz v2, :cond_b

    move-object v0, p1

    .line 387
    check-cast v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    .line 392
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_22

    .line 393
    const v2, 0x7f090277

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 398
    .local v1, progressView:Landroid/widget/ProgressBar;
    :goto_1a
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 399
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onUpdateProgressView(Landroid/widget/ProgressBar;)V

    .line 401
    :cond_21
    return-void

    .line 395
    .end local v1           #progressView:Landroid/widget/ProgressBar;
    :cond_22
    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .restart local v1       #progressView:Landroid/widget/ProgressBar;
    goto :goto_1a
.end method

.method public onAttachedToWindow()V
    .registers 6

    .prologue
    .line 405
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 407
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2a

    .line 410
    const v3, 0x7f090277

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 413
    .local v2, progressView:Landroid/widget/ProgressBar;
    if-eqz v2, :cond_2a

    .line 414
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;

    .line 415
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onUpdateProgressView(Landroid/widget/ProgressBar;)V

    goto :goto_1a

    .line 419
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    .end local v2           #progressView:Landroid/widget/ProgressBar;
    :cond_2a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    if-nez v0, :cond_c

    .line 376
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->toggleFullScreen()V

    .line 380
    :goto_b
    return-void

    .line 378
    :cond_c
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "savedInstanceState"

    .prologue
    .line 232
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 235
    .local v14, mIntent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 236
    const-string v1, "show_photo_only"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    .line 238
    const/4 v12, -0x1

    .line 239
    .local v12, currentItem:I
    if-eqz p1, :cond_85

    .line 240
    const-string v1, "com.google.android.apps.plus.PhotoViewFragment.ITEM"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 241
    const-string v1, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 254
    :cond_37
    :goto_37
    const-string v1, "album_name"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 255
    const-string v1, "album_name"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    .line 260
    :goto_49
    const-string v1, "owner_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 261
    const-string v1, "owner_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerGaiaId:Ljava/lang/String;

    .line 264
    :cond_5b
    const-string v1, "mediarefs"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 265
    const-string v1, "mediarefs"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    .line 266
    .local v16, parcelables:[Landroid/os/Parcelable;
    move-object/from16 v0, v16

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    .line 267
    const/4 v13, 0x0

    .local v13, i:I
    :goto_73
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v13, v1, :cond_af

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    aget-object v1, v16, v13

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    aput-object v1, v2, v13

    .line 267
    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    .line 243
    .end local v13           #i:I
    .end local v16           #parcelables:[Landroid/os/Parcelable;
    :cond_85
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 244
    const-string v1, "notif_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 245
    .local v15, notificationId:Ljava/lang/String;
    if-eqz v15, :cond_37

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v15}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_37

    .line 257
    .end local v15           #notificationId:Ljava/lang/String;
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    goto :goto_49

    .line 272
    :cond_af
    const-string v1, "album_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 273
    const-string v1, "album_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v14, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    .line 276
    :cond_c7
    const-string v1, "stream_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 277
    const-string v1, "stream_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mStreamId:Ljava/lang/String;

    .line 280
    :cond_d9
    const-string v1, "circle_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 281
    const-string v1, "circle_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mCircleId:Ljava/lang/String;

    .line 284
    :cond_eb
    const-string v1, "photos_of_user_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 285
    const-string v1, "photos_of_user_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoOfUserGaiaId:Ljava/lang/String;

    .line 288
    :cond_fd
    const-string v1, "activity_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 289
    const-string v1, "activity_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActivityId:Ljava/lang/String;

    .line 292
    :cond_10f
    const-string v1, "event_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 293
    const-string v1, "event_id"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mEventId:Ljava/lang/String;

    .line 296
    :cond_121
    const-string v1, "photo_url"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 297
    const-string v1, "photo_url"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoUrl:Ljava/lang/String;

    .line 300
    :cond_133
    const-string v1, "photo_ref"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    if-gez v12, :cond_149

    .line 301
    const-string v1, "photo_ref"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 304
    :cond_149
    const-string v1, "page_hint"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    if-gez v12, :cond_15e

    .line 305
    const-string v1, "page_hint"

    const/4 v2, -0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    .line 309
    :cond_15e
    const-string v1, "photo_index"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    if-gez v12, :cond_16f

    .line 310
    const-string v1, "photo_index"

    const/4 v2, -0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 312
    :cond_16f
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I

    .line 314
    const v1, 0x7f030088

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setContentView(I)V

    .line 315
    const v1, 0x7f090190

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 317
    const-string v1, "refresh"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21d

    const-string v1, "refresh"

    const-wide/16 v2, 0x0

    invoke-virtual {v14, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 320
    .local v6, forceLoadId:Ljava/lang/Long;
    :goto_19c
    const-string v1, "allow_plusone"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 321
    .local v10, allowPlusOne:Z
    new-instance v1, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mStreamId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mEventId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->setFragmentPagerListener(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;)V

    .line 325
    const v1, 0x7f090191

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoViewPager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setOnInterceptTouchListener(Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f090029

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_220

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    .line 335
    .local v11, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 341
    .end local v11           #actionBar:Landroid/app/ActionBar;
    :goto_213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    .line 342
    return-void

    .line 317
    .end local v6           #forceLoadId:Ljava/lang/Long;
    .end local v10           #allowPlusOne:Z
    :cond_21d
    const/4 v6, 0x0

    goto/16 :goto_19c

    .line 337
    .restart local v6       #forceLoadId:Ljava/lang/Long;
    .restart local v10       #allowPlusOne:Z
    :cond_220
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showTitlebar(ZZ)V

    .line 338
    const v1, 0x7f100023

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_213
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 440
    const-string v4, "tag"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, tag:Ljava/lang/String;
    packed-switch p1, :pswitch_data_5e

    .line 468
    const/4 v1, 0x0

    :goto_b
    return-object v1

    .line 443
    :pswitch_c
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 444
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const-string v4, "dialog_message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 446
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_b

    .line 451
    .end local v1           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_21
    new-instance v2, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Ljava/lang/String;)V

    .line 452
    .local v2, retryListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0800ae

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08020b

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08020e

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_b

    .line 460
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #retryListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$RetryDialogListener;
    :pswitch_44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0800af

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080209

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFailedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_b

    .line 441
    nop

    :pswitch_data_5e
    .packed-switch 0x7f09002e
        :pswitch_c
        :pswitch_44
        :pswitch_21
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 17
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
    .line 573
    packed-switch p1, :pswitch_data_5a

    .line 596
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 575
    :pswitch_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 577
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->isLocalPhoto([Lcom/google/android/apps/plus/api/MediaRef;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 578
    new-instance v0, Lcom/google/android/apps/plus/phone/CameraPhotoLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/CameraPhotoLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_4

    .line 580
    :cond_18
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerGaiaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mCircleId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoOfUserGaiaId:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mStreamId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActivityId:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mEventId:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoUrl:Ljava/lang/String;

    iget v12, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 587
    :pswitch_35
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerGaiaId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 591
    .local v13, albumUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v13, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 592
    .local v2, loaderUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 573
    nop

    :pswitch_data_5a
    .packed-switch 0x7f090029
        :pswitch_5
        :pswitch_35
    .end packed-switch
.end method

.method public onFragmentVisible(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-nez v0, :cond_9

    .line 716
    :cond_8
    :goto_8
    return-void

    .line 712
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 715
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    goto :goto_8
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 601
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_82

    .line 671
    :cond_a
    :goto_a
    return-void

    .line 603
    :pswitch_b
    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_42

    .line 604
    :cond_13
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    .line 605
    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 606
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    .line 640
    :goto_1c
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerGaiaId:Ljava/lang/String;

    if-eqz v6, :cond_50

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    if-eqz v6, :cond_50

    move v1, v4

    .line 641
    .local v1, hasAlbumAndOwner:Z
    :goto_25
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 642
    .local v3, needName:Z
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ne v6, v8, :cond_52

    move v2, v4

    .line 643
    .local v2, needCount:Z
    :goto_30
    if-eqz v1, :cond_54

    if-nez v3, :cond_36

    if-eqz v2, :cond_54

    .line 644
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const v5, 0x7f09002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_a

    .line 609
    .end local v1           #hasAlbumAndOwner:Z
    .end local v2           #needCount:Z
    .end local v3           #needName:Z
    :cond_42
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;

    invoke-direct {v7, p0, p2, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$2;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Landroid/support/v4/content/Loader;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_50
    move v1, v5

    .line 640
    goto :goto_25

    .restart local v1       #hasAlbumAndOwner:Z
    .restart local v3       #needName:Z
    :cond_52
    move v2, v5

    .line 642
    goto :goto_30

    .line 645
    .restart local v2       #needCount:Z
    :cond_54
    if-nez v3, :cond_a

    .line 647
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    goto :goto_a

    .line 654
    .end local v1           #hasAlbumAndOwner:Z
    .end local v2           #needCount:Z
    .end local v3           #needName:Z
    :pswitch_5a
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 655
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, albumName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    if-nez v5, :cond_6c

    .line 657
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    .line 660
    :cond_6c
    iget v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ne v5, v8, :cond_79

    .line 661
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v4, -0x2

    :goto_77
    iput v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    .line 666
    :cond_79
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    goto :goto_a

    .line 661
    :cond_7d
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_77

    .line 601
    :pswitch_data_82
    .packed-switch 0x7f090029
        :pswitch_b
        :pswitch_5a
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 675
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;

    .line 503
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 505
    const/4 v2, 0x1

    .line 508
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    :goto_19
    return v2

    :cond_1a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_19
.end method

.method public onPageActivated(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setViewActivated()V

    .line 697
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 691
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewScrolling:Z

    .line 692
    return-void

    .line 691
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 679
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 683
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewScrolling:Z

    if-eqz v0, :cond_16

    :cond_9
    move v0, v1

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 684
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setViewActivated()V

    .line 685
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    .line 686
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I

    .line 687
    return-void

    .line 683
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    if-eqz v0, :cond_a

    .line 366
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->clearListener()V

    .line 369
    :cond_a
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 370
    return-void
.end method

.method public onPhotoRemoved(J)V
    .registers 9
    .parameter "photoId"

    .prologue
    .line 551
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 552
    .local v0, data:Landroid/database/Cursor;
    if-nez v0, :cond_9

    .line 569
    :goto_8
    return-void

    .line 557
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 558
    .local v1, dataCount:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_22

    .line 560
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getHostNavigationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 562
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    goto :goto_8

    .line 568
    .end local v2           #intent:Landroid/content/Intent;
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f090029

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 424
    packed-switch p1, :pswitch_data_18

    .line 436
    :cond_6
    :goto_6
    return-void

    .line 428
    :pswitch_7
    instance-of v1, p2, Landroid/app/ProgressDialog;

    if-eqz v1, :cond_6

    move-object v0, p2

    .line 430
    check-cast v0, Landroid/app/ProgressDialog;

    .line 431
    .local v0, pd:Landroid/app/ProgressDialog;
    const-string v1, "dialog_message"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 424
    :pswitch_data_18
    .packed-switch 0x7f09002e
        :pswitch_7
    .end packed-switch
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    .line 482
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 483
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_12
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;

    .line 488
    .local v2, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    invoke-interface {v2, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;->onPrepareTitlebarButtons(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 493
    .end local v2           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    :cond_2a
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 348
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    .line 349
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 351
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 352
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    if-eqz v0, :cond_28

    .line 353
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f090029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 359
    :cond_28
    :goto_28
    return-void

    .line 357
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    goto :goto_28
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 475
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.ITEM"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    .line 498
    return-void
.end method

.method public onTouchIntercept(FF)Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    .registers 8
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, interceptLeft:Z
    const/4 v2, 0x0

    .line 734
    .local v2, interceptRight:Z
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;

    .line 735
    .local v3, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    if-nez v1, :cond_1a

    .line 736
    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onInterceptMoveLeft(FF)Z

    move-result v1

    .line 738
    :cond_1a
    if-nez v2, :cond_20

    .line 739
    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onInterceptMoveRight(FF)Z

    move-result v2

    .line 741
    :cond_20
    invoke-interface {v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onViewActivated()V

    goto :goto_8

    .line 744
    .end local v3           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_24
    if-eqz v1, :cond_2e

    .line 745
    if-eqz v2, :cond_2b

    .line 746
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    .line 752
    :goto_2a
    return-object v4

    .line 748
    :cond_2b
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a

    .line 749
    :cond_2e
    if-eqz v2, :cond_33

    .line 750
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a

    .line 752
    :cond_33
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a
.end method

.method public removeMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public removeScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public toggleFullScreen()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 546
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 547
    return-void

    .line 546
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public updateMenuItems()V
    .registers 3

    .prologue
    .line 720
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 722
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->invalidateOptionsMenu()V

    .line 727
    :goto_9
    return-void

    .line 725
    :cond_a
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method
