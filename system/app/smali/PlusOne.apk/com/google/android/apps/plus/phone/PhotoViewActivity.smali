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
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;,
        Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;",
        "Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;"
    }
.end annotation


# instance fields
.field mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionBarHeight:I

.field private mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

.field mActivityId:Ljava/lang/String;

.field mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

.field private mAlbumCount:I

.field mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field mCircleId:Ljava/lang/String;

.field mFragmentIsLoading:Z

.field private mFullScreen:Z

.field private mIsEmpty:Z

.field private mIsPaused:Z

.field mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

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

.field mOwnerId:Ljava/lang/Long;

.field mPageHint:I

.field mPhotoIndex:I

.field mPhotoOfUserId:Ljava/lang/Long;

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field mPhotoUrl:Ljava/lang/String;

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

.field mStreamId:Ljava/lang/String;

.field private mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

.field private mViewScrolling:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 165
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    .line 169
    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 867
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->clearListener()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getCursorPosition(Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Lcom/google/android/apps/plus/views/PhotoViewPager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/phone/PhotoViewActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    return-object v0
.end method

.method private clearListener()V
    .registers 3

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 843
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 845
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    .line 846
    return-void
.end method

.method private getCursorPosition(Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)I
    .registers 13
    .parameter "data"
    .parameter "photoRef"

    .prologue
    .line 743
    const/4 v3, -0x1

    .line 744
    .local v3, cursorPosition:I
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    .line 745
    .local v6, photoId:J
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v4

    .line 746
    .local v4, localUri:Landroid/net/Uri;
    if-nez v4, :cond_2c

    const/4 v5, 0x0

    .line 748
    .local v5, localUrl:Ljava/lang/String;
    :goto_c
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 750
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 751
    :cond_16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 752
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, cursorLocalUrl:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 754
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 767
    .end local v0           #cursorLocalUrl:Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v3

    .line 746
    .end local v5           #localUrl:Ljava/lang/String;
    :cond_2c
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 758
    .restart local v5       #localUrl:Ljava/lang/String;
    :cond_31
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2b

    .line 759
    :cond_37
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 760
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 761
    .local v1, cursorPhotoId:J
    cmp-long v8, v6, v1

    if-nez v8, :cond_37

    .line 762
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 763
    goto :goto_2b
.end method

.method private setFullScreen(ZZ)V
    .registers 11
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    const/16 v7, 0xb

    const/4 v5, 0x1

    .line 673
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eq p1, v6, :cond_2f

    move v1, v5

    .line 674
    .local v1, fullScreenChanged:Z
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 676
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_35

    .line 677
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v6, :cond_31

    .line 678
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->hideTitlebar(Z)V

    .line 702
    :goto_15
    if-eqz v1, :cond_5f

    .line 703
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

    .line 704
    .local v3, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-interface {v3, v5, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onFullScreenChanged(ZZ)V

    goto :goto_1d

    .line 673
    .end local v1           #fullScreenChanged:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_8

    .line 680
    .restart local v1       #fullScreenChanged:Z
    :cond_31
    invoke-virtual {p0, p2, v5}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showTitlebar(ZZ)V

    goto :goto_15

    .line 683
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 684
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v5, :cond_41

    .line 685
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_15

    .line 691
    :cond_41
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_5b

    iget v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    if-nez v5, :cond_5b

    .line 692
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 693
    .local v4, observer:Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    .line 694
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 698
    .end local v4           #observer:Landroid/view/ViewTreeObserver;
    :cond_5b
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_15

    .line 707
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_5f
    return-void
.end method

.method private setViewActivated()V
    .registers 4

    .prologue
    .line 713
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

    .line 714
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onViewActivated()V

    goto :goto_6

    .line 716
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_16
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 800
    const v0, 0x7f0d0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 801
    return-void
.end method

.method private showEmptyView(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "view"
    .parameter "emptyText"

    .prologue
    const/4 v3, 0x0

    .line 787
    const v1, 0x7f0d0114

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 788
    const v1, 0x7f0d0113

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 789
    .local v0, etv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    const v1, 0x7f0d0112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 792
    return-void
.end method

.method private showEmptyViewProgress(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 776
    const v0, 0x7f0d0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    const v0, 0x7f0d0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 778
    const v0, 0x7f0d0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 779
    return-void
.end method

.method private updateTitleAndSubtitle()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 808
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 810
    .local v2, position:I
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ltz v6, :cond_2b

    move v1, v4

    .line 812
    .local v1, hasAlbumCount:Z
    :goto_f
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v6, :cond_17

    if-eqz v1, :cond_17

    if-gtz v2, :cond_2d

    .line 813
    :cond_17
    const/4 v3, 0x0

    .line 818
    .local v3, subtitle:Ljava/lang/String;
    :goto_18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4a

    .line 819
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 821
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 828
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2a
    return-void

    .end local v1           #hasAlbumCount:Z
    .end local v3           #subtitle:Ljava/lang/String;
    :cond_2b
    move v1, v5

    .line 810
    goto :goto_f

    .line 815
    .restart local v1       #hasAlbumCount:Z
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070080

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

    .line 824
    :cond_4a
    const v4, 0x7f02008f

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 825
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 826
    const v4, 0x7f100014

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_2a
.end method

.method private updateView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 723
    if-nez p1, :cond_3

    .line 736
    :goto_2
    return-void

    .line 727
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v0, :cond_17

    .line 728
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_2

    .line 730
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    if-nez v0, :cond_1f

    .line 731
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showContent(Landroid/view/View;)V

    goto :goto_2

    .line 733
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070121

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
    .line 444
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public addScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getActionBarHeight()I
    .registers 2

    .prologue
    .line 835
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I

    return v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 861
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public isFragmentActive(Landroid/support/v4/app/Fragment;)Z
    .registers 5
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    .line 615
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-nez v1, :cond_a

    .line 618
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
    .line 454
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 455
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 457
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
    .line 462
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, photoFragment:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
    instance-of v2, p1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    if-eqz v2, :cond_b

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    .line 363
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_22

    .line 364
    const v2, 0x7f0d018e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 369
    .local v1, progressView:Landroid/widget/ProgressBar;
    :goto_1a
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 370
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onUpdateProgressView(Landroid/widget/ProgressBar;)V

    .line 372
    :cond_21
    return-void

    .line 366
    .end local v1           #progressView:Landroid/widget/ProgressBar;
    :cond_22
    const v2, 0x7f0d0039

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .restart local v1       #progressView:Landroid/widget/ProgressBar;
    goto :goto_1a
.end method

.method public onAttachedToWindow()V
    .registers 6

    .prologue
    .line 376
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 378
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2a

    .line 381
    const v3, 0x7f0d018e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 384
    .local v2, progressView:Landroid/widget/ProgressBar;
    if-eqz v2, :cond_2a

    .line 385
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

    .line 386
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onUpdateProgressView(Landroid/widget/ProgressBar;)V

    goto :goto_1a

    .line 390
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    .end local v2           #progressView:Landroid/widget/ProgressBar;
    :cond_2a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    if-nez v0, :cond_c

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->toggleFullScreen()V

    .line 351
    :goto_b
    return-void

    .line 349
    :cond_c
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 210
    .local v10, mIntent:Landroid/content/Intent;
    const-string v0, "account"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 211
    const-string v0, "show_photo_only"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    .line 213
    const/4 v8, -0x1

    .line 214
    .local v8, currentItem:I
    if-eqz p1, :cond_75

    .line 215
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.ITEM"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 216
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 230
    :cond_2d
    :goto_2d
    const-string v0, "album_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 231
    const-string v0, "album_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    .line 236
    :goto_3d
    const-string v0, "owner_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 237
    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerId:Ljava/lang/Long;

    .line 240
    :cond_53
    const-string v0, "mediarefs"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 241
    const-string v0, "mediarefs"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    .line 242
    .local v12, parcelables:[Landroid/os/Parcelable;
    array-length v0, v12

    new-array v0, v0, [Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    .line 243
    const/4 v9, 0x0

    .local v9, i:I
    :goto_67
    array-length v0, v12

    if-ge v9, v0, :cond_a2

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    aget-object v0, v12, v9

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    aput-object v0, v1, v9

    .line 243
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 218
    .end local v9           #i:I
    .end local v12           #parcelables:[Landroid/os/Parcelable;
    :cond_75
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mShowPhotoOnly:Z

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    .line 219
    const-string v0, "notif_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notif_read"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 221
    .local v13, read:Z
    if-eqz v11, :cond_2d

    if-nez v13, :cond_2d

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0, v11}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_2d

    .line 233
    .end local v11           #notificationId:Ljava/lang/String;
    .end local v13           #read:Z
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    goto :goto_3d

    .line 248
    :cond_a2
    const-string v0, "album_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 249
    const-string v0, "album_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    .line 252
    :cond_b8
    const-string v0, "stream_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 253
    const-string v0, "stream_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mStreamId:Ljava/lang/String;

    .line 256
    :cond_c8
    const-string v0, "circle_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 257
    const-string v0, "circle_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mCircleId:Ljava/lang/String;

    .line 260
    :cond_d8
    const-string v0, "photos_of_user_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 261
    const-string v0, "photos_of_user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoOfUserId:Ljava/lang/Long;

    .line 264
    :cond_ee
    const-string v0, "activity_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 265
    const-string v0, "activity_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActivityId:Ljava/lang/String;

    .line 268
    :cond_fe
    const-string v0, "photo_url"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 269
    const-string v0, "photo_url"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoUrl:Ljava/lang/String;

    .line 272
    :cond_10e
    const-string v0, "photo_ref"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    if-gez v8, :cond_122

    .line 273
    const-string v0, "photo_ref"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 276
    :cond_122
    const-string v0, "page_hint"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    if-gez v8, :cond_135

    .line 277
    const-string v0, "page_hint"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    .line 281
    :cond_135
    const-string v0, "photo_index"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    if-gez v8, :cond_146

    .line 282
    const-string v0, "photo_index"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 284
    :cond_146
    iput v8, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I

    .line 286
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setContentView(I)V

    .line 287
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 289
    const-string v0, "refresh"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string v0, "refresh"

    const-wide/16 v1, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 292
    .local v5, forceLoadId:Ljava/lang/Long;
    :goto_16b
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->setFragmentPagerListener(Lcom/google/android/apps/plus/phone/EsFragmentPagerAdapter$OnFragmentPagerListener;)V

    .line 296
    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoViewPager;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->setOnInterceptTouchListener(Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0d0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1be

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 306
    .local v7, actionBar:Landroid/app/ActionBar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 312
    .end local v7           #actionBar:Landroid/app/ActionBar;
    :goto_1b6
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    .line 313
    return-void

    .line 289
    .end local v5           #forceLoadId:Ljava/lang/Long;
    :cond_1bc
    const/4 v5, 0x0

    goto :goto_16b

    .line 308
    .restart local v5       #forceLoadId:Ljava/lang/Long;
    :cond_1be
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->showTitlebar(ZZ)V

    .line 309
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_1b6
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 16
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

    .line 494
    packed-switch p1, :pswitch_data_4c

    move-object v0, v4

    .line 510
    :goto_5
    return-object v0

    .line 496
    :pswitch_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 497
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mCircleId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoOfUserId:Ljava/lang/Long;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mStreamId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActivityId:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoUrl:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPageHint:I

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 502
    :pswitch_24
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 505
    .local v12, albumUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 506
    .local v2, loaderUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewActivity$AlbumDetailsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 494
    nop

    :pswitch_data_4c
    .packed-switch 0x7f0d0026
        :pswitch_6
        :pswitch_24
    .end packed-switch
.end method

.method public onFragmentVisible(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    if-nez v0, :cond_9

    .line 630
    :cond_8
    :goto_8
    return-void

    .line 626
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 629
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

    .line 515
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_82

    .line 585
    :cond_a
    :goto_a
    return-void

    .line 517
    :pswitch_b
    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_42

    .line 518
    :cond_13
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsEmpty:Z

    .line 519
    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFragmentIsLoading:Z

    .line 520
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateView(Landroid/view/View;)V

    .line 554
    :goto_1c
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mOwnerId:Ljava/lang/Long;

    if-eqz v6, :cond_50

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumId:Ljava/lang/Long;

    if-eqz v6, :cond_50

    move v1, v4

    .line 555
    .local v1, hasAlbumAndOwner:Z
    :goto_25
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 556
    .local v3, needName:Z
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ne v6, v8, :cond_52

    move v2, v4

    .line 557
    .local v2, needCount:Z
    :goto_30
    if-eqz v1, :cond_54

    if-nez v3, :cond_36

    if-eqz v2, :cond_54

    .line 558
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const v5, 0x7f0d0027

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_a

    .line 523
    .end local v1           #hasAlbumAndOwner:Z
    .end local v2           #needCount:Z
    .end local v3           #needName:Z
    :cond_42
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;Landroid/database/Cursor;Landroid/support/v4/content/Loader;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_50
    move v1, v5

    .line 554
    goto :goto_25

    .restart local v1       #hasAlbumAndOwner:Z
    .restart local v3       #needName:Z
    :cond_52
    move v2, v5

    .line 556
    goto :goto_30

    .line 559
    .restart local v2       #needCount:Z
    :cond_54
    if-nez v3, :cond_a

    .line 561
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    goto :goto_a

    .line 568
    .end local v1           #hasAlbumAndOwner:Z
    .end local v2           #needCount:Z
    .end local v3           #needName:Z
    :pswitch_5a
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 569
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, albumName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    if-nez v5, :cond_6c

    .line 571
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumName:Ljava/lang/String;

    .line 574
    :cond_6c
    iget v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    if-ne v5, v8, :cond_79

    .line 575
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v4, -0x2

    :goto_77
    iput v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAlbumCount:I

    .line 580
    :cond_79
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    goto :goto_a

    .line 575
    :cond_7d
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_77

    .line 515
    :pswitch_data_82
    .packed-switch 0x7f0d0026
        :pswitch_b
        :pswitch_5a
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
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
    .line 589
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 423
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

    .line 424
    .local v1, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 426
    const/4 v2, 0x1

    .line 429
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
    .line 610
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setViewActivated()V

    .line 611
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 605
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewScrolling:Z

    .line 606
    return-void

    .line 605
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
    .line 593
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 597
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewScrolling:Z

    if-eqz v0, :cond_16

    :cond_9
    move v0, v1

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 598
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setViewActivated()V

    .line 599
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->updateTitleAndSubtitle()V

    .line 600
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mPhotoIndex:I

    .line 601
    return-void

    .line 597
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarLayoutListener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;

    if-eqz v0, :cond_a

    .line 337
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->clearListener()V

    .line 340
    :cond_a
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 341
    return-void
.end method

.method public onPhotoRemoved(J)V
    .registers 9
    .parameter "photoId"

    .prologue
    .line 472
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 473
    .local v0, data:Landroid/database/Cursor;
    if-nez v0, :cond_9

    .line 490
    :goto_8
    return-void

    .line 478
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 479
    .local v1, dataCount:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_28

    .line 481
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {p0, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomeIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v2

    .line 483
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    goto :goto_8

    .line 489
    .end local v2           #intent:Landroid/content/Intent;
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f0d0026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    .line 403
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 404
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
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

    .line 409
    .local v2, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    invoke-interface {v2, p1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;->onPrepareTitlebarButtons(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 414
    .end local v2           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;
    :cond_2a
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 318
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 319
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    .line 320
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 322
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mIsPaused:Z

    .line 323
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    if-eqz v0, :cond_28

    .line 324
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mRestartLoader:Z

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0d0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 330
    :cond_28
    :goto_28
    return-void

    .line 328
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    goto :goto_28
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.ITEM"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mViewPager:Lcom/google/android/apps/plus/views/PhotoViewPager;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->finish()V

    .line 419
    return-void
.end method

.method public onTouchIntercept(FF)Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    .registers 8
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, interceptLeft:Z
    const/4 v2, 0x0

    .line 648
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

    .line 649
    .local v3, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    if-nez v1, :cond_1a

    .line 650
    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onInterceptMoveLeft(FF)Z

    move-result v1

    .line 652
    :cond_1a
    if-nez v2, :cond_20

    .line 653
    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onInterceptMoveRight(FF)Z

    move-result v2

    .line 655
    :cond_20
    invoke-interface {v3}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onViewActivated()V

    goto :goto_8

    .line 658
    .end local v3           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_24
    if-eqz v1, :cond_2e

    .line 659
    if-eqz v2, :cond_2b

    .line 660
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    .line 666
    :goto_2a
    return-object v4

    .line 662
    :cond_2b
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a

    .line 663
    :cond_2e
    if-eqz v2, :cond_33

    .line 664
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a

    .line 666
    :cond_33
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_2a
.end method

.method public removeMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mMenuItemListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public removeScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public toggleFullScreen()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 467
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 468
    return-void

    .line 467
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public updateMenuItems()V
    .registers 3

    .prologue
    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 636
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->invalidateOptionsMenu()V

    .line 641
    :goto_9
    return-void

    .line 639
    :cond_a
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method
