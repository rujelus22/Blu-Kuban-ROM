.class public abstract Lcom/sec/android/touchwiz/widget/TwAdapterView;
.super Landroid/view/ViewGroup;
.source "TwAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAdapterView$1;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;,
        Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
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


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


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

.field mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
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
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 80
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 90
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 122
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 148
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 154
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 159
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 165
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 197
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 202
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 221
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 80
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 90
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 122
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 148
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 154
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 159
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 165
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 197
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 202
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 221
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 80
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 90
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 122
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 148
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 154
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 159
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 165
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 197
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 202
    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 221
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAdapterView;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 874
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 885
    :goto_4
    return-void

    .line 877
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 878
    .local v3, selection:I
    if-ltz v3, :cond_1e

    .line 879
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 880
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 883
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    goto :goto_4
.end method

.method private isScrollableForAccessibility()Z
    .registers 4

    .prologue
    .line 935
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 936
    .local v0, itemCount:I
    if-lez v0, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-gtz v1, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1a

    :cond_18
    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 717
    const/4 p1, 0x0

    .line 720
    :cond_a
    if-eqz p1, :cond_2d

    .line 721
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 722
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    .line 732
    :goto_18
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_28

    .line 733
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 739
    :cond_28
    :goto_28
    return-void

    .line 726
    :cond_29
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    goto :goto_18

    .line 736
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_36
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 443
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 456
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 484
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 469
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 942
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

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
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 698
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v4

    .line 699
    .local v1, empty:Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v4

    .line 703
    .local v2, focusable:Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v4

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 704
    if-eqz v2, :cond_43

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v4

    :goto_29
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 705
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 706
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move v5, v4

    :cond_39
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->updateEmptyStatus(Z)V

    .line 708
    :cond_3c
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_3d
    move v1, v5

    .line 698
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_3f
    move v2, v5

    .line 699
    goto :goto_18

    .restart local v2       #focusable:Z
    :cond_41
    move v3, v5

    .line 703
    goto :goto_1f

    :cond_43
    move v3, v5

    .line 704
    goto :goto_29
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 1009
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1010
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->selectionChanged()V

    .line 1011
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 1012
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 1014
    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 889
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 892
    const/4 v1, 0x1

    .line 894
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
    .line 776
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 777
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
    .line 768
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 769
    return-void
.end method

.method findSyncPosition()I
    .registers 20

    .prologue
    .line 1025
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1027
    .local v2, count:I
    if-nez v2, :cond_8

    .line 1028
    const/4 v14, -0x1

    .line 1100
    :cond_7
    :goto_7
    return v14

    .line 1031
    :cond_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1032
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1035
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_18

    .line 1036
    const/4 v14, -0x1

    goto :goto_7

    .line 1040
    :cond_18
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1041
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1043
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1048
    .local v3, endTime:J
    move v5, v14

    .line 1051
    .local v5, first:I
    move v10, v14

    .line 1054
    .local v10, last:I
    const/4 v11, 0x0

    .line 1064
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1065
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_40

    .line 1066
    const/4 v14, -0x1

    goto :goto_7

    .line 1084
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_36
    if-nez v6, :cond_3c

    if-eqz v11, :cond_62

    if-nez v7, :cond_62

    .line 1086
    :cond_3c
    add-int/lit8 v10, v10, 0x1

    .line 1087
    move v14, v10

    .line 1089
    const/4 v11, 0x0

    .line 1069
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_40
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_5c

    .line 1070
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1071
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_7

    .line 1076
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_5e

    const/4 v7, 0x1

    .line 1077
    .restart local v7       #hitLast:Z
    :goto_55
    if-nez v5, :cond_60

    const/4 v6, 0x1

    .line 1079
    .restart local v6       #hitFirst:Z
    :goto_58
    if-eqz v7, :cond_36

    if-eqz v6, :cond_36

    .line 1100
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5c
    const/4 v14, -0x1

    goto :goto_7

    .line 1076
    .restart local v12       #rowId:J
    :cond_5e
    const/4 v7, 0x0

    goto :goto_55

    .line 1077
    .restart local v7       #hitLast:Z
    :cond_60
    const/4 v6, 0x0

    goto :goto_58

    .line 1090
    .restart local v6       #hitFirst:Z
    :cond_62
    if-nez v7, :cond_68

    if-nez v11, :cond_40

    if-nez v6, :cond_40

    .line 1092
    :cond_68
    add-int/lit8 v5, v5, -0x1

    .line 1093
    move v14, v5

    .line 1095
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
    .line 573
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 657
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 616
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 748
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 749
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 753
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 754
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
    .line 626
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 272
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 338
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 384
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .parameter "view"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 586
    move-object v3, p1

    .line 589
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

    .line 590
    move-object v3, v4

    goto :goto_2

    .line 592
    .end local v4           #v:Landroid/view/View;
    :catch_10
    move-exception v1

    .line 606
    :cond_11
    :goto_11
    return v5

    .line 598
    .restart local v4       #v:Landroid/view/View;
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v0

    .line 599
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_11

    .line 600
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 601
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_11

    .line 599
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 557
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 558
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 559
    .local v1, selection:I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 560
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 562
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 543
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 534
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 946
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 947
    .local v0, count:I
    const/4 v1, 0x0

    .line 949
    .local v1, found:Z
    if-lez v0, :cond_40

    .line 954
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 957
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findSyncPosition()I

    move-result v2

    .line 962
    .local v2, newPos:I
    if-ltz v2, :cond_20

    .line 964
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 965
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_20

    .line 967
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 968
    const/4 v1, 0x1

    .line 972
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_20
    if-nez v1, :cond_40

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 977
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_2a

    .line 978
    add-int/lit8 v2, v0, -0x1

    .line 980
    :cond_2a
    if-gez v2, :cond_2d

    .line 981
    const/4 v2, 0x0

    .line 985
    :cond_2d
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 986
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_37

    .line 988
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 990
    :cond_37
    if-ltz v3, :cond_40

    .line 991
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 993
    const/4 v1, 0x1

    .line 997
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_40
    if-nez v1, :cond_4f

    .line 999
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1000
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 1001
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1002
    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 1003
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    .line 1006
    :cond_4f
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 667
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1112
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 832
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 833
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 834
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 923
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 924
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 926
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 927
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 929
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 930
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 932
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 913
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 914
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 917
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 919
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
    .line 524
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLayoutHeight:I

    .line 525
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "child"
    .parameter "event"

    .prologue
    .line 899
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 901
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 902
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 904
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 905
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 906
    const/4 v1, 0x1

    .line 908
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
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    if-eqz v1, :cond_18

    .line 286
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->playSoundEffect(I)V

    .line 287
    if-eqz p1, :cond_e

    .line 288
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 290
    :cond_e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 294
    :cond_18
    return v0
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1146
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1147
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 1148
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1150
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1152
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1153
    if-eqz v1, :cond_2c

    .line 1154
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1156
    :cond_2c
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 1173
    .end local v1           #v:Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1159
    :cond_2f
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1160
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1161
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1162
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1166
    :goto_4b
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1167
    if-eqz v1, :cond_57

    .line 1168
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1170
    :cond_57
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_2e

    .line 1164
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 519
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 497
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 509
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .line 852
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1d

    .line 853
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_33

    .line 858
    :cond_c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    if-nez v0, :cond_18

    .line 859
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;Lcom/sec/android/touchwiz/widget/TwAdapterView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    .line 861
    :cond_18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectionNotifier:Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 868
    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_32

    .line 869
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->sendAccessibilityEvent(I)V

    .line 871
    :cond_32
    return-void

    .line 863
    :cond_33
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->fireOnSelected()V

    goto :goto_1d
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "emptyView"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mEmptyView:Landroid/view/View;

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 645
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_e
    const/4 v1, 0x1

    .line 646
    .local v1, empty:Z
    :goto_f
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->updateEmptyStatus(Z)V

    .line 647
    return-void

    .line 645
    .end local v1           #empty:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setFocusable(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 673
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 675
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    .line 676
    if-nez p1, :cond_15

    .line 677
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 680
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 681
    return-void

    .end local v1           #empty:Z
    :cond_23
    move v1, v2

    .line 673
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_25
    move v3, v2

    .line 680
    goto :goto_1f
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 686
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 688
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 689
    if-eqz p1, :cond_15

    .line 690
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDesiredFocusableState:Z

    .line 693
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 694
    return-void

    .end local v1           #empty:Z
    :cond_23
    move v1, v2

    .line 686
    goto :goto_f

    .restart local v1       #empty:Z
    :cond_25
    move v3, v2

    .line 693
    goto :goto_1f
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1130
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1131
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 1133
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1134
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1135
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1137
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 759
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 264
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 265
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 327
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setLongClickable(Z)V

    .line 330
    :cond_a
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    .line 331
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 380
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    .line 381
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1120
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>;"
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1121
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 1122
    return-void
.end method

.method public abstract setSelection(I)V
.end method
