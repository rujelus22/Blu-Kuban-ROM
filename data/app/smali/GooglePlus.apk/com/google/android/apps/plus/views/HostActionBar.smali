.class public Lcom/google/android/apps/plus/views/HostActionBar;
.super Landroid/widget/RelativeLayout;
.source "HostActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/HostActionBar$SavedState;,
        Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;,
        Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;,
        Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;,
        Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;,
        Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mActionButton1:Landroid/widget/ImageView;

.field private mActionButton1Visible:Z

.field private mActionButton2:Landroid/widget/ImageView;

.field private mActionButton2Visible:Z

.field private mActionId1:I

.field private mActionId2:I

.field private mActive:Z

.field private mAppIcon:Landroid/widget/ImageView;

.field private mContextActionMode:Z

.field private mCurrentButtonActionText:Ljava/lang/String;

.field private mDefaultPrimarySpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mDoneButton:Landroid/view/View;

.field private mDoneButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;

.field private mInvalidateActionBarRunnable:Ljava/lang/Runnable;

.field private mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

.field private mNotificationCount:I

.field private mNotificationCountOverflow:Landroid/view/View;

.field private mNotificationCountText:Landroid/widget/TextView;

.field private mOverflowMenuButton:Landroid/view/View;

.field private mOverflowPopupMenu:Ljava/lang/Object;

.field private mOverflowPopupMenuVisible:Z

.field private mPrimarySpinner:Landroid/widget/Spinner;

.field private mPrimarySpinnerContainer:Landroid/view/View;

.field private mPrimarySpinnerVisible:Z

.field private mProgressIndicator:Landroid/view/View;

.field private mProgressIndicatorVisible:Z

.field private mRefreshButton:Landroid/view/View;

.field private mRefreshButtonVisible:Z

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

.field private mSearchViewContainer:Landroid/view/View;

.field private mSearchViewVisible:Z

.field private mShareMenuButton:Landroid/view/View;

.field private mShareMenuItemIds:[I

.field private mShareMenuVisible:Z

.field private mSharePopupMenu:Ljava/lang/Object;

.field private mSharePopupMenuVisible:Z

.field private mTitle:Landroid/widget/TextView;

.field private mTitleVisible:Z

.field private mUpButton:Landroid/view/View;

.field private mUpButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar$1;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mInvalidateActionBarRunnable:Ljava/lang/Runnable;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar$1;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mInvalidateActionBarRunnable:Ljava/lang/Runnable;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar$1;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mInvalidateActionBarRunnable:Ljava/lang/Runnable;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/HostActionBar;)Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/HostActionBar;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/views/HostActionBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/views/HostActionBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->showOverflowMenu()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->showSharePopupMenu()V

    return-void
.end method

.method private configurePopupMenuListeners(Ljava/lang/Object;)V
    .registers 6
    .parameter "popupMenu"

    .prologue
    const/4 v3, 0x0

    .line 742
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1b

    .line 743
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;Lcom/google/android/apps/plus/views/HostActionBar$1;)V

    .local v0, listener:Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;
    move-object v1, p1

    .line 744
    check-cast v1, Landroid/widget/PopupMenu;

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListenerV14;

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 748
    :goto_15
    check-cast p1, Landroid/widget/PopupMenu;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 749
    return-void

    .line 746
    .end local v0           #listener:Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;
    .restart local p1
    :cond_1b
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;Lcom/google/android/apps/plus/views/HostActionBar$1;)V

    .restart local v0       #listener:Lcom/google/android/apps/plus/views/HostActionBar$PopupMenuListener;
    goto :goto_15
.end method

.method private getOverflowPopupMenu()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 667
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    .line 677
    :goto_6
    return-object v0

    .line 671
    :cond_7
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 672
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->configurePopupMenuListeners(Ljava/lang/Object;)V

    .line 674
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 676
    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    goto :goto_6
.end method

.method private getSharePopupMenu()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 726
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 727
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    .line 737
    :goto_6
    return-object v0

    .line 730
    :cond_7
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 731
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->configurePopupMenuListeners(Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 735
    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    goto :goto_6
.end method

.method private isOverflowMenuNeeded()Z
    .registers 2

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getOverflowPopupMenu()Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->prepareOverflowMenu()Z

    move-result v0

    return v0
.end method

.method private prepareOverflowMenu()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 622
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    if-nez v8, :cond_7

    move v0, v9

    .line 663
    :cond_6
    :goto_6
    return v0

    .line 626
    :cond_7
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    check-cast v8, Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    .line 629
    .local v6, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v6}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, anyVisible:Z
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuVisible:Z

    if-eqz v8, :cond_4b

    .line 634
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v7

    .line 635
    .local v7, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v7, :cond_6

    .line 636
    invoke-interface {v6, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 637
    .local v4, item:Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 638
    .local v2, id:I
    const/4 v3, 0x0

    .line 639
    .local v3, isShareItem:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2e
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuItemIds:[I

    array-length v8, v8

    if-ge v5, v8, :cond_3a

    .line 640
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuItemIds:[I

    aget v8, v8, v5

    if-ne v2, v8, :cond_42

    .line 641
    const/4 v3, 0x1

    .line 646
    :cond_3a
    if-eqz v3, :cond_45

    .line 647
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 635
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 639
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 649
    :cond_45
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_3f

    .line 653
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #isShareItem:Z
    .end local v4           #item:Landroid/view/MenuItem;
    .end local v5           #j:I
    .end local v7           #size:I
    :cond_4b
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v7

    .line 654
    .restart local v7       #size:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_50
    if-ge v1, v7, :cond_6

    .line 655
    invoke-interface {v6, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 656
    .restart local v4       #item:Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 657
    const/4 v0, 0x1

    .line 658
    goto :goto_6

    .line 654
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method

.method private prepareSharePopupMenu()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 694
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    if-nez v8, :cond_7

    move v0, v9

    .line 722
    :cond_6
    return v0

    .line 698
    :cond_7
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    check-cast v8, Landroid/widget/PopupMenu;

    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    .line 701
    .local v6, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v6}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, anyVisible:Z
    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v7

    .line 706
    .local v7, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v7, :cond_6

    .line 707
    invoke-interface {v6, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 708
    .local v4, item:Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 709
    .local v2, id:I
    const/4 v3, 0x0

    .line 710
    .local v3, isShareItem:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2a
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuItemIds:[I

    array-length v8, v8

    if-ge v5, v8, :cond_36

    .line 711
    iget-object v8, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuItemIds:[I

    aget v8, v8, v5

    if-ne v2, v8, :cond_3f

    .line 712
    const/4 v3, 0x1

    .line 717
    :cond_36
    if-nez v3, :cond_3c

    .line 718
    const/4 v0, 0x1

    .line 719
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 706
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 710
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a
.end method

.method private showOverflowMenu()V
    .registers 3

    .prologue
    .line 605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z

    .line 606
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getOverflowPopupMenu()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupMenu;

    .line 607
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->prepareOverflowMenu()Z

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z

    .line 609
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 610
    return-void
.end method

.method private showSharePopupMenu()V
    .registers 4

    .prologue
    .line 684
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z

    .line 685
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getSharePopupMenu()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupMenu;

    .line 686
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->prepareSharePopupMenu()Z

    move-result v0

    .line 687
    .local v0, anyVisible:Z
    if-eqz v0, :cond_15

    .line 688
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z

    .line 689
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 691
    :cond_15
    return-void
.end method

.method private showTooltip(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .registers 13
    .parameter "view"
    .parameter "tooltip"

    .prologue
    const/4 v8, 0x0

    .line 574
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 575
    .local v3, screenPos:[I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 576
    .local v1, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 577
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 579
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 581
    .local v6, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 582
    .local v2, height:I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 584
    .local v4, screenWidth:I
    invoke-static {v0, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 586
    .local v5, toast:Landroid/widget/Toast;
    const/16 v7, 0x35

    aget v8, v3, v8

    sub-int v8, v4, v8

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v5, v7, v8, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 588
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 589
    const/4 v7, 0x1

    return v7
.end method

.method private updateNotificationCount()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 474
    iget v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    if-nez v0, :cond_1b

    .line 475
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountOverflow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :goto_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->setUpButtonContentDescription(Ljava/lang/String;)V

    .line 491
    return-void

    .line 479
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mAppIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_3d

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountOverflow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 485
    :cond_3d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountOverflow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method


# virtual methods
.method public commit()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 285
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    if-eqz v0, :cond_a0

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    if-eqz v0, :cond_a3

    move v0, v2

    :goto_14
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    if-eqz v0, :cond_a6

    move v0, v2

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerVisible:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_a9

    move v0, v2

    :goto_34
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerVisible:Z

    if-nez v0, :cond_42

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDefaultPrimarySpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 298
    :cond_42
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewVisible:Z

    if-eqz v0, :cond_ab

    move v0, v2

    :goto_49
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewVisible:Z

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setVisible(Z)V

    .line 301
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButtonVisible:Z

    if-eqz v0, :cond_ad

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    if-nez v0, :cond_ad

    move v0, v2

    :goto_5e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicator:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    if-eqz v0, :cond_af

    move v0, v2

    :goto_68
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1Visible:Z

    if-eqz v0, :cond_b1

    move v0, v2

    :goto_72
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2Visible:Z

    if-eqz v0, :cond_b3

    move v0, v2

    :goto_7c
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuVisible:Z

    if-eqz v0, :cond_b5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->isOverflowMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v2

    :goto_8c
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->isOverflowMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 312
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z

    if-eqz v0, :cond_b7

    .line 313
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->prepareSharePopupMenu()Z

    .line 320
    :cond_9c
    :goto_9c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    .line 321
    return-void

    :cond_a0
    move v0, v2

    .line 285
    goto/16 :goto_a

    :cond_a3
    move v0, v1

    .line 286
    goto/16 :goto_14

    :cond_a6
    move v0, v1

    .line 288
    goto/16 :goto_1e

    :cond_a9
    move v0, v1

    .line 289
    goto :goto_34

    :cond_ab
    move v0, v1

    .line 298
    goto :goto_49

    :cond_ad
    move v0, v1

    .line 301
    goto :goto_5e

    :cond_af
    move v0, v1

    .line 303
    goto :goto_68

    :cond_b1
    move v0, v1

    .line 305
    goto :goto_72

    :cond_b3
    move v0, v1

    .line 306
    goto :goto_7c

    :cond_b5
    move v0, v1

    .line 308
    goto :goto_8c

    .line 314
    :cond_b7
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z

    if-eqz v0, :cond_bf

    .line 315
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->prepareOverflowMenu()Z

    goto :goto_9c

    .line 317
    :cond_bf
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->isOverflowMenuNeeded()Z

    move-result v3

    if-eqz v3, :cond_cb

    :goto_c7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9c

    :cond_cb
    move v2, v1

    goto :goto_c7
.end method

.method public dismissPopupMenus()V
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenu:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 596
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 597
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenu:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 599
    :cond_16
    return-void
.end method

.method public finishContextActionMode()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    if-eqz v0, :cond_17

    .line 335
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    .line 336
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_17

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_17
    return-void
.end method

.method public getSearchViewAdapter()Lcom/google/android/apps/plus/views/SearchViewAdapter;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    return-object v0
.end method

.method public hideProgressIndicator()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    .line 411
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v2, :cond_17

    .line 412
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButtonVisible:Z

    if-eqz v3, :cond_18

    :goto_14
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_17
    return-void

    :cond_18
    move v0, v1

    .line 413
    goto :goto_14
.end method

.method public invalidateActionBar()V
    .registers 3

    .prologue
    .line 514
    sget-object v0, Lcom/google/android/apps/plus/views/HostActionBar;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 515
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/views/HostActionBar;->sHandler:Landroid/os/Handler;

    .line 518
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/views/HostActionBar;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mInvalidateActionBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    sget-object v0, Lcom/google/android/apps/plus/views/HostActionBar;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mInvalidateActionBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
.end method

.method public isOverflowMenuSupported()Z
    .registers 3

    .prologue
    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    if-ne p1, v0, :cond_e

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;

    if-eqz v0, :cond_d

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;->onUpButtonClick()V

    .line 552
    :cond_d
    :goto_d
    return-void

    .line 531
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    if-ne p1, v0, :cond_1c

    .line 532
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;

    if-eqz v0, :cond_d

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;->onDoneButtonClick()V

    goto :goto_d

    .line 535
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    if-ne p1, v0, :cond_24

    .line 536
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->showOverflowMenu()V

    goto :goto_d

    .line 537
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    if-ne p1, v0, :cond_2c

    .line 538
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->showSharePopupMenu()V

    goto :goto_d

    .line 539
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    if-ne p1, v0, :cond_3a

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    if-eqz v0, :cond_d

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;->onRefreshButtonClicked()V

    goto :goto_d

    .line 543
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4a

    .line 544
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    if-eqz v0, :cond_d

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    iget v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionId1:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;->onActionButtonClicked(I)V

    goto :goto_d

    .line 547
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 548
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    if-eqz v0, :cond_d

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    iget v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionId2:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;->onActionButtonClicked(I)V

    goto :goto_d
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 165
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 166
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mAppIcon:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerContainer:Landroid/view/View;

    .line 176
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 178
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0300d6

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDefaultPrimarySpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDefaultPrimarySpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewContainer:Landroid/view/View;

    .line 183
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/view/View;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->requestFocus(Z)V

    .line 187
    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->isOverflowMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    :cond_9a
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 205
    const v0, 0x7f090134

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicator:Landroid/view/View;

    .line 207
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    const-string v1, "99"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCountOverflow:Landroid/view/View;

    .line 212
    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->isOverflowMenuSupported()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :goto_114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mCurrentButtonActionText:Ljava/lang/String;

    .line 221
    return-void

    .line 217
    :cond_119
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_114
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "voiw"
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
    .line 498
    .local p1, spinner:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    if-eqz v0, :cond_9

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    invoke-interface {v0, p3}, Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;->onPrimarySpinnerSelectionChange(I)V

    .line 501
    :cond_9
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuButton:Landroid/view/View;

    if-ne p1, v1, :cond_14

    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08045c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 570
    :goto_13
    return v0

    .line 559
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    if-ne p1, v1, :cond_27

    .line 560
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;)Z

    goto :goto_13

    .line 562
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_35

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;)Z

    goto :goto_13

    .line 565
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_43

    .line 566
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;)Z

    goto :goto_13

    .line 570
    :cond_43
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 829
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;

    .line 830
    .local v0, ss:Lcom/google/android/apps/plus/views/HostActionBar$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 831
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->overflowPopupMenuVisible:Z

    if-eqz v1, :cond_16

    .line 832
    new-instance v1, Lcom/google/android/apps/plus/views/HostActionBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/HostActionBar$2;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->post(Ljava/lang/Runnable;)Z

    .line 840
    :cond_16
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->sharePopupMenuVisible:Z

    if-eqz v1, :cond_22

    .line 841
    new-instance v1, Lcom/google/android/apps/plus/views/HostActionBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/HostActionBar$3;-><init>(Lcom/google/android/apps/plus/views/HostActionBar;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->post(Ljava/lang/Runnable;)Z

    .line 849
    :cond_22
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 818
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 819
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 820
    .local v0, ss:Lcom/google/android/apps/plus/views/HostActionBar$SavedState;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_17

    .line 821
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mOverflowPopupMenuVisible:Z

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->overflowPopupMenuVisible:Z

    .line 822
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSharePopupMenuVisible:Z

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/HostActionBar$SavedState;->sharePopupMenuVisible:Z

    .line 824
    :cond_17
    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    .line 269
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    .line 270
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    .line 271
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerVisible:Z

    .line 272
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewVisible:Z

    .line 273
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButtonVisible:Z

    .line 274
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1Visible:Z

    .line 275
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2Visible:Z

    .line 276
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    .line 277
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mShareMenuVisible:Z

    .line 278
    return-void
.end method

.method public setHostActionBarListener(Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mListener:Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;

    .line 229
    return-void
.end method

.method public setNotificationCount(I)V
    .registers 2
    .parameter "notificationCount"

    .prologue
    .line 469
    iput p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->updateNotificationCount()V

    .line 471
    return-void
.end method

.method public setOnDoneButtonClickListener(Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;

    .line 237
    return-void
.end method

.method public setOnUpButtonClickListener(Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButtonListener:Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;

    .line 233
    return-void
.end method

.method public setUpButtonContentDescription(Ljava/lang/String;)V
    .registers 9
    .parameter "buttonAction"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mCurrentButtonActionText:Ljava/lang/String;

    .line 250
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 255
    :goto_10
    iget v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    if-lez v1, :cond_30

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    iget v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mNotificationCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 260
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    return-void

    .line 252
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mCurrentButtonActionText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public showActionButton(III)V
    .registers 8
    .parameter "actionId"
    .parameter "iconResId"
    .parameter "labelResId"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 427
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1Visible:Z

    if-nez v2, :cond_2e

    .line 428
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1Visible:Z

    .line 429
    iput p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionId1:I

    .line 430
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v2, :cond_2b

    .line 434
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton1Visible:Z

    if-eqz v3, :cond_2c

    :goto_28
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    .line 434
    goto :goto_28

    .line 436
    :cond_2e
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2Visible:Z

    if-nez v2, :cond_58

    .line 437
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2Visible:Z

    .line 438
    iput p1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionId2:I

    .line 439
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 442
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v2, :cond_2b

    .line 443
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActionButton2Visible:Z

    if-eqz v3, :cond_56

    :goto_52
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    :cond_56
    move v0, v1

    goto :goto_52

    .line 446
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only two action buttons are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V
    .registers 6
    .parameter "spinnerAdapter"
    .parameter "selectedPosition"

    .prologue
    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerVisible:Z

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 376
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 377
    .local v0, count:I
    if-lez v0, :cond_13

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 380
    :cond_13
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v1, :cond_1f

    .line 381
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mPrimarySpinnerContainer:Landroid/view/View;

    if-lez v0, :cond_20

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_1f
    return-void

    .line 381
    :cond_20
    const/16 v1, 0x8

    goto :goto_1c
.end method

.method public showProgressIndicator()V
    .registers 3

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    .line 400
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_14

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_14
    return-void
.end method

.method public showRefreshButton()V
    .registers 3

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButtonVisible:Z

    .line 390
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mProgressIndicatorVisible:Z

    if-nez v0, :cond_11

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mRefreshButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_11
    return-void
.end method

.method public showSearchView()V
    .registers 3

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewVisible:Z

    .line 361
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_d

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mSearchViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_d
    return-void
.end method

.method public showTitle(I)V
    .registers 5
    .parameter "titleResId"

    .prologue
    const/4 v1, 0x0

    .line 344
    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_18

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    if-eqz v2, :cond_1b

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_18
    return-void

    :cond_19
    move v0, v1

    .line 344
    goto :goto_4

    .line 347
    :cond_1b
    const/16 v1, 0x8

    goto :goto_15
.end method

.method public showTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_1c

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mTitleVisible:Z

    if-eqz v2, :cond_1f

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    .line 352
    goto :goto_8

    .line 355
    :cond_1f
    const/16 v1, 0x8

    goto :goto_19
.end method

.method public startContextActionMode()V
    .registers 3

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    if-nez v0, :cond_18

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mContextActionMode:Z

    .line 326
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mActive:Z

    if-eqz v0, :cond_18

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mUpButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostActionBar;->mDoneButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_18
    return-void
.end method
