.class public abstract Lcom/android/browser/SecBrowserAdapterView;
.super Landroid/view/ViewGroup;
.source "SecBrowserAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SecBrowserAdapterView$1;,
        Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;,
        Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;,
        Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;,
        Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;,
        Lcom/android/browser/SecBrowserAdapterView$OnItemLongClickListener;,
        Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/SecBrowserAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    .line 151
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 157
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 162
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 168
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 200
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 205
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 224
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mBlockLayoutRequests:Z

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    .line 151
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 157
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 162
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 168
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 200
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 205
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 224
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mBlockLayoutRequests:Z

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    .line 151
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 157
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 162
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 168
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 200
    iput v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 205
    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 224
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mBlockLayoutRequests:Z

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SecBrowserAdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/SecBrowserAdapterView;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/SecBrowserAdapterView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 877
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 888
    :goto_4
    return-void

    .line 880
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 881
    .local v3, selection:I
    if-ltz v3, :cond_1e

    .line 882
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 883
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/android/browser/SecBrowserAdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 886
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/android/browser/SecBrowserAdapterView;)V

    goto :goto_4
.end method

.method private isScrollableForAccessibility()Z
    .registers 6

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 939
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 940
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1c

    .line 941
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 942
    .local v1, itemCount:I
    if-lez v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    .line 945
    .end local v1           #itemCount:I
    :cond_1c
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 720
    const/4 p1, 0x0

    .line 723
    :cond_a
    if-eqz p1, :cond_2d

    .line 724
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 725
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 726
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAdapterView;->setVisibility(I)V

    .line 735
    :goto_18
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_28

    .line 736
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    iget v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mTop:I

    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/SecBrowserAdapterView;->onLayout(ZIIII)V

    .line 742
    :cond_28
    :goto_28
    return-void

    .line 729
    :cond_29
    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserAdapterView;->setVisibility(I)V

    goto :goto_18

    .line 739
    :cond_2d
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_36
    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserAdapterView;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 446
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 459
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 487
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 472
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 950
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method checkFocus()V
    .registers 7

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 701
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v4

    .line 702
    .local v1, empty:Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v4

    .line 706
    .local v2, focusable:Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v4

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 707
    if-eqz v2, :cond_43

    iget-boolean v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v4

    :goto_29
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 708
    iget-object v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 709
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move v5, v4

    :cond_39
    invoke-direct {p0, v5}, Lcom/android/browser/SecBrowserAdapterView;->updateEmptyStatus(Z)V

    .line 711
    :cond_3c
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_3d
    move v1, v5

    .line 701
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_3f
    move v2, v5

    .line 702
    goto :goto_18

    .restart local v2       #focusable:Z
    :cond_41
    move v3, v5

    .line 706
    goto :goto_1f

    :cond_43
    move v3, v5

    .line 707
    goto :goto_29
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 1017
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1018
    :cond_e
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->selectionChanged()V

    .line 1019
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 1020
    iget-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 1022
    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 892
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 893
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 895
    const/4 v1, 0x1

    .line 897
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 780
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 772
    return-void
.end method

.method findSyncPosition()I
    .registers 20

    .prologue
    .line 1033
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 1035
    .local v2, count:I
    if-nez v2, :cond_8

    .line 1036
    const/4 v14, -0x1

    .line 1108
    :cond_7
    :goto_7
    return v14

    .line 1039
    :cond_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 1040
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/browser/SecBrowserAdapterView;->mSyncPosition:I

    .line 1043
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_18

    .line 1044
    const/4 v14, -0x1

    goto :goto_7

    .line 1048
    :cond_18
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1049
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1056
    .local v3, endTime:J
    move v5, v14

    .line 1059
    .local v5, first:I
    move v10, v14

    .line 1062
    .local v10, last:I
    const/4 v11, 0x0

    .line 1072
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1073
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_40

    .line 1074
    const/4 v14, -0x1

    goto :goto_7

    .line 1092
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_36
    if-nez v6, :cond_3c

    if-eqz v11, :cond_62

    if-nez v7, :cond_62

    .line 1094
    :cond_3c
    add-int/lit8 v10, v10, 0x1

    .line 1095
    move v14, v10

    .line 1097
    const/4 v11, 0x0

    .line 1077
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_40
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_5c

    .line 1078
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1079
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_7

    .line 1084
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_5e

    const/4 v7, 0x1

    .line 1085
    .restart local v7       #hitLast:Z
    :goto_55
    if-nez v5, :cond_60

    const/4 v6, 0x1

    .line 1087
    .restart local v6       #hitFirst:Z
    :goto_58
    if-eqz v7, :cond_36

    if-eqz v6, :cond_36

    .line 1108
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5c
    const/4 v14, -0x1

    goto :goto_7

    .line 1084
    .restart local v12       #rowId:J
    :cond_5e
    const/4 v7, 0x0

    goto :goto_55

    .line 1085
    .restart local v7       #hitLast:Z
    :cond_60
    const/4 v6, 0x0

    goto :goto_58

    .line 1098
    .restart local v6       #hitFirst:Z
    :cond_62
    if-nez v7, :cond_68

    if-nez v11, :cond_40

    if-nez v6, :cond_40

    .line 1100
    :cond_68
    add-int/lit8 v5, v5, -0x1

    .line 1101
    move v14, v5

    .line 1103
    const/4 v11, 0x1

    goto :goto_40
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 576
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 619
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemIdAtPosition(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 756
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 757
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v1, -0x8000

    :goto_a
    return-wide v1

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 629
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .parameter "view"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 589
    move-object v3, p1

    .line 592
    .local v3, listItem:Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_10

    move-result v6

    if-nez v6, :cond_12

    .line 593
    move-object v3, v4

    goto :goto_2

    .line 595
    .end local v4           #v:Landroid/view/View;
    :catch_10
    move-exception v1

    .line 609
    :cond_11
    :goto_11
    return v5

    .line 601
    .restart local v4       #v:Landroid/view/View;
    :cond_12
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getChildCount()I

    move-result v0

    .line 602
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_11

    .line 603
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 604
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_11

    .line 602
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 546
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 954
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 955
    .local v0, count:I
    const/4 v1, 0x0

    .line 957
    .local v1, found:Z
    if-lez v0, :cond_40

    .line 962
    iget-boolean v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 965
    iput-boolean v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 969
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->findSyncPosition()I

    move-result v2

    .line 970
    .local v2, newPos:I
    if-ltz v2, :cond_20

    .line 972
    invoke-virtual {p0, v2, v7}, Lcom/android/browser/SecBrowserAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 973
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_20

    .line 975
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAdapterView;->setNextSelectedPositionInt(I)V

    .line 976
    const/4 v1, 0x1

    .line 980
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_20
    if-nez v1, :cond_40

    .line 982
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 985
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_2a

    .line 986
    add-int/lit8 v2, v0, -0x1

    .line 988
    :cond_2a
    if-gez v2, :cond_2d

    .line 989
    const/4 v2, 0x0

    .line 993
    :cond_2d
    invoke-virtual {p0, v2, v7}, Lcom/android/browser/SecBrowserAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 994
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_37

    .line 996
    invoke-virtual {p0, v2, v5}, Lcom/android/browser/SecBrowserAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 998
    :cond_37
    if-ltz v3, :cond_40

    .line 999
    invoke-virtual {p0, v3}, Lcom/android/browser/SecBrowserAdapterView;->setNextSelectedPositionInt(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->checkSelectionChanged()V

    .line 1001
    const/4 v1, 0x1

    .line 1005
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_40
    if-nez v1, :cond_4f

    .line 1007
    iput v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 1008
    iput-wide v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 1009
    iput v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 1010
    iput-wide v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 1011
    iput-boolean v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 1012
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->checkSelectionChanged()V

    .line 1014
    :cond_4f
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 670
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1120
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 835
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 836
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectionNotifier:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 926
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 927
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 928
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 929
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 930
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 932
    :cond_17
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 933
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 934
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 935
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 936
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 916
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 917
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 918
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 919
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 920
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 922
    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 527
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mLayoutHeight:I

    .line 528
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "child"
    .parameter "event"

    .prologue
    .line 902
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 904
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 905
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 907
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 908
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 909
    const/4 v1, 0x1

    .line 911
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;

    if-eqz v1, :cond_18

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAdapterView;->playSoundEffect(I)V

    .line 290
    if-eqz p1, :cond_e

    .line 291
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 293
    :cond_e
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;->onItemClick(Lcom/android/browser/SecBrowserAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 297
    :cond_18
    return v0
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1154
    iput-boolean v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 1155
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncHeight:J

    .line 1156
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1158
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1159
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 1160
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncPosition:I

    .line 1161
    if-eqz v1, :cond_2c

    .line 1162
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSpecificTop:I

    .line 1164
    :cond_2c
    iput v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncMode:I

    .line 1181
    .end local v1           #v:Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1167
    :cond_2f
    invoke-virtual {p0, v4}, Lcom/android/browser/SecBrowserAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1168
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1169
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1170
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 1174
    :goto_4b
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncPosition:I

    .line 1175
    if-eqz v1, :cond_57

    .line 1176
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSpecificTop:I

    .line 1178
    :cond_57
    iput v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncMode:I

    goto :goto_2e

    .line 1172
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 522
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 500
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 512
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in SecBrowserAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .line 855
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1d

    .line 856
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_33

    .line 861
    :cond_c
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectionNotifier:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;

    if-nez v0, :cond_18

    .line 862
    new-instance v0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;-><init>(Lcom/android/browser/SecBrowserAdapterView;Lcom/android/browser/SecBrowserAdapterView$1;)V

    iput-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectionNotifier:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;

    .line 864
    :cond_18
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectionNotifier:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 871
    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_32

    .line 872
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAdapterView;->sendAccessibilityEvent(I)V

    .line 874
    :cond_32
    return-void

    .line 866
    :cond_33
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAdapterView;->fireOnSelected()V

    goto :goto_1d
.end method

.method public setFocusable(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 675
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 676
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 678
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableState:Z

    .line 679
    if-nez p1, :cond_15

    .line 680
    iput-boolean v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 683
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 684
    return-void

    .end local v1           #empty:Z
    :cond_23
    move v1, v2

    .line 676
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_25
    move v3, v2

    .line 683
    goto :goto_1f
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 688
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 689
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 691
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 692
    if-eqz p1, :cond_15

    .line 693
    iput-boolean v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mDesiredFocusableState:Z

    .line 696
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 697
    return-void

    .end local v1           #empty:Z
    :cond_23
    move v1, v2

    .line 689
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_25
    move v3, v2

    .line 696
    goto :goto_1f
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1138
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iput p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 1139
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 1141
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1142
    iput p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncPosition:I

    .line 1143
    iget-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 1145
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 762
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an SecBrowserAdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 267
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iput-object p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;

    .line 268
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 383
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iput-object p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemSelectedListener:Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;

    .line 384
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1128
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<TT;>;"
    iput p1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 1130
    return-void
.end method
