.class public Lcom/google/android/apps/plus/views/ColumnGridView;
.super Landroid/view/ViewGroup;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;,
        Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;,
        Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;,
        Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;,
        Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;,
        Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;,
        Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;,
        Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;,
        Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;,
        Lcom/google/android/apps/plus/views/ColumnGridView$PressedHighlightable;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColCount:I

.field private mColCountSetting:I

.field private final mCurrentTouchPoint:Landroid/graphics/Point;

.field private mDataChanged:Z

.field private final mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mHasStableIds:Z

.field private mHorizontalOrientation:Z

.field private mInLayout:Z

.field private mItemCount:I

.field private mItemEnd:[I

.field private mItemMargin:I

.field private mItemStart:[I

.field private mLastScrollState:I

.field private mLastTouch:F

.field private final mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:[I

.field private final mMaximumVelocity:I

.field private mMinColWidth:I

.field private final mObserver:Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;

.field private mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

.field private mPopulating:Z

.field private mPressed:Z

.field private mRatio:F

.field private final mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

.field private mRestoreOffset:I

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSelectedPositions:Landroid/util/SparseBooleanArray;

.field private mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

.field private mSelectionMode:Z

.field private final mSelectionStartPoint:Landroid/graphics/Point;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSetPressedRunnable:Ljava/lang/Runnable;

.field private final mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchRemainder:F

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCountSetting:I

    .line 119
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 121
    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    .line 126
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    .line 129
    new-instance v1, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-direct {v1, v4}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    .line 153
    new-instance v1, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mObserver:Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;

    .line 172
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    .line 184
    new-instance v1, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    invoke-direct {v1, v4}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    .line 188
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    .line 189
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionStartPoint:Landroid/graphics/Point;

    .line 190
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    .line 193
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    .line 196
    new-instance v1, Lcom/google/android/apps/plus/views/ColumnGridView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/ColumnGridView$1;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSetPressedRunnable:Ljava/lang/Runnable;

    .line 215
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 216
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchSlop:I

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMaximumVelocity:I

    .line 218
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFlingVelocity:I

    .line 219
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    .line 221
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 222
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 223
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->setWillNotDraw(Z)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->setClipToPadding(Z)V

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/views/ColumnGridView;)Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/views/ColumnGridView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearAllState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/views/ColumnGridView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/views/ColumnGridView;)Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/support/v4/util/SparseArrayCompat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/views/ColumnGridView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/views/ColumnGridView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/views/ColumnGridView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/views/ColumnGridView;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/views/ColumnGridView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPressed:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/views/ColumnGridView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/views/ColumnGridView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/util/SparseBooleanArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private checkForSelection(II)V
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2305
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-nez v8, :cond_7

    .line 2342
    :cond_6
    :goto_6
    return-void

    .line 2309
    :cond_7
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v6, v8, p1

    .line 2310
    .local v6, xDelta:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int v7, v8, p2

    .line 2311
    .local v7, yDelta:I
    mul-int v8, v6, v6

    mul-int v9, v7, v7

    add-int v4, v8, v9

    .line 2312
    .local v4, sqrDist:I
    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchSlop:I

    iget v9, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchSlop:I

    mul-int/2addr v8, v9

    if-ge v4, v8, :cond_6

    .line 2316
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 2320
    .local v0, firstVisiblePos:I
    const/4 v3, 0x0

    .line 2322
    .local v3, shouldInvalidate:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_2b
    if-ltz v1, :cond_6c

    .line 2323
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2324
    .local v5, v:Landroid/view/View;
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    invoke-virtual {v5, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2325
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    aget v8, v8, v10

    if-lt p1, v8, :cond_58

    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    aget v8, v8, v10

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-gt p1, v8, :cond_58

    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    aget v8, v8, v11

    if-lt p2, v8, :cond_58

    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    aget v8, v8, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le p2, v8, :cond_5b

    .line 2322
    :cond_58
    :goto_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 2330
    :cond_5b
    add-int v2, v1, v0

    .line 2331
    .local v2, pos:I
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->isSelected(I)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 2332
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->deselect(I)V

    .line 2336
    :goto_66
    const/4 v3, 0x1

    goto :goto_58

    .line 2334
    :cond_68
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->select(I)V

    goto :goto_66

    .line 2339
    .end local v2           #pos:I
    .end local v5           #v:Landroid/view/View;
    :cond_6c
    if-eqz v3, :cond_6

    .line 2340
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidate()V

    goto :goto_6
.end method

.method private clearAllState()V
    .registers 4

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v1, "clearallstate - clear"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 1944
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViews()V

    .line 1947
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->resetStateForGridTop()V

    .line 1950
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->clear()V

    .line 1951
    return-void
.end method

.method private clearPressedState()V
    .registers 2

    .prologue
    .line 2345
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPressed:Z

    if-eqz v0, :cond_7

    .line 2346
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidate()V

    .line 2348
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPressed:Z

    .line 2349
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSetPressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2350
    return-void
.end method

.method private final contentFits()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 633
    iget v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    if-eq v7, v8, :cond_e

    .line 660
    :cond_d
    :goto_d
    return v6

    .line 637
    :cond_e
    const v5, 0x7fffffff

    .line 638
    .local v5, topMost:I
    const/high16 v0, -0x8000

    .line 639
    .local v0, bottomMost:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    iget v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    if-ge v2, v7, :cond_2f

    .line 640
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    aget v7, v7, v2

    if-ge v7, v5, :cond_22

    .line 641
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    aget v5, v7, v2

    .line 643
    :cond_22
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    aget v7, v7, v2

    if-le v7, v0, :cond_2c

    .line 644
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    aget v0, v7, v2

    .line 639
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 651
    :cond_2f
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_47

    .line 652
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v4

    .line 653
    .local v4, paddingBefore:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingRight()I

    move-result v3

    .line 654
    .local v3, paddingAfter:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v1

    .line 660
    .local v1, contentSize:I
    :goto_3f
    if-lt v5, v4, :cond_d

    sub-int v7, v1, v3

    if-gt v0, v7, :cond_d

    const/4 v6, 0x1

    goto :goto_d

    .line 656
    .end local v1           #contentSize:I
    .end local v3           #paddingAfter:I
    .end local v4           #paddingBefore:I
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v4

    .line 657
    .restart local v4       #paddingBefore:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingBottom()I

    move-result v3

    .line 658
    .restart local v3       #paddingAfter:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v1

    .restart local v1       #contentSize:I
    goto :goto_3f
.end method

.method private invokeOnItemScrollListener()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2036
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

    if-eqz v0, :cond_15

    .line 2037
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;->onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V

    .line 2040
    :cond_15
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/google/android/apps/plus/views/ColumnGridView;->onScrollChanged(IIII)V

    .line 2041
    return-void
.end method

.method private populate()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v3

    if-nez v3, :cond_e

    .line 1070
    :cond_d
    :goto_d
    return-void

    .line 1031
    :cond_e
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_25

    .line 1033
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_94

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    div-int v0, v3, v5

    .line 1039
    .local v0, colCount:I
    :goto_1f
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    if-eq v0, v3, :cond_25

    .line 1040
    iput v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1044
    .end local v0           #colCount:I
    :cond_25
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1045
    .restart local v0       #colCount:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    array-length v3, v3

    if-eq v3, v0, :cond_67

    .line 1046
    :cond_30
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    .line 1047
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    .line 1048
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_9d

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v2

    .line 1049
    .local v2, top:I
    :goto_40
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    add-int v1, v2, v3

    .line 1050
    .local v1, offset:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1051
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1052
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v5, "populate - clear"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 1054
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    if-eqz v3, :cond_a2

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViewsInLayout()V

    .line 1059
    :goto_65
    iput v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    .line 1062
    .end local v1           #offset:I
    .end local v2           #top:I
    :cond_67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPopulating:Z

    .line 1063
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->layoutChildren(Z)V

    .line 1064
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->prefillDown(I)V

    .line 1065
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->fillDown(II)I

    .line 1066
    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    add-int/lit8 v5, v3, -0x1

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    if-lez v3, :cond_a6

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    :goto_88
    invoke-virtual {p0, v5, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->fillUp(II)I

    .line 1067
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibleOffset()V

    .line 1068
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPopulating:Z

    .line 1069
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    goto/16 :goto_d

    .line 1036
    .end local v0           #colCount:I
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v3

    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    div-int v0, v3, v5

    .restart local v0       #colCount:I
    goto :goto_1f

    .line 1048
    :cond_9d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v2

    goto :goto_40

    .line 1057
    .restart local v1       #offset:I
    .restart local v2       #top:I
    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViews()V

    goto :goto_65

    .end local v1           #offset:I
    .end local v2           #top:I
    :cond_a6
    move v3, v4

    .line 1066
    goto :goto_88
.end method

.method private prefillDown(I)V
    .registers 31
    .parameter "toPosition"

    .prologue
    .line 1625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    .line 1731
    :cond_8
    return-void

    .line 1629
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [I

    .line 1631
    .local v13, itemEnd:[I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    .line 1632
    .local v14, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v6

    .line 1633
    .local v6, colSize:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnDown([I)I

    move-result v21

    .line 1635
    .local v21, nextCol:I
    const/16 v22, 0x0

    .local v22, position:I
    :goto_23
    move/from16 v0, v22

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 1636
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1637
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1639
    .local v16, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1640
    .local v19, minorSpan:I
    mul-int v26, v6, v19

    add-int/lit8 v27, v19, -0x1

    mul-int v27, v27, v14

    add-int v20, v26, v27

    .line 1643
    .local v20, minorSpecSize:I
    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_145

    .line 1644
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextRecordDown(II[I)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    move-result-object v23

    .line 1645
    .local v23, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v21, v0

    .line 1651
    :goto_77
    const/4 v12, 0x0

    .line 1652
    .local v12, invalidateAfter:Z
    if-nez v23, :cond_166

    .line 1653
    new-instance v23, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v23           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1654
    .restart local v23       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v26, v0

    const-string v27, "prefilldown - put"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1656
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1657
    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1666
    :goto_af
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    move/from16 v26, v0

    if-eqz v26, :cond_cd

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 1668
    .local v10, id:J
    move-object/from16 v0, v23

    iput-wide v10, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    .line 1669
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 1672
    .end local v10           #id:J
    :cond_cd
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .line 1676
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d7

    .line 1677
    const/high16 v26, 0x4000

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1679
    .local v8, heightSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_189

    .line 1680
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1701
    .local v25, widthSpec:I
    :goto_fb
    move/from16 v0, v25

    invoke-virtual {v4, v0, v8}, Landroid/view/View;->measure(II)V

    .line 1703
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v26, v0

    if-eqz v26, :cond_247

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1705
    .local v5, childSize:I
    :goto_10c
    if-nez v12, :cond_120

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v5, v0, :cond_127

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v26, v0

    if-lez v26, :cond_127

    .line 1706
    :cond_120
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1708
    :cond_127
    move-object/from16 v0, v23

    iput v5, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    .line 1711
    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_26c

    .line 1712
    aget v15, v13, v21

    .line 1713
    .local v15, lowest:I
    add-int/lit8 v9, v21, 0x1

    .local v9, i:I
    :goto_137
    add-int v26, v21, v19

    move/from16 v0, v26

    if-ge v9, v0, :cond_24d

    .line 1714
    aget v3, v13, v9

    .line 1715
    .local v3, bottom:I
    if-le v3, v15, :cond_142

    .line 1716
    move v15, v3

    .line 1713
    :cond_142
    add-int/lit8 v9, v9, 0x1

    goto :goto_137

    .line 1647
    .end local v3           #bottom:I
    .end local v5           #childSize:I
    .end local v8           #heightSpec:I
    .end local v9           #i:I
    .end local v12           #invalidateAfter:Z
    .end local v15           #lowest:I
    .end local v23           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v25           #widthSpec:I
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v26, v0

    const-string v27, "prefilldown - get"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .restart local v23       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    goto/16 :goto_77

    .line 1658
    .restart local v12       #invalidateAfter:Z
    :cond_166
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_181

    .line 1659
    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1660
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1661
    const/4 v12, 0x1

    goto/16 :goto_af

    .line 1663
    :cond_181
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v21, v0

    goto/16 :goto_af

    .line 1681
    .restart local v8       #heightSpec:I
    :cond_189
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c9

    .line 1682
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    mul-int v18, v14, v26

    .line 1683
    .local v18, margin:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v26, v0

    mul-int v26, v26, v6

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v17, v26, v18

    .line 1684
    .local v17, majorSpecSize:I
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1685
    .restart local v25       #widthSpec:I
    goto/16 :goto_fb

    .line 1686
    .end local v17           #majorSpecSize:I
    .end local v18           #margin:I
    .end local v25           #widthSpec:I
    :cond_1c9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .restart local v25       #widthSpec:I
    goto/16 :goto_fb

    .line 1689
    .end local v8           #heightSpec:I
    .end local v25           #widthSpec:I
    :cond_1d7
    const/high16 v26, 0x4000

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1691
    .restart local v25       #widthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f9

    .line 1692
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8       #heightSpec:I
    goto/16 :goto_fb

    .line 1693
    .end local v8           #heightSpec:I
    :cond_1f9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_239

    .line 1694
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    mul-int v18, v14, v26

    .line 1695
    .restart local v18       #margin:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v26, v0

    mul-int v26, v26, v6

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v17, v26, v18

    .line 1696
    .restart local v17       #majorSpecSize:I
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1697
    .restart local v8       #heightSpec:I
    goto/16 :goto_fb

    .line 1698
    .end local v8           #heightSpec:I
    .end local v17           #majorSpecSize:I
    .end local v18           #margin:I
    :cond_239
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8       #heightSpec:I
    goto/16 :goto_fb

    .line 1703
    :cond_247
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto/16 :goto_10c

    .line 1719
    .restart local v5       #childSize:I
    .restart local v9       #i:I
    .restart local v15       #lowest:I
    :cond_24d
    move/from16 v24, v15

    .line 1724
    .end local v9           #i:I
    .end local v15           #lowest:I
    .local v24, startFrom:I
    :goto_24f
    add-int v26, v24, v5

    add-int v7, v26, v14

    .line 1725
    .local v7, endAt:I
    move/from16 v9, v21

    .restart local v9       #i:I
    :goto_255
    add-int v26, v21, v19

    move/from16 v0, v26

    if-ge v9, v0, :cond_26f

    .line 1726
    sub-int v26, v9, v21

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->getMarginAfter(I)I

    move-result v26

    add-int v26, v26, v7

    aput v26, v13, v9

    .line 1725
    add-int/lit8 v9, v9, 0x1

    goto :goto_255

    .line 1721
    .end local v7           #endAt:I
    .end local v9           #i:I
    .end local v24           #startFrom:I
    :cond_26c
    aget v24, v13, v21

    .restart local v24       #startFrom:I
    goto :goto_24f

    .line 1729
    .restart local v7       #endAt:I
    .restart local v9       #i:I
    :cond_26f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnDown([I)I

    move-result v21

    .line 1635
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_23
.end method

.method private recycleAllViews()V
    .registers 5

    .prologue
    .line 676
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 677
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->addScrap(Landroid/view/View;I)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 680
    :cond_17
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    if-eqz v1, :cond_1f

    .line 681
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViewsInLayout()V

    .line 685
    :goto_1e
    return-void

    .line 683
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViews()V

    goto :goto_1e
.end method

.method private recycleOffscreenViews()V
    .registers 29

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v22

    .line 696
    .local v22, size:I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v17, v0

    .line 697
    .local v17, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v26, v0

    mul-int v26, v26, v17

    add-int v10, v25, v26

    .line 698
    .local v10, clearMargin:I
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    .line 699
    .local v21, screenStart:I
    add-int v20, v22, v17

    .line 700
    .local v20, screenEnd:I
    neg-int v8, v10

    .line 701
    .local v8, clearAbove:I
    add-int v9, v22, v10

    .line 706
    .local v9, clearBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v25

    add-int/lit8 v16, v25, -0x1

    .local v16, i:I
    :goto_42
    if-ltz v16, :cond_ad

    .line 707
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 708
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_78

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 709
    .local v5, childEnd:I
    :goto_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7d

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 710
    .local v7, childStart:I
    :goto_64
    move/from16 v0, v21

    if-le v7, v0, :cond_6c

    move/from16 v0, v20

    if-lt v5, v0, :cond_70

    :cond_6c
    if-lt v5, v8, :cond_70

    if-le v7, v9, :cond_82

    .line 706
    :cond_70
    :goto_70
    add-int/lit8 v16, v16, -0x1

    goto :goto_42

    .line 695
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childEnd:I
    .end local v7           #childStart:I
    .end local v8           #clearAbove:I
    .end local v9           #clearBelow:I
    .end local v10           #clearMargin:I
    .end local v16           #i:I
    .end local v17           #itemMargin:I
    .end local v20           #screenEnd:I
    .end local v21           #screenStart:I
    .end local v22           #size:I
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v22

    goto :goto_c

    .line 708
    .restart local v3       #child:Landroid/view/View;
    .restart local v8       #clearAbove:I
    .restart local v9       #clearBelow:I
    .restart local v10       #clearMargin:I
    .restart local v16       #i:I
    .restart local v17       #itemMargin:I
    .restart local v20       #screenEnd:I
    .restart local v21       #screenStart:I
    .restart local v22       #size:I
    :cond_78
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_58

    .line 709
    .restart local v5       #childEnd:I
    :cond_7d
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_64

    .line 716
    .restart local v7       #childStart:I
    :cond_82
    move/from16 v0, v21

    if-ge v5, v0, :cond_70

    .line 717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_97

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 718
    .local v6, childSize:I
    :goto_92
    if-le v6, v10, :cond_9c

    .line 720
    move/from16 v8, v21

    goto :goto_70

    .line 717
    .end local v6           #childSize:I
    :cond_97
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_92

    .line 722
    .restart local v6       #childSize:I
    :cond_9c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 723
    .local v18, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    move/from16 v25, v0

    if-nez v25, :cond_70

    .line 724
    move/from16 v8, v21

    goto :goto_70

    .line 739
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childEnd:I
    .end local v6           #childSize:I
    .end local v7           #childStart:I
    .end local v18           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v25

    add-int/lit8 v16, v25, -0x1

    :goto_b3
    if-ltz v16, :cond_cb

    .line 740
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 741
    .restart local v3       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1ee

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 742
    .restart local v7       #childStart:I
    :goto_c9
    if-gt v7, v9, :cond_1f4

    .line 757
    .end local v3           #child:Landroid/view/View;
    .end local v7           #childStart:I
    :cond_cb
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 758
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v25

    if-lez v25, :cond_f4

    .line 759
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 760
    .restart local v3       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_224

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 761
    .restart local v5       #childEnd:I
    :goto_ef
    if-lt v5, v8, :cond_22a

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibleOffset()V

    .line 779
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childEnd:I
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v4

    .line 780
    .local v4, childCount:I
    if-lez v4, :cond_2db

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    const v26, 0x7fffffff

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v25, v0

    const/high16 v26, -0x8000

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([II)V

    .line 785
    const/16 v16, 0x0

    :goto_113
    move/from16 v0, v16

    if-ge v0, v4, :cond_27a

    .line 786
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 787
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 788
    .restart local v18       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_26a

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v25

    :goto_131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v26, v0

    sub-int v24, v25, v26

    .line 790
    .local v24, start:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v25, v0

    if-eqz v25, :cond_270

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    .line 791
    .local v15, end:I
    :goto_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v25, v0

    const-string v26, "recycleoffscreenveiws - get"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v16

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v16

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .line 794
    .local v19, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    if-nez v19, :cond_181

    .line 795
    const-string v25, "ColumnGridView"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_181
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    add-int v13, v25, v26

    .line 799
    .local v13, colEnd:I
    move-object/from16 v0, v18

    iget v11, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .local v11, col:I
    :goto_19d
    if-ge v11, v13, :cond_276

    .line 800
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    move/from16 v25, v0

    sub-int v25, v11, v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->getMarginBefore(I)I

    move-result v25

    sub-int v14, v24, v25

    .line 801
    .local v14, colTop:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    move/from16 v25, v0

    sub-int v25, v11, v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->getMarginAfter(I)I

    move-result v25

    add-int v12, v15, v25

    .line 802
    .local v12, colBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aget v25, v25, v11

    move/from16 v0, v25

    if-ge v14, v0, :cond_1d7

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aput v14, v25, v11

    .line 805
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v25, v0

    aget v25, v25, v11

    move/from16 v0, v25

    if-le v12, v0, :cond_1eb

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v25, v0

    aput v12, v25, v11

    .line 799
    :cond_1eb
    add-int/lit8 v11, v11, 0x1

    goto :goto_19d

    .line 741
    .end local v4           #childCount:I
    .end local v11           #col:I
    .end local v12           #colBottom:I
    .end local v13           #colEnd:I
    .end local v14           #colTop:I
    .end local v15           #end:I
    .end local v18           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v19           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v24           #start:I
    :cond_1ee
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    goto/16 :goto_c9

    .line 748
    .restart local v7       #childStart:I
    :cond_1f4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21c

    .line 749
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeViewsInLayout(II)V

    .line 754
    :goto_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->addScrap(Landroid/view/View;I)V

    .line 739
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_b3

    .line 751
    :cond_21c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeViewAt(I)V

    goto :goto_207

    .line 760
    .end local v7           #childStart:I
    :cond_224
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    goto/16 :goto_ef

    .line 769
    .restart local v5       #childEnd:I
    :cond_22a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_260

    .line 770
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeViewsInLayout(II)V

    .line 775
    :goto_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->addScrap(Landroid/view/View;I)V

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    goto/16 :goto_d3

    .line 772
    :cond_260
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeViewAt(I)V

    goto :goto_23f

    .line 788
    .end local v5           #childEnd:I
    .restart local v4       #childCount:I
    .restart local v18       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    :cond_26a
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v25

    goto/16 :goto_131

    .line 790
    .restart local v24       #start:I
    :cond_270
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    goto/16 :goto_145

    .line 785
    .restart local v11       #col:I
    .restart local v13       #colEnd:I
    .restart local v15       #end:I
    .restart local v19       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    :cond_276
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_113

    .line 811
    .end local v3           #child:Landroid/view/View;
    .end local v11           #col:I
    .end local v13           #colEnd:I
    .end local v15           #end:I
    .end local v18           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v19           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v24           #start:I
    :cond_27a
    const v23, 0x7fffffff

    .line 812
    .local v23, smallestItemStart:I
    const/4 v11, 0x0

    .restart local v11       #col:I
    :goto_27e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_2a1

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aget v25, v25, v11

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_29e

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aget v23, v25, v11

    .line 812
    :cond_29e
    add-int/lit8 v11, v11, 0x1

    goto :goto_27e

    .line 817
    :cond_2a1
    const v25, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2ac

    .line 818
    const/16 v23, 0x0

    .line 821
    :cond_2ac
    const/4 v11, 0x0

    :goto_2ad
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_2db

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aget v25, v25, v11

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d8

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v25, v0

    aput v23, v25, v11

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v25, v0

    aput v23, v25, v11

    .line 821
    :cond_2d8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2ad

    .line 829
    .end local v11           #col:I
    .end local v23           #smallestItemStart:I
    :cond_2db
    return-void
.end method

.method private reportScrollStateChange(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 2051
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 2052
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastScrollState:I

    .line 2053
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 2054
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;->onScrollStateChanged(Lcom/google/android/apps/plus/views/ColumnGridView;I)V

    .line 2057
    :cond_f
    return-void
.end method

.method private resetStateForGridTop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1958
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1959
    .local v0, colCount:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    .line 1960
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    array-length v2, v2

    if-eq v2, v0, :cond_17

    .line 1961
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    .line 1962
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    .line 1965
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v1

    .line 1966
    .local v1, top:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1967
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1971
    .end local v1           #top:I
    :cond_25
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    .line 1972
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 1973
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    .line 1974
    return-void
.end method

.method private setVisibleOffset()V
    .registers 7

    .prologue
    .line 1098
    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    neg-int v4, v5

    .line 1101
    .local v4, screenStart:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 1102
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    :goto_b
    if-ge v3, v1, :cond_1b

    .line 1103
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1104
    .local v0, child:Landroid/view/View;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1105
    .local v2, childEnd:I
    :goto_19
    if-lt v2, v4, :cond_21

    .line 1110
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childEnd:I
    :cond_1b
    return-void

    .line 1104
    .restart local v0       #child:Landroid/view/View;
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_19

    .line 1108
    .restart local v2       #childEnd:I
    :cond_21
    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method private trackMotionScroll(IZ)Z
    .registers 22
    .parameter "delta"
    .parameter "allowOverScroll"

    .prologue
    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->contentFits()Z

    move-result v8

    .line 545
    .local v8, contentFits:Z
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 549
    .local v2, allowOverhang:I
    if-nez v8, :cond_11a

    .line 552
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView;->mPopulating:Z

    .line 553
    if-lez p1, :cond_f5

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->fillUp(II)I

    move-result v15

    .line 555
    .local v15, overhang:I
    const/16 v16, 0x1

    .line 560
    .local v16, up:Z
    :goto_26
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 561
    .local v12, movedBy:I
    if-eqz v16, :cond_115

    move/from16 v17, v12

    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->offsetChildren(I)V

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->recycleOffscreenViews()V

    .line 563
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView;->mPopulating:Z

    .line 564
    sub-int v14, v2, v15

    .line 570
    .end local v15           #overhang:I
    .end local v16           #up:Z
    .local v14, overScrolledBy:I
    :goto_42
    if-eqz p2, :cond_7c

    .line 571
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v13

    .line 573
    .local v13, overScrollMode:I
    if-eqz v13, :cond_52

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7c

    if-nez v8, :cond_7c

    .line 576
    :cond_52
    if-lez v14, :cond_7c

    .line 577
    if-lez p1, :cond_11e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 579
    .local v10, edge:Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_124

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v9

    .line 584
    .local v9, contentSize:I
    :goto_66
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 585
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 590
    .end local v9           #contentSize:I
    .end local v10           #edge:Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v13           #overScrollMode:I
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v5

    .line 591
    .local v5, childCount:I
    if-lez v5, :cond_12a

    const/4 v3, 0x1

    .line 592
    .local v3, canScroll:Z
    :goto_83
    if-eqz v3, :cond_ac

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_ac

    .line 593
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 597
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12d

    .line 598
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 599
    .local v7, childStart:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v11

    .line 605
    .local v11, listPadding:I
    :goto_a7
    if-lt v7, v11, :cond_ab

    if-gez p1, :cond_137

    :cond_ab
    const/4 v3, 0x1

    .line 607
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childStart:I
    .end local v11           #listPadding:I
    :cond_ac
    :goto_ac
    if-eqz v3, :cond_e9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e9

    .line 608
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 612
    .restart local v4       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13a

    .line 613
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 614
    .local v6, childEnd:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingRight()I

    move-result v11

    .line 619
    .restart local v11       #listPadding:I
    :goto_dc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    if-gt v6, v0, :cond_e8

    if-lez p1, :cond_143

    :cond_e8
    const/4 v3, 0x1

    .line 622
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childEnd:I
    .end local v11           #listPadding:I
    :cond_e9
    :goto_e9
    if-eqz v3, :cond_ee

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invokeOnItemScrollListener()V

    .line 626
    :cond_ee
    if-eqz p1, :cond_f2

    if-eqz v12, :cond_145

    :cond_f2
    const/16 v17, 0x1

    :goto_f4
    return v17

    .line 557
    .end local v3           #canScroll:Z
    .end local v5           #childCount:I
    .end local v12           #movedBy:I
    .end local v14           #overScrolledBy:I
    :cond_f5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->fillDown(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 558
    .restart local v15       #overhang:I
    const/16 v16, 0x0

    .restart local v16       #up:Z
    goto/16 :goto_26

    .line 561
    .restart local v12       #movedBy:I
    :cond_115
    neg-int v0, v12

    move/from16 v17, v0

    goto/16 :goto_2e

    .line 566
    .end local v12           #movedBy:I
    .end local v15           #overhang:I
    .end local v16           #up:Z
    :cond_11a
    move v14, v2

    .line 567
    .restart local v14       #overScrolledBy:I
    const/4 v12, 0x0

    .restart local v12       #movedBy:I
    goto/16 :goto_42

    .line 577
    .restart local v13       #overScrollMode:I
    :cond_11e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto/16 :goto_5a

    .line 582
    .restart local v10       #edge:Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v9

    .restart local v9       #contentSize:I
    goto/16 :goto_66

    .line 591
    .end local v9           #contentSize:I
    .end local v10           #edge:Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v13           #overScrollMode:I
    .restart local v5       #childCount:I
    :cond_12a
    const/4 v3, 0x0

    goto/16 :goto_83

    .line 601
    .restart local v3       #canScroll:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12d
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    .line 602
    .restart local v7       #childStart:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v11

    .restart local v11       #listPadding:I
    goto/16 :goto_a7

    .line 605
    :cond_137
    const/4 v3, 0x0

    goto/16 :goto_ac

    .line 616
    .end local v7           #childStart:I
    .end local v11           #listPadding:I
    :cond_13a
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 617
    .restart local v6       #childEnd:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingBottom()I

    move-result v11

    .restart local v11       #listPadding:I
    goto :goto_dc

    .line 619
    :cond_143
    const/4 v3, 0x0

    goto :goto_e9

    .line 626
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childEnd:I
    .end local v11           #listPadding:I
    :cond_145
    const/16 v17, 0x0

    goto :goto_f4
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "lp"

    .prologue
    .line 2075
    instance-of v0, p1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 833
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 835
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_35

    .line 836
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 840
    .local v0, currPosition:I
    :goto_13
    int-to-float v7, v0

    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 841
    .local v3, intDelta:I
    int-to-float v7, v0

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    .line 842
    invoke-direct {p0, v3, v6}, Lcom/google/android/apps/plus/views/ColumnGridView;->trackMotionScroll(IZ)Z

    move-result v7

    if-nez v7, :cond_3c

    const/4 v5, 0x1

    .line 844
    .local v5, stopped:Z
    :goto_22
    if-nez v5, :cond_3e

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3e

    .line 845
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 868
    .end local v0           #currPosition:I
    .end local v3           #intDelta:I
    .end local v5           #stopped:Z
    :cond_2f
    :goto_2f
    iget v6, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/views/ColumnGridView;->reportScrollStateChange(I)V

    .line 869
    return-void

    .line 838
    :cond_35
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .restart local v0       #currPosition:I
    goto :goto_13

    .restart local v3       #intDelta:I
    :cond_3c
    move v5, v6

    .line 842
    goto :goto_22

    .line 847
    .restart local v5       #stopped:Z
    :cond_3e
    if-eqz v5, :cond_68

    .line 848
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v4

    .line 849
    .local v4, overScrollMode:I
    const/4 v7, 0x2

    if-eq v4, v7, :cond_63

    .line 851
    if-lez v3, :cond_6b

    .line 852
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 856
    .local v2, edge:Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_4b
    const/4 v1, 0x0

    .line 857
    .local v1, currVelocity:I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_59

    .line 858
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v7

    float-to-int v1, v7

    .line 860
    :cond_59
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 861
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 863
    .end local v1           #currVelocity:I
    .end local v2           #edge:Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_63
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 865
    .end local v4           #overScrollMode:I
    :cond_68
    iput v6, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    goto :goto_2f

    .line 854
    .restart local v4       #overScrollMode:I
    :cond_6b
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .restart local v2       #edge:Landroid/support/v4/widget/EdgeEffectCompat;
    goto :goto_4b
.end method

.method public deselect(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 2292
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-eqz v2, :cond_23

    .line 2293
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2294
    .local v0, selected:Z
    if-eqz v0, :cond_23

    .line 2295
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2296
    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2297
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    if-eqz v2, :cond_23

    .line 2298
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    invoke-interface {v2, v1, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;->onItemDeselected(Landroid/view/View;I)V

    .line 2302
    .end local v0           #selected:Z
    .end local v1           #view:Landroid/view/View;
    :cond_23
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 923
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_8

    .line 969
    :cond_7
    return-void

    .line 927
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v2

    .line 928
    .local v2, left:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 929
    .local v3, right:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v4

    .line 930
    .local v4, top:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingBottom()I

    move-result v11

    sub-int v0, v10, v11

    .line 934
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, i:I
    :goto_2a
    if-ltz v1, :cond_7

    .line 935
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 937
    .local v5, v:Landroid/view/View;
    iget v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    add-int/2addr v10, v1

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/views/ColumnGridView;->isSelected(I)Z

    move-result v10

    if-nez v10, :cond_94

    .line 938
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPressed:Z

    if-eqz v10, :cond_49

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    if-ltz v10, :cond_49

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    if-gez v10, :cond_4c

    .line 934
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 942
    :cond_4c
    instance-of v10, v5, Lcom/google/android/apps/plus/views/ColumnGridView$PressedHighlightable;

    if-eqz v10, :cond_59

    move-object v10, v5

    .line 943
    check-cast v10, Lcom/google/android/apps/plus/views/ColumnGridView$PressedHighlightable;

    invoke-interface {v10}, Lcom/google/android/apps/plus/views/ColumnGridView$PressedHighlightable;->shouldHighlightOnPress()Z

    move-result v10

    if-eqz v10, :cond_49

    .line 948
    :cond_59
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    invoke-virtual {v5, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 949
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-lt v10, v11, :cond_49

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_49

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-lt v10, v11, :cond_49

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_49

    .line 957
    :cond_94
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 958
    .local v7, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 959
    .local v8, viewRight:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 960
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 962
    .local v6, viewBottom:I
    if-gt v7, v3, :cond_49

    if-lt v8, v2, :cond_49

    if-gt v9, v0, :cond_49

    if-lt v6, v4, :cond_49

    .line 966
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v7, v9, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 967
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_49
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 879
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 881
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_5c

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, needsInvalidate:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_30

    .line 884
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_5d

    .line 885
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 886
    .local v1, restoreCount:I
    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 887
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 888
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 889
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 893
    .end local v1           #restoreCount:I
    :goto_2f
    const/4 v0, 0x1

    .line 895
    :cond_30
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_57

    .line 896
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_63

    .line 897
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 898
    .restart local v1       #restoreCount:I
    const/high16 v3, 0x42b4

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 899
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 900
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 901
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 910
    :goto_56
    const/4 v0, 0x1

    .line 913
    .end local v1           #restoreCount:I
    :cond_57
    if-eqz v0, :cond_5c

    .line 914
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 917
    .end local v0           #needsInvalidate:Z
    :cond_5c
    return-void

    .line 891
    .restart local v0       #needsInvalidate:Z
    :cond_5d
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_2f

    .line 903
    :cond_63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 904
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v2

    .line 905
    .local v2, width:I
    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 906
    const/high16 v3, 0x4334

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 907
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 908
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_56
.end method

.method public endSelectionMode()V
    .registers 3

    .prologue
    .line 2230
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-nez v0, :cond_c

    .line 2231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in selection mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2234
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    .line 2235
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 2236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidate()V

    .line 2238
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2239
    return-void
.end method

.method final fillDown(II)I
    .registers 40
    .parameter "fromPosition"
    .parameter "overhang"

    .prologue
    .line 1474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v27

    .line 1475
    .local v27, paddingStart:I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v20, v0

    .line 1476
    .local v20, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v11

    .line 1477
    .local v11, colSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1a5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingRight()I

    move-result v35

    sub-int v14, v34, v35

    .line 1479
    .local v14, gridEnd:I
    :goto_28
    add-int v13, v14, p2

    .line 1480
    .local v13, fillTo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnDown([I)I

    move-result v26

    .line 1481
    .local v26, nextCol:I
    move/from16 v28, p1

    .line 1483
    .local v28, position:I
    :goto_3a
    if-ltz v26, :cond_32d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v26

    move/from16 v0, v34

    if-ge v0, v13, :cond_32d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_32d

    .line 1484
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1485
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1487
    .local v23, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_83

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1b1

    .line 1489
    const/16 v34, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1495
    :cond_83
    :goto_83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1496
    .local v30, span:I
    mul-int v34, v11, v30

    add-int/lit8 v35, v30, -0x1

    mul-int v35, v35, v20

    add-int v31, v34, v35

    .line 1499
    .local v31, specSize:I
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_1b8

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextRecordDown(II[I)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    move-result-object v29

    .line 1501
    .local v29, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v26, v0

    .line 1507
    :goto_bb
    const/16 v19, 0x0

    .line 1508
    .local v19, invalidateAfter:Z
    if-nez v29, :cond_1d9

    .line 1509
    new-instance v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1510
    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v34, v0

    const-string v35, "filldown - put"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1512
    move/from16 v0, v26

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1513
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1522
    :goto_f4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_116

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v17

    .line 1524
    .local v17, id:J
    move-wide/from16 v0, v17

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    .line 1525
    move-wide/from16 v0, v17

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 1528
    .end local v17           #id:J
    :cond_116
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .line 1532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_24b

    .line 1533
    const/high16 v34, 0x4000

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1535
    .local v15, heightSpec:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1fd

    .line 1536
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1557
    .local v33, widthSpec:I
    :goto_144
    move/from16 v0, v33

    invoke-virtual {v5, v0, v15}, Landroid/view/View;->measure(II)V

    .line 1559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2bb

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1561
    .local v9, childSize:I
    :goto_155
    if-nez v19, :cond_169

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v9, v0, :cond_170

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v34, v0

    if-lez v34, :cond_170

    .line 1562
    :cond_169
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1564
    :cond_170
    move-object/from16 v0, v29

    iput v9, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    .line 1567
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_300

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v21, v34, v26

    .line 1569
    .local v21, lowest:I
    add-int/lit8 v16, v26, 0x1

    .local v16, i:I
    :goto_186
    add-int v34, v26, v30

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_2c1

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v4, v34, v16

    .line 1571
    .local v4, bottom:I
    move/from16 v0, v21

    if-le v4, v0, :cond_19c

    .line 1572
    move/from16 v21, v4

    .line 1569
    :cond_19c
    add-int/lit8 v16, v16, 0x1

    goto :goto_186

    .line 1474
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v9           #childSize:I
    .end local v11           #colSize:I
    .end local v13           #fillTo:I
    .end local v14           #gridEnd:I
    .end local v15           #heightSpec:I
    .end local v16           #i:I
    .end local v19           #invalidateAfter:Z
    .end local v20           #itemMargin:I
    .end local v21           #lowest:I
    .end local v23           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v26           #nextCol:I
    .end local v27           #paddingStart:I
    .end local v28           #position:I
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v30           #span:I
    .end local v31           #specSize:I
    .end local v33           #widthSpec:I
    :cond_19f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v27

    goto/16 :goto_c

    .line 1477
    .restart local v11       #colSize:I
    .restart local v20       #itemMargin:I
    .restart local v27       #paddingStart:I
    :cond_1a5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingBottom()I

    move-result v35

    sub-int v14, v34, v35

    goto/16 :goto_28

    .line 1491
    .restart local v5       #child:Landroid/view/View;
    .restart local v13       #fillTo:I
    .restart local v14       #gridEnd:I
    .restart local v23       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .restart local v26       #nextCol:I
    .restart local v28       #position:I
    :cond_1b1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_83

    .line 1503
    .restart local v30       #span:I
    .restart local v31       #specSize:I
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v34, v0

    const-string v35, "filldown - get"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    goto/16 :goto_bb

    .line 1514
    .restart local v19       #invalidateAfter:Z
    :cond_1d9
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1f5

    .line 1515
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1516
    move/from16 v0, v26

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1517
    const/16 v19, 0x1

    goto/16 :goto_f4

    .line 1519
    :cond_1f5
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v26, v0

    goto/16 :goto_f4

    .line 1537
    .restart local v15       #heightSpec:I
    :cond_1fd
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_23d

    .line 1538
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v25, v20, v34

    .line 1539
    .local v25, margin:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    mul-int v34, v34, v11

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    add-int v24, v34, v25

    .line 1540
    .local v24, majorSpecSize:I
    const/high16 v34, 0x4000

    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1541
    .restart local v33       #widthSpec:I
    goto/16 :goto_144

    .line 1542
    .end local v24           #majorSpecSize:I
    .end local v25           #margin:I
    .end local v33           #widthSpec:I
    :cond_23d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/high16 v35, 0x4000

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .restart local v33       #widthSpec:I
    goto/16 :goto_144

    .line 1545
    .end local v15           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_24b
    const/high16 v34, 0x4000

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1547
    .restart local v33       #widthSpec:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26d

    .line 1548
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15       #heightSpec:I
    goto/16 :goto_144

    .line 1549
    .end local v15           #heightSpec:I
    :cond_26d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2ad

    .line 1550
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v25, v20, v34

    .line 1551
    .restart local v25       #margin:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    mul-int v34, v34, v11

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    add-int v24, v34, v25

    .line 1552
    .restart local v24       #majorSpecSize:I
    const/high16 v34, 0x4000

    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1553
    .restart local v15       #heightSpec:I
    goto/16 :goto_144

    .line 1554
    .end local v15           #heightSpec:I
    .end local v24           #majorSpecSize:I
    .end local v25           #margin:I
    :cond_2ad
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x4000

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15       #heightSpec:I
    goto/16 :goto_144

    .line 1559
    :cond_2bb
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto/16 :goto_155

    .line 1575
    .restart local v9       #childSize:I
    .restart local v16       #i:I
    .restart local v21       #lowest:I
    :cond_2c1
    move/from16 v32, v21

    .line 1584
    .end local v16           #i:I
    .end local v21           #lowest:I
    .local v32, startFrom:I
    :goto_2c3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_309

    .line 1585
    add-int v7, v32, v20

    .line 1586
    .local v7, childLeft:I
    add-int v8, v7, v9

    .line 1587
    .local v8, childRight:I
    add-int v34, v11, v20

    mul-int v34, v34, v26

    add-int v10, v27, v34

    .line 1588
    .local v10, childTop:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v34

    add-int v6, v10, v34

    .line 1589
    .local v6, childBottom:I
    move v12, v8

    .line 1597
    .local v12, endAt:I
    :goto_2dc
    invoke-virtual {v5, v7, v10, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 1599
    move/from16 v16, v26

    .restart local v16       #i:I
    :goto_2e1
    add-int v34, v26, v30

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_31b

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    sub-int v35, v16, v26

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->getMarginAfter(I)I

    move-result v35

    add-int v35, v35, v12

    aput v35, v34, v16

    .line 1599
    add-int/lit8 v16, v16, 0x1

    goto :goto_2e1

    .line 1577
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v10           #childTop:I
    .end local v12           #endAt:I
    .end local v16           #i:I
    .end local v32           #startFrom:I
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v32, v34, v26

    .restart local v32       #startFrom:I
    goto :goto_2c3

    .line 1591
    :cond_309
    add-int v34, v11, v20

    mul-int v34, v34, v26

    add-int v7, v27, v34

    .line 1592
    .restart local v7       #childLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v8, v7, v34

    .line 1593
    .restart local v8       #childRight:I
    add-int v10, v32, v20

    .line 1594
    .restart local v10       #childTop:I
    add-int v6, v10, v9

    .line 1595
    .restart local v6       #childBottom:I
    move v12, v6

    .restart local v12       #endAt:I
    goto :goto_2dc

    .line 1603
    .restart local v16       #i:I
    :cond_31b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnDown([I)I

    move-result v26

    .line 1604
    add-int/lit8 v28, v28, 0x1

    .line 1605
    goto/16 :goto_3a

    .line 1607
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childSize:I
    .end local v10           #childTop:I
    .end local v12           #endAt:I
    .end local v15           #heightSpec:I
    .end local v16           #i:I
    .end local v19           #invalidateAfter:Z
    .end local v23           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v30           #span:I
    .end local v31           #specSize:I
    .end local v32           #startFrom:I
    .end local v33           #widthSpec:I
    :cond_32d
    const/16 v22, 0x0

    .line 1608
    .local v22, lowestView:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_356

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v16

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_353

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v22, v34, v16

    .line 1608
    :cond_353
    add-int/lit8 v16, v16, 0x1

    goto :goto_331

    .line 1613
    :cond_356
    sub-int v34, v22, v14

    return v34
.end method

.method final fillUp(II)I
    .registers 42
    .parameter "fromPosition"
    .parameter "overhang"

    .prologue
    .line 1312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v36, v0

    if-eqz v36, :cond_18f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v26

    .line 1313
    .local v26, paddingStart:I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v20, v0

    .line 1314
    .local v20, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v9

    .line 1315
    .local v9, colSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v36, v0

    if-eqz v36, :cond_195

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v12

    .line 1316
    .local v12, gridStart:I
    :goto_22
    sub-int v11, v12, p2

    .line 1317
    .local v11, fillTo:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnUp()I

    move-result v25

    .line 1318
    .local v25, nextCol:I
    move/from16 v27, p1

    .line 1319
    .local v27, position:I
    const/16 v30, 0x1

    .local v30, satisfiedBoxStarts:Z
    move/from16 v28, v27

    .line 1322
    .end local v27           #position:I
    .local v28, position:I
    :goto_2e
    if-ltz v25, :cond_34e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v36, v36, v25

    move/from16 v0, v36

    if-gt v0, v11, :cond_3e

    if-nez v30, :cond_34e

    :cond_3e
    if-ltz v28, :cond_34e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v28

    move/from16 v1, v36

    if-ge v0, v1, :cond_34e

    .line 1323
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1324
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1326
    .local v22, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_7b

    .line 1327
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    move/from16 v36, v0

    if-eqz v36, :cond_19b

    .line 1328
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1334
    :cond_7b
    :goto_7b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v36, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1335
    .local v31, span:I
    mul-int v36, v9, v31

    add-int/lit8 v37, v31, -0x1

    mul-int v37, v37, v20

    add-int v32, v36, v37

    .line 1338
    .local v32, specSize:I
    const/16 v36, 0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_1a6

    .line 1339
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextRecordUp(II)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    move-result-object v29

    .line 1340
    .local v29, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v25, v0

    .line 1346
    :goto_ab
    const/16 v19, 0x0

    .line 1347
    .local v19, invalidateBefore:Z
    if-nez v29, :cond_1c7

    .line 1348
    new-instance v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1349
    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v36, v0

    const-string v37, "fillup - put"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1351
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1352
    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1361
    :goto_e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    move/from16 v36, v0

    if-eqz v36, :cond_106

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v17

    .line 1363
    .local v17, id:J
    move-wide/from16 v0, v17

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    .line 1364
    move-wide/from16 v0, v17

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 1367
    .end local v17           #id:J
    :cond_106
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .line 1371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v36, v0

    if-eqz v36, :cond_239

    .line 1372
    const/high16 v36, 0x4000

    move/from16 v0, v32

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1374
    .local v13, heightSpec:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v36, v0

    const/16 v37, -0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1eb

    .line 1375
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 1396
    .local v35, widthSpec:I
    :goto_134
    move/from16 v0, v35

    invoke-virtual {v3, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2a9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1400
    .local v7, childSize:I
    :goto_145
    if-nez v19, :cond_159

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-eq v7, v0, :cond_160

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v36, v0

    if-lez v36, :cond_160

    .line 1401
    :cond_159
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1403
    :cond_160
    move-object/from16 v0, v29

    iput v7, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    .line 1406
    const/16 v36, 0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_2f0

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v14, v36, v25

    .line 1408
    .local v14, highest:I
    add-int/lit8 v16, v25, 0x1

    .local v16, i:I
    :goto_176
    add-int v36, v25, v31

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_2af

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v34, v36, v16

    .line 1410
    .local v34, top:I
    move/from16 v0, v34

    if-ge v0, v14, :cond_18c

    .line 1411
    move/from16 v14, v34

    .line 1408
    :cond_18c
    add-int/lit8 v16, v16, 0x1

    goto :goto_176

    .line 1312
    .end local v3           #child:Landroid/view/View;
    .end local v7           #childSize:I
    .end local v9           #colSize:I
    .end local v11           #fillTo:I
    .end local v12           #gridStart:I
    .end local v13           #heightSpec:I
    .end local v14           #highest:I
    .end local v16           #i:I
    .end local v19           #invalidateBefore:Z
    .end local v20           #itemMargin:I
    .end local v22           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v25           #nextCol:I
    .end local v26           #paddingStart:I
    .end local v28           #position:I
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v30           #satisfiedBoxStarts:Z
    .end local v31           #span:I
    .end local v32           #specSize:I
    .end local v34           #top:I
    .end local v35           #widthSpec:I
    :cond_18f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v26

    goto/16 :goto_c

    .line 1315
    .restart local v9       #colSize:I
    .restart local v20       #itemMargin:I
    .restart local v26       #paddingStart:I
    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v12

    goto/16 :goto_22

    .line 1330
    .restart local v3       #child:Landroid/view/View;
    .restart local v11       #fillTo:I
    .restart local v12       #gridStart:I
    .restart local v22       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .restart local v25       #nextCol:I
    .restart local v28       #position:I
    .restart local v30       #satisfiedBoxStarts:Z
    :cond_19b
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_7b

    .line 1342
    .restart local v31       #span:I
    .restart local v32       #specSize:I
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v36, v0

    const-string v37, "fillup - get"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    goto/16 :goto_ab

    .line 1353
    .restart local v19       #invalidateBefore:Z
    :cond_1c7
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    move/from16 v36, v0

    move/from16 v0, v31

    move/from16 v1, v36

    if-eq v0, v1, :cond_1e3

    .line 1354
    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1355
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1356
    const/16 v19, 0x1

    goto/16 :goto_e4

    .line 1358
    :cond_1e3
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    move/from16 v25, v0

    goto/16 :goto_e4

    .line 1376
    .restart local v13       #heightSpec:I
    :cond_1eb
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_22b

    .line 1377
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    mul-int v24, v20, v36

    .line 1378
    .local v24, margin:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v36, v0

    mul-int v36, v36, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    add-int v23, v36, v24

    .line 1379
    .local v23, majorSpecSize:I
    const/high16 v36, 0x4000

    move/from16 v0, v23

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 1380
    .restart local v35       #widthSpec:I
    goto/16 :goto_134

    .line 1381
    .end local v23           #majorSpecSize:I
    .end local v24           #margin:I
    .end local v35           #widthSpec:I
    :cond_22b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v36, v0

    const/high16 v37, 0x4000

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .restart local v35       #widthSpec:I
    goto/16 :goto_134

    .line 1384
    .end local v13           #heightSpec:I
    .end local v35           #widthSpec:I
    :cond_239
    const/high16 v36, 0x4000

    move/from16 v0, v32

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 1386
    .restart local v35       #widthSpec:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_25b

    .line 1387
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13       #heightSpec:I
    goto/16 :goto_134

    .line 1388
    .end local v13           #heightSpec:I
    :cond_25b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_29b

    .line 1389
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    mul-int v24, v20, v36

    .line 1390
    .restart local v24       #margin:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v36, v0

    mul-int v36, v36, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    add-int v23, v36, v24

    .line 1391
    .restart local v23       #majorSpecSize:I
    const/high16 v36, 0x4000

    move/from16 v0, v23

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1392
    .restart local v13       #heightSpec:I
    goto/16 :goto_134

    .line 1393
    .end local v13           #heightSpec:I
    .end local v23           #majorSpecSize:I
    .end local v24           #margin:I
    :cond_29b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v36, v0

    const/high16 v37, 0x4000

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13       #heightSpec:I
    goto/16 :goto_134

    .line 1398
    :cond_2a9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto/16 :goto_145

    .line 1414
    .restart local v7       #childSize:I
    .restart local v14       #highest:I
    .restart local v16       #i:I
    :cond_2af
    move/from16 v33, v14

    .line 1423
    .end local v14           #highest:I
    .end local v16           #i:I
    .local v33, startFrom:I
    :goto_2b1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2f9

    .line 1424
    move/from16 v6, v33

    .line 1425
    .local v6, childRight:I
    sub-int v5, v6, v7

    .line 1426
    .local v5, childLeft:I
    add-int v36, v9, v20

    mul-int v36, v36, v25

    add-int v8, v26, v36

    .line 1427
    .local v8, childTop:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    add-int v4, v8, v36

    .line 1428
    .local v4, childBottom:I
    move v10, v5

    .line 1436
    .local v10, endAt:I
    :goto_2ca
    invoke-virtual {v3, v5, v8, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1438
    move/from16 v16, v25

    .restart local v16       #i:I
    :goto_2cf
    add-int v36, v25, v31

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_30b

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    sub-int v37, v16, v25

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->getMarginBefore(I)I

    move-result v37

    sub-int v37, v10, v37

    sub-int v37, v37, v20

    aput v37, v36, v16

    .line 1438
    add-int/lit8 v16, v16, 0x1

    goto :goto_2cf

    .line 1416
    .end local v4           #childBottom:I
    .end local v5           #childLeft:I
    .end local v6           #childRight:I
    .end local v8           #childTop:I
    .end local v10           #endAt:I
    .end local v16           #i:I
    .end local v33           #startFrom:I
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v33, v36, v25

    .restart local v33       #startFrom:I
    goto :goto_2b1

    .line 1430
    :cond_2f9
    move/from16 v4, v33

    .line 1431
    .restart local v4       #childBottom:I
    sub-int v8, v4, v7

    .line 1432
    .restart local v8       #childTop:I
    add-int v36, v9, v20

    mul-int v36, v36, v25

    add-int v5, v26, v36

    .line 1433
    .restart local v5       #childLeft:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    add-int v6, v5, v36

    .line 1434
    .restart local v6       #childRight:I
    move v10, v8

    .restart local v10       #endAt:I
    goto :goto_2ca

    .line 1442
    .restart local v16       #i:I
    :cond_30b
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    move/from16 v30, v0

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v21, v36, v37

    .line 1444
    .local v21, itemStart:I
    const/16 v16, 0x1

    :goto_31d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_33e

    if-eqz v30, :cond_33e

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v36, v36, v16

    move/from16 v0, v36

    move/from16 v1, v21

    if-eq v0, v1, :cond_33b

    .line 1446
    const/16 v30, 0x0

    .line 1444
    :cond_33b
    add-int/lit8 v16, v16, 0x1

    goto :goto_31d

    .line 1450
    :cond_33e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getNextColumnUp()I

    move-result v25

    .line 1451
    add-int/lit8 v27, v28, -0x1

    .end local v28           #position:I
    .restart local v27       #position:I
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v28, v27

    .line 1452
    .end local v27           #position:I
    .restart local v28       #position:I
    goto/16 :goto_2e

    .line 1454
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childBottom:I
    .end local v5           #childLeft:I
    .end local v6           #childRight:I
    .end local v7           #childSize:I
    .end local v8           #childTop:I
    .end local v10           #endAt:I
    .end local v13           #heightSpec:I
    .end local v16           #i:I
    .end local v19           #invalidateBefore:Z
    .end local v21           #itemStart:I
    .end local v22           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v31           #span:I
    .end local v32           #specSize:I
    .end local v33           #startFrom:I
    .end local v35           #widthSpec:I
    :cond_34e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v15

    .line 1455
    .local v15, highestView:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_377

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v36, v36, v16

    move/from16 v0, v36

    if-ge v0, v15, :cond_374

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v36, v0

    aget v15, v36, v16

    .line 1455
    :cond_374
    add-int/lit8 v16, v16, 0x1

    goto :goto_354

    .line 1460
    :cond_377
    sub-int v36, v12, v15

    return v36
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->generateDefaultLayoutParams()Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2061
    new-instance v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_8
    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    return-object v2

    :cond_d
    const/4 v0, 0x2

    goto :goto_8
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 2080
    new-instance v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .registers 4
    .parameter "lp"

    .prologue
    .line 2068
    new-instance v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2069
    .local v0, cglp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_a
    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2070
    return-object v0

    .line 2069
    :cond_d
    const/4 v1, 0x2

    goto :goto_a
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    return v0
.end method

.method public getColumnSize()I
    .registers 7

    .prologue
    .line 1116
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v2

    .line 1117
    .local v2, paddingStart:I
    :goto_8
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingBottom()I

    move-result v1

    .line 1118
    .local v1, paddingEnd:I
    :goto_10
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getHeight()I

    move-result v0

    .line 1119
    .local v0, gridSize:I
    :goto_18
    sub-int v3, v0, v2

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    iget v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    div-int/2addr v3, v4

    return v3

    .line 1116
    .end local v0           #gridSize:I
    .end local v1           #paddingEnd:I
    .end local v2           #paddingStart:I
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v2

    goto :goto_8

    .line 1117
    .restart local v2       #paddingStart:I
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingRight()I

    move-result v1

    goto :goto_10

    .line 1118
    .restart local v1       #paddingEnd:I
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getWidth()I

    move-result v0

    goto :goto_18
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 341
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method final getNextColumnDown([I)I
    .registers 7
    .parameter "itemEnd"

    .prologue
    .line 1802
    const/4 v3, -0x1

    .line 1803
    .local v3, result:I
    const v4, 0x7fffffff

    .line 1805
    .local v4, topMost:I
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1806
    .local v1, colCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_12

    .line 1807
    aget v0, p1, v2

    .line 1808
    .local v0, bottom:I
    if-ge v0, v4, :cond_f

    .line 1809
    move v4, v0

    .line 1810
    move v3, v2

    .line 1806
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1813
    .end local v0           #bottom:I
    :cond_12
    return v3
.end method

.method final getNextColumnUp()I
    .registers 7

    .prologue
    .line 1738
    const/4 v3, -0x1

    .line 1739
    .local v3, result:I
    const/high16 v0, -0x8000

    .line 1741
    .local v0, bottomMost:I
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1742
    .local v1, colCount:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_7
    if-ltz v2, :cond_14

    .line 1743
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    aget v4, v5, v2

    .line 1744
    .local v4, top:I
    if-le v4, v0, :cond_11

    .line 1745
    move v0, v4

    .line 1746
    move v3, v2

    .line 1742
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1749
    .end local v4           #top:I
    :cond_14
    return v3
.end method

.method final getNextRecordDown(II[I)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .registers 15
    .parameter "position"
    .parameter "span"
    .parameter "itemEnd"

    .prologue
    .line 1817
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v9, "getnextrecorddown - get"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .line 1819
    .local v4, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    if-nez v4, :cond_47

    .line 1820
    new-instance v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v4           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1821
    .restart local v4       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    iput p2, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1822
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v9, "getnextrecorddown - put"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1828
    :cond_2d
    const/4 v6, -0x1

    .line 1829
    .local v6, targetCol:I
    const v7, 0x7fffffff

    .line 1831
    .local v7, topMost:I
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1832
    .local v1, colCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_34
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_81

    .line 1833
    const/high16 v0, -0x8000

    .line 1834
    .local v0, bottom:I
    move v3, v2

    .local v3, j:I
    :goto_3b
    add-int v8, v2, p2

    if-ge v3, v8, :cond_7a

    .line 1835
    aget v5, p3, v3

    .line 1836
    .local v5, singleBottom:I
    if-le v5, v0, :cond_44

    .line 1837
    move v0, v5

    .line 1834
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1824
    .end local v0           #bottom:I
    .end local v1           #colCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #singleBottom:I
    .end local v6           #targetCol:I
    .end local v7           #topMost:I
    :cond_47
    iget v8, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_2d

    .line 1825
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1840
    .restart local v0       #bottom:I
    .restart local v1       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #targetCol:I
    .restart local v7       #topMost:I
    :cond_7a
    if-ge v0, v7, :cond_7e

    .line 1841
    move v7, v0

    .line 1842
    move v6, v2

    .line 1832
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1846
    .end local v0           #bottom:I
    .end local v3           #j:I
    :cond_81
    iput v6, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1848
    const/4 v2, 0x0

    :goto_84
    if-ge v2, p2, :cond_92

    .line 1849
    add-int v8, v2, v6

    aget v8, p3, v8

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->setMarginBefore(II)V

    .line 1848
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 1852
    :cond_92
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .registers 14
    .parameter "position"
    .parameter "span"

    .prologue
    .line 1759
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v9, "getnextrecordup - get"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .line 1761
    .local v4, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    if-nez v4, :cond_48

    .line 1762
    new-instance v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v4           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1763
    .restart local v4       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    iput p2, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1764
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v9, "getnextrecordup - put"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1770
    :cond_2d
    const/4 v6, -0x1

    .line 1771
    .local v6, targetCol:I
    const/high16 v0, -0x8000

    .line 1773
    .local v0, bottomMost:I
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1774
    .local v1, colCount:I
    sub-int v2, v1, p2

    .local v2, i:I
    :goto_34
    if-ltz v2, :cond_82

    .line 1775
    const v7, 0x7fffffff

    .line 1776
    .local v7, top:I
    move v3, v2

    .local v3, j:I
    :goto_3a
    add-int v8, v2, p2

    if-ge v3, v8, :cond_7b

    .line 1777
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    aget v5, v8, v3

    .line 1778
    .local v5, singleTop:I
    if-ge v5, v7, :cond_45

    .line 1779
    move v7, v5

    .line 1776
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1766
    .end local v0           #bottomMost:I
    .end local v1           #colCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #singleTop:I
    .end local v6           #targetCol:I
    .end local v7           #top:I
    :cond_48
    iget v8, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_2d

    .line 1767
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1782
    .restart local v0       #bottomMost:I
    .restart local v1       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #targetCol:I
    .restart local v7       #top:I
    :cond_7b
    if-le v7, v0, :cond_7f

    .line 1783
    move v0, v7

    .line 1784
    move v6, v2

    .line 1774
    :cond_7f
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .line 1788
    .end local v3           #j:I
    .end local v7           #top:I
    :cond_82
    iput v6, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1790
    const/4 v2, 0x0

    :goto_85
    if-ge v2, p2, :cond_94

    .line 1791
    iget-object v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->setMarginAfter(II)V

    .line 1790
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 1794
    :cond_94
    return-object v4
.end method

.method public getSelectedPositions()Landroid/util/SparseBooleanArray;
    .registers 6

    .prologue
    .line 2256
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2257
    .local v2, size:I
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2258
    .local v0, copy:Landroid/util/SparseBooleanArray;
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_21

    .line 2259
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2258
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2261
    :cond_21
    return-object v0
.end method

.method public getVisibleOffset()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    return v0
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1295
    .local v0, beginAt:I
    :goto_8
    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_15

    .line 1296
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1298
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 1299
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v2, "invalidateafter - removeatrange"

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1302
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1286
    .local v0, endAt:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-ge v1, p1, :cond_14

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1289
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    const-string v2, "invalidatebefore - removeatrange"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1291
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    .line 351
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->requestLayout()V

    .line 352
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidate()V

    .line 353
    return-void
.end method

.method public isInSelectionMode()Z
    .registers 2

    .prologue
    .line 2247
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    return v0
.end method

.method public isSelected(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method final layoutChildren(Z)V
    .registers 39
    .parameter "queryAdapter"

    .prologue
    .line 1128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_115

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v25

    .line 1129
    .local v25, paddingStart:I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    move/from16 v16, v0

    .line 1130
    .local v16, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnSize()I

    move-result v13

    .line 1131
    .local v13, colSize:I
    const/16 v28, -0x1

    .line 1132
    .local v28, rebuildLayoutRecordsBefore:I
    const/16 v27, -0x1

    .line 1134
    .local v27, rebuildLayoutRecordsAfter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    const/high16 v35, -0x8000

    invoke-static/range {v34 .. v35}, Ljava/util/Arrays;->fill([II)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v6

    .line 1137
    .local v6, childCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2a
    if-ge v15, v6, :cond_292

    .line 1138
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1139
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1140
    .local v19, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, v19

    iget v12, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .line 1141
    .local v12, col:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v26, v34, v15

    .line 1142
    .local v26, position:I
    if-nez p1, :cond_4c

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v34

    if-eqz v34, :cond_11b

    :cond_4c
    const/16 v22, 0x1

    .line 1144
    .local v22, needsLayout:Z
    :goto_4e
    if-eqz p1, :cond_8d

    .line 1145
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v23

    .line 1146
    .local v23, newView:Landroid/view/View;
    move-object/from16 v0, v23

    if-eq v0, v4, :cond_6a

    .line 1147
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeViewAt(I)V

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/google/android/apps/plus/views/ColumnGridView;->addView(Landroid/view/View;I)V

    .line 1149
    move-object/from16 v4, v23

    .line 1151
    :cond_6a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v24, v0

    .line 1152
    .local v24, oldMinorSpan:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    check-cast v19, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1153
    .restart local v19       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v24

    if-eq v0, v1, :cond_89

    .line 1154
    const-string v34, "ColumnGridView"

    const-string v35, "Span changed!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_89
    move-object/from16 v0, v19

    iput v12, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    .line 1159
    .end local v23           #newView:Landroid/view/View;
    .end local v24           #oldMinorSpan:I
    :cond_8d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1160
    .local v30, span:I
    mul-int v34, v13, v30

    add-int/lit8 v35, v30, -0x1

    mul-int v35, v35, v16

    add-int v31, v34, v35

    .line 1162
    .local v31, specSize:I
    if-eqz v22, :cond_d4

    .line 1166
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_16d

    .line 1167
    const/high16 v34, 0x4000

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1169
    .local v14, heightSpec:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_11f

    .line 1170
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1193
    .local v33, widthSpec:I
    :goto_cf
    move/from16 v0, v33

    invoke-virtual {v4, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1196
    .end local v14           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v12

    const/high16 v35, -0x8000

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_1dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v12

    add-int v32, v34, v16

    .line 1199
    .local v32, startFrom:I
    :goto_ee
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_1f3

    .line 1200
    move/from16 v18, v32

    .line 1201
    .local v18, lowest:I
    add-int/lit8 v17, v12, 0x1

    .local v17, j:I
    :goto_fa
    add-int v34, v12, v30

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_1f1

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v17

    add-int v3, v34, v16

    .line 1203
    .local v3, bottom:I
    move/from16 v0, v18

    if-le v3, v0, :cond_112

    .line 1204
    move/from16 v18, v3

    .line 1201
    :cond_112
    add-int/lit8 v17, v17, 0x1

    goto :goto_fa

    .line 1128
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v12           #col:I
    .end local v13           #colSize:I
    .end local v15           #i:I
    .end local v16           #itemMargin:I
    .end local v17           #j:I
    .end local v18           #lowest:I
    .end local v19           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v22           #needsLayout:Z
    .end local v25           #paddingStart:I
    .end local v26           #position:I
    .end local v27           #rebuildLayoutRecordsAfter:I
    .end local v28           #rebuildLayoutRecordsBefore:I
    .end local v30           #span:I
    .end local v31           #specSize:I
    .end local v32           #startFrom:I
    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v25

    goto/16 :goto_c

    .line 1142
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #childCount:I
    .restart local v12       #col:I
    .restart local v13       #colSize:I
    .restart local v15       #i:I
    .restart local v16       #itemMargin:I
    .restart local v19       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .restart local v25       #paddingStart:I
    .restart local v26       #position:I
    .restart local v27       #rebuildLayoutRecordsAfter:I
    .restart local v28       #rebuildLayoutRecordsBefore:I
    :cond_11b
    const/16 v22, 0x0

    goto/16 :goto_4e

    .line 1171
    .restart local v14       #heightSpec:I
    .restart local v22       #needsLayout:Z
    .restart local v30       #span:I
    .restart local v31       #specSize:I
    :cond_11f
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15f

    .line 1172
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v21, v16, v34

    .line 1173
    .local v21, margin:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    mul-int v34, v34, v13

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    add-int v20, v34, v21

    .line 1174
    .local v20, majorSpecSize:I
    const/high16 v34, 0x4000

    move/from16 v0, v20

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1175
    .restart local v33       #widthSpec:I
    goto/16 :goto_cf

    .line 1176
    .end local v20           #majorSpecSize:I
    .end local v21           #margin:I
    .end local v33           #widthSpec:I
    :cond_15f
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    move/from16 v34, v0

    const/high16 v35, 0x4000

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .restart local v33       #widthSpec:I
    goto/16 :goto_cf

    .line 1179
    .end local v14           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_16d
    const/high16 v34, 0x4000

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1181
    .restart local v33       #widthSpec:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_18f

    .line 1182
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14       #heightSpec:I
    goto/16 :goto_cf

    .line 1183
    .end local v14           #heightSpec:I
    :cond_18f
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1cf

    .line 1184
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v21, v16, v34

    .line 1185
    .restart local v21       #margin:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    move/from16 v34, v0

    mul-int v34, v34, v13

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    add-int v20, v34, v21

    .line 1186
    .restart local v20       #majorSpecSize:I
    const/high16 v34, 0x4000

    move/from16 v0, v20

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1188
    .restart local v14       #heightSpec:I
    goto/16 :goto_cf

    .line 1189
    .end local v14           #heightSpec:I
    .end local v20           #majorSpecSize:I
    .end local v21           #margin:I
    :cond_1cf
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x4000

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14       #heightSpec:I
    goto/16 :goto_cf

    .line 1196
    .end local v14           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_1dd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1eb

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v32

    goto/16 :goto_ee

    :cond_1eb
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v32

    goto/16 :goto_ee

    .line 1207
    .restart local v17       #j:I
    .restart local v18       #lowest:I
    .restart local v32       #startFrom:I
    :cond_1f1
    move/from16 v32, v18

    .line 1215
    .end local v17           #j:I
    .end local v18           #lowest:I
    :cond_1f3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_230

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1217
    .local v10, childSize:I
    :goto_1ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_235

    .line 1218
    move/from16 v8, v32

    .line 1219
    .local v8, childLeft:I
    add-int v9, v8, v10

    .line 1220
    .local v9, childRight:I
    add-int v34, v13, v16

    mul-int v34, v34, v12

    add-int v11, v25, v34

    .line 1221
    .local v11, childTop:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v34

    add-int v5, v11, v34

    .line 1222
    .local v5, childBottom:I
    move v7, v9

    .line 1230
    .local v7, childEnd:I
    :goto_218
    invoke-virtual {v4, v8, v11, v9, v5}, Landroid/view/View;->layout(IIII)V

    .line 1232
    move/from16 v17, v12

    .restart local v17       #j:I
    :goto_21d
    add-int v34, v12, v30

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_247

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aput v7, v34, v17

    .line 1232
    add-int/lit8 v17, v17, 0x1

    goto :goto_21d

    .line 1215
    .end local v5           #childBottom:I
    .end local v7           #childEnd:I
    .end local v8           #childLeft:I
    .end local v9           #childRight:I
    .end local v10           #childSize:I
    .end local v11           #childTop:I
    .end local v17           #j:I
    :cond_230
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_1ff

    .line 1224
    .restart local v10       #childSize:I
    :cond_235
    add-int v34, v13, v16

    mul-int v34, v34, v12

    add-int v8, v25, v34

    .line 1225
    .restart local v8       #childLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v9, v8, v34

    .line 1226
    .restart local v9       #childRight:I
    move/from16 v11, v32

    .line 1227
    .restart local v11       #childTop:I
    add-int v5, v11, v10

    .line 1228
    .restart local v5       #childBottom:I
    move v7, v5

    .restart local v7       #childEnd:I
    goto :goto_218

    .line 1236
    .restart local v17       #j:I
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v34, v0

    const-string v35, "layoutchildren - get"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .line 1238
    .local v29, rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    if-eqz v29, :cond_278

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v10, :cond_278

    .line 1240
    move-object/from16 v0, v29

    iput v10, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    .line 1241
    move/from16 v28, v26

    .line 1244
    :cond_278
    if-eqz v29, :cond_28e

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-eq v0, v1, :cond_28e

    .line 1246
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1247
    move/from16 v27, v26

    .line 1137
    :cond_28e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2a

    .line 1252
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childBottom:I
    .end local v7           #childEnd:I
    .end local v8           #childLeft:I
    .end local v9           #childRight:I
    .end local v10           #childSize:I
    .end local v11           #childTop:I
    .end local v12           #col:I
    .end local v17           #j:I
    .end local v19           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v22           #needsLayout:Z
    .end local v26           #position:I
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    .end local v30           #span:I
    .end local v31           #specSize:I
    .end local v32           #startFrom:I
    :cond_292
    const/4 v15, 0x0

    :goto_293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_2c0

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    aget v34, v34, v15

    const/high16 v35, -0x8000

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2bd

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    move-object/from16 v35, v0

    aget v35, v35, v15

    aput v35, v34, v15

    .line 1252
    :cond_2bd
    add-int/lit8 v15, v15, 0x1

    goto :goto_293

    .line 1258
    :cond_2c0
    if-gez v28, :cond_2c4

    if-ltz v27, :cond_380

    .line 1259
    :cond_2c4
    if-ltz v28, :cond_2cd

    .line 1260
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1262
    :cond_2cd
    if-ltz v27, :cond_2d6

    .line 1263
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1265
    :cond_2d6
    const/4 v15, 0x0

    :goto_2d7
    if-ge v15, v6, :cond_380

    .line 1266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v26, v34, v15

    .line 1267
    .restart local v26       #position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1268
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1269
    .restart local v19       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v34, v0

    const-string v35, "layoutchildren - get2"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .line 1271
    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    if-nez v29, :cond_337

    .line 1272
    new-instance v29, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;

    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V

    .line 1273
    .restart local v29       #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-object/from16 v34, v0

    const-string v35, "layoutchildren - put2"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1276
    :cond_337
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    move/from16 v34, v0

    if-eqz v34, :cond_37b

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v34

    :goto_34f
    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    .line 1278
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    .line 1279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    .line 1265
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2d7

    .line 1277
    :cond_37b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v34

    goto :goto_34f

    .line 1282
    .end local v4           #child:Landroid/view/View;
    .end local v19           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v26           #position:I
    .end local v29           #rec:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
    :cond_380
    return-void
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "optScrap"

    .prologue
    .line 1864
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .line 1865
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_a

    move-object v6, v5

    .line 1902
    .end local v5           #view:Landroid/view/View;
    .local v6, view:Landroid/view/View;
    :goto_9
    return-object v6

    .line 1870
    .end local v6           #view:Landroid/view/View;
    .restart local v5       #view:Landroid/view/View;
    :cond_a
    if-eqz p2, :cond_70

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    iget v1, v7, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->viewType:I

    .line 1872
    .local v1, optType:I
    :goto_14
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1873
    .local v2, positionViewType:I
    if-ne v1, v2, :cond_72

    move-object v3, p2

    .line 1876
    .local v3, scrap:Landroid/view/View;
    :goto_1d
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1878
    if-eq v5, v3, :cond_30

    if-eqz v3, :cond_30

    .line 1880
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->addScrap(Landroid/view/View;I)V

    .line 1883
    :cond_30
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1885
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_67

    .line 1886
    if-nez v0, :cond_79

    .line 1887
    const-string v7, "ColumnGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view at position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t have layout parameters;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "using default layout paramters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->generateDefaultLayoutParams()Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    move-result-object v0

    .line 1895
    :cond_64
    :goto_64
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_67
    move-object v4, v0

    .line 1898
    check-cast v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 1899
    .local v4, sglp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    iput p1, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->position:I

    .line 1900
    iput v2, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->viewType:I

    move-object v6, v5

    .line 1902
    .end local v5           #view:Landroid/view/View;
    .restart local v6       #view:Landroid/view/View;
    goto :goto_9

    .line 1870
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #optType:I
    .end local v2           #positionViewType:I
    .end local v3           #scrap:Landroid/view/View;
    .end local v4           #sglp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v6           #view:Landroid/view/View;
    .restart local v5       #view:Landroid/view/View;
    :cond_70
    const/4 v1, -0x1

    goto :goto_14

    .line 1873
    .restart local v1       #optType:I
    .restart local v2       #positionViewType:I
    :cond_72
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-virtual {v7, v2}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1d

    .line 1890
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #scrap:Landroid/view/View;
    :cond_79
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 1891
    const-string v7, "ColumnGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view at position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t have layout parameters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " of type ColumnGridView.LayoutParams; wrapping parameters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    move-result-object v0

    goto :goto_64
.end method

.method final offsetChildren(I)V
    .registers 12
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 1077
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_30

    move v3, p1

    .line 1078
    .local v3, horizOffset:I
    :goto_6
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_32

    move v5, v6

    .line 1080
    .local v5, vertOffset:I
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    .line 1081
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v1, :cond_34

    .line 1082
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1083
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1081
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v3           #horizOffset:I
    .end local v4           #i:I
    .end local v5           #vertOffset:I
    :cond_30
    move v3, v6

    .line 1077
    goto :goto_6

    .restart local v3       #horizOffset:I
    :cond_32
    move v5, p1

    .line 1078
    goto :goto_b

    .line 1087
    .restart local v1       #childCount:I
    .restart local v4       #i:I
    .restart local v5       #vertOffset:I
    :cond_34
    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1088
    .local v2, colCount:I
    const/4 v4, 0x0

    :goto_37
    if-ge v4, v2, :cond_4a

    .line 1089
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I

    aget v7, v6, v4

    add-int/2addr v7, p1

    aput v7, v6, v4

    .line 1090
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I

    aget v7, v6, v4

    add-int/2addr v7, p1

    aput v7, v6, v4

    .line 1088
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 1092
    :cond_4a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 873
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 874
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSetPressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 875
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 366
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 369
    .local v0, action:I
    packed-switch v0, :pswitch_data_c2

    :cond_11
    :goto_11
    move v5, v6

    .line 432
    :goto_12
    return v5

    .line 371
    :pswitch_13
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 372
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSetPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/apps/plus/views/ColumnGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 375
    iget-object v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 376
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_51

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    .line 382
    :goto_40
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    .line 383
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    .line 384
    iget v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_58

    .line 386
    iput v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    goto :goto_12

    .line 379
    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    goto :goto_40

    .line 390
    :cond_58
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-eqz v7, :cond_11

    goto :goto_12

    .line 397
    :pswitch_5d
    iget v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 398
    .local v2, index:I
    if-gez v2, :cond_8d

    .line 399
    const-string v5, "ColumnGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did we receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 402
    goto :goto_12

    .line 408
    :cond_8d
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v7, :cond_b2

    .line 409
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 413
    .local v4, touchPosition:F
    :goto_95
    iget v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    add-float v1, v7, v8

    .line 414
    .local v1, delta:F
    float-to-int v3, v1

    .line 415
    .local v3, intDelta:I
    int-to-float v7, v3

    sub-float v7, v1, v7

    iput v7, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    .line 417
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_11

    .line 418
    iput v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    goto/16 :goto_12

    .line 411
    .end local v1           #delta:F
    .end local v3           #intDelta:I
    .end local v4           #touchPosition:F
    :cond_b2
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .restart local v4       #touchPosition:F
    goto :goto_95

    .line 426
    .end local v2           #index:I
    .end local v4           #touchPosition:F
    :pswitch_b7
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Point;->set(II)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    goto/16 :goto_11

    .line 369
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b7
        :pswitch_5d
        :pswitch_b7
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1006
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    .line 1007
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->populate()V

    .line 1008
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mInLayout:Z

    .line 1010
    sub-int v1, p4, p2

    .line 1011
    .local v1, width:I
    sub-int v0, p5, p3

    .line 1012
    .local v0, height:I
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v2, :cond_1f

    .line 1013
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1014
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1020
    :goto_1b
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invokeOnItemScrollListener()V

    .line 1021
    return-void

    .line 1016
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1017
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1b
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 980
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 981
    .local v2, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 982
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 983
    .local v3, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 985
    .local v1, heightSize:I
    if-eq v2, v7, :cond_2e

    .line 986
    const-string v4, "ColumnGridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure: must have an exact width or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/high16 v2, 0x4000

    .line 990
    :cond_2e
    if-eq v0, v7, :cond_4a

    .line 991
    const-string v4, "ColumnGridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure: must have an exact height or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/high16 v0, 0x4000

    .line 996
    :cond_4a
    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setMeasuredDimension(II)V

    .line 998
    iget v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCountSetting:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_60

    if-lez v1, :cond_60

    if-lez v3, :cond_60

    .line 999
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v4, :cond_61

    iget v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    div-int v4, v1, v4

    :goto_5e
    iput v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 1002
    :cond_60
    return-void

    .line 999
    :cond_61
    iget v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    div-int v4, v3, v4

    goto :goto_5e
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 233
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 2130
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;

    .line 2131
    .local v1, ss:Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2132
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    .line 2133
    iget v2, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    .line 2134
    iget v2, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->visibleOffset:I

    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 2135
    iget v2, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->topOffset:I

    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    .line 2136
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2137
    iget-object v2, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_26
    if-ltz v0, :cond_3c

    .line 2138
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2137
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 2140
    :cond_3c
    iget-boolean v2, v1, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectionMode:Z

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    .line 2141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->requestLayout()V

    .line 2142
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 229
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 13

    .prologue
    .line 2085
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 2086
    .local v8, superState:Landroid/os/Parcelable;
    new-instance v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2087
    .local v7, ss:Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;
    iget v6, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    .line 2088
    .local v6, position:I
    iget v9, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 2089
    .local v9, visibleOffset:I
    iput v6, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    .line 2090
    iput v9, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->visibleOffset:I

    .line 2091
    if-ltz v6, :cond_27

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_27

    .line 2092
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    .line 2094
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getSelectedPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    iput-object v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    .line 2095
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    iput-boolean v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectionMode:Z

    .line 2099
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    .line 2100
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_36
    if-ge v3, v1, :cond_7b

    .line 2101
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2102
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 2103
    .local v4, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    iget-boolean v10, v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    if-eqz v10, :cond_85

    .line 2106
    iget-boolean v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v10, :cond_7c

    .line 2107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingLeft()I

    move-result v5

    .line 2108
    .local v5, padding:I
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2113
    .local v2, childStart:I
    :goto_52
    iget v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    sub-int v10, v2, v10

    sub-int/2addr v10, v5

    iput v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->topOffset:I

    .line 2115
    if-eqz v3, :cond_7b

    .line 2117
    add-int v10, v6, v3

    iput v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    .line 2118
    iget v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    if-ltz v10, :cond_7b

    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_7b

    iget v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    iget-object v11, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_7b

    .line 2119
    iget-object v10, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    .line 2125
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childStart:I
    .end local v4           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v5           #padding:I
    :cond_7b
    return-object v7

    .line 2110
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getPaddingTop()I

    move-result v5

    .line 2111
    .restart local v5       #padding:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .restart local v2       #childStart:I
    goto :goto_52

    .line 2100
    .end local v2           #childStart:I
    .end local v5           #padding:I
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_36
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18
    .parameter "ev"

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 440
    .local v10, action:I
    packed-switch v10, :pswitch_data_1c6

    .line 532
    :cond_12
    :goto_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->reportScrollStateChange(I)V

    .line 534
    const/4 v1, 0x1

    :goto_1c
    return v1

    .line 442
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionStartPoint:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSetPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 448
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_7a

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    .line 453
    :goto_69
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    .line 454
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    goto :goto_12

    .line 451
    :cond_7a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    goto :goto_69

    .line 459
    :pswitch_83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 462
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 463
    .local v12, index:I
    if-gez v12, :cond_ce

    .line 464
    const-string v1, "ColumnGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - did we receive an inconsistent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event stream?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 473
    :cond_ce
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_11d

    .line 474
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 478
    .local v14, touchPosition:F
    :goto_da
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    sub-float v1, v14, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    add-float v11, v1, v2

    .line 479
    .local v11, delta:F
    float-to-int v13, v11

    .line 480
    .local v13, intDelta:I
    int-to-float v1, v13

    sub-float v1, v11, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchRemainder:F

    .line 482
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_100

    .line 483
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    .line 486
    :cond_100
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 487
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    .line 489
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->trackMotionScroll(IZ)Z

    move-result v1

    if-nez v1, :cond_12

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_12

    .line 476
    .end local v11           #delta:F
    .end local v13           #intDelta:I
    .end local v14           #touchPosition:F
    :cond_11d
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v14

    .restart local v14       #touchPosition:F
    goto :goto_da

    .line 498
    .end local v12           #index:I
    .end local v14           #touchPosition:F
    :pswitch_124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 501
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    goto/16 :goto_12

    .line 506
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 510
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_1af

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v15

    .line 514
    .local v15, velocity:F
    :goto_163
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFlingVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1c0

    .line 515
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    .line 516
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_1bc

    float-to-int v4, v15

    .line 517
    .local v4, xVelocity:I
    :goto_17c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    if-eqz v1, :cond_1be

    const/4 v5, 0x0

    .line 518
    .local v5, yVelocity:I
    :goto_183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x8000

    const v7, 0x7fffffff

    const/high16 v8, -0x8000

    const v9, 0x7fffffff

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 521
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mLastTouch:F

    .line 522
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 527
    .end local v4           #xVelocity:I
    .end local v5           #yVelocity:I
    :goto_19e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->checkForSelection(II)V

    goto/16 :goto_12

    .line 510
    .end local v15           #velocity:F
    :cond_1af
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v15

    goto :goto_163

    .line 516
    .restart local v15       #velocity:F
    :cond_1bc
    const/4 v4, 0x0

    goto :goto_17c

    .line 517
    .restart local v4       #xVelocity:I
    :cond_1be
    float-to-int v5, v15

    goto :goto_183

    .line 524
    .end local v4           #xVelocity:I
    :cond_1c0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/views/ColumnGridView;->mScrollState:I

    goto :goto_19e

    .line 440
    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_137
        :pswitch_83
        :pswitch_124
    .end packed-switch
.end method

.method public registerSelectionListener(Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    .line 2202
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallowIntercept"

    .prologue
    const/4 v1, -0x1

    .line 357
    if-eqz p1, :cond_b

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mCurrentTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 359
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearPressedState()V

    .line 361
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 362
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mPopulating:Z

    if-nez v0, :cond_7

    .line 974
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 976
    :cond_7
    return-void
.end method

.method public select(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 2276
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-eqz v2, :cond_23

    .line 2277
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2278
    .local v0, selected:Z
    if-nez v0, :cond_23

    .line 2279
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2280
    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2281
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    if-eqz v2, :cond_23

    .line 2282
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    invoke-interface {v2, v1, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;->onItemSelected(Landroid/view/View;I)V

    .line 2286
    .end local v0           #selected:Z
    .end local v1           #view:Landroid/view/View;
    :cond_23
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 1910
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    .line 1911
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mObserver:Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1916
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->clearAllState()V

    .line 1919
    :cond_f
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z

    .line 1921
    if-eqz p1, :cond_3d

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_1a
    iput v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I

    .line 1922
    if-eqz p1, :cond_3f

    .line 1923
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mObserver:Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1924
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->setViewTypeCount(I)V

    .line 1925
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    .line 1930
    :goto_32
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-eqz v0, :cond_39

    .line 1931
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->endSelectionMode()V

    .line 1934
    :cond_39
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->populate()V

    .line 1935
    return-void

    :cond_3d
    move v0, v1

    .line 1921
    goto :goto_1a

    .line 1927
    :cond_3f
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z

    goto :goto_32
.end method

.method public setColumnCount(I)V
    .registers 6
    .parameter "colCount"

    .prologue
    const/4 v0, 0x1

    .line 250
    if-ge p1, v0, :cond_1f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1f

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colCount must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_1f
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    if-eq p1, v1, :cond_2d

    .line 255
    .local v0, needsPopulate:Z
    :goto_23
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCountSetting:I

    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I

    .line 256
    if-eqz v0, :cond_2c

    .line 257
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->populate()V

    .line 259
    :cond_2c
    return-void

    .line 254
    .end local v0           #needsPopulate:Z
    :cond_2d
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public setItemMargin(I)V
    .registers 4
    .parameter "marginPixels"

    .prologue
    .line 288
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    .line 289
    .local v0, needsPopulate:Z
    :goto_5
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mItemMargin:I

    .line 290
    if-eqz v0, :cond_c

    .line 291
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->populate()V

    .line 293
    :cond_c
    return-void

    .line 288
    .end local v0           #needsPopulate:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setMinColumnWidth(I)V
    .registers 3
    .parameter "minColWidth"

    .prologue
    .line 277
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mMinColWidth:I

    .line 278
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 279
    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mOnScrollListener:Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;

    .line 2029
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invokeOnItemScrollListener()V

    .line 2030
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 306
    if-ne p1, v0, :cond_6

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mHorizontalOrientation:Z

    .line 307
    return-void

    .line 306
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setRatio(F)V
    .registers 2
    .parameter "ratio"

    .prologue
    .line 236
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRatio:F

    .line 237
    return-void
.end method

.method public setRecyclerListener(Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    #setter for: Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mRecyclerListener:Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->access$402(Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;

    .line 670
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionFromTop(II)V

    .line 1999
    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .parameter "position"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 2011
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_6

    .line 2019
    :goto_5
    return-void

    .line 2015
    :cond_6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mFirstPosition:I

    .line 2016
    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mVisibleOffset:I

    .line 2017
    iput p2, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mRestoreOffset:I

    .line 2018
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->requestLayout()V

    goto :goto_5
.end method

.method public setSelectionToTop()V
    .registers 1

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->removeAllViews()V

    .line 1985
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->resetStateForGridTop()V

    .line 1988
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->populate()V

    .line 1989
    return-void
.end method

.method public setSelector(I)V
    .registers 3
    .parameter "selector"

    .prologue
    .line 2181
    if-nez p1, :cond_6

    .line 2182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2186
    :goto_5
    return-void

    .line 2184
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "selector"

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2193
    return-void
.end method

.method public startSelectionMode()V
    .registers 3

    .prologue
    .line 2217
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    if-eqz v0, :cond_c

    .line 2218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in selection mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2221
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionMode:Z

    .line 2222
    return-void
.end method

.method public unregisterSelectionListener()V
    .registers 2

    .prologue
    .line 2208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectionListener:Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;

    .line 2209
    return-void
.end method
