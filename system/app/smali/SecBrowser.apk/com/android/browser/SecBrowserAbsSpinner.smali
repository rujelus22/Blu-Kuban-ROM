.class public abstract Lcom/android/browser/SecBrowserAbsSpinner;
.super Lcom/android/browser/SecBrowserAdapterView;
.source "SecBrowserAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SecBrowserAbsSpinner$1;,
        Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;,
        Lcom/android/browser/SecBrowserAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/browser/SecBrowserAdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/browser/SecBrowserAdapterView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;-><init>(Lcom/android/browser/SecBrowserAbsSpinner;)V

    iput-object v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    .line 63
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->initAbsSpinner()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/SecBrowserAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/SecBrowserAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v3, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;-><init>(Lcom/android/browser/SecBrowserAbsSpinner;)V

    iput-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    .line 72
    invoke-direct {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->initAbsSpinner()V

    .line 74
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 78
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_3a

    .line 79
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 82
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/SecBrowserAbsSpinner;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/SecBrowserAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->setFocusable(Z)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->setWillNotDraw(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    .prologue
    .line 305
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 306
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x0

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 173
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_d5

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    :goto_f
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 175
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_d9

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingTop:I

    :goto_1b
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 177
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_dd

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    :goto_27
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 179
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_e1

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingBottom:I

    :goto_33
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 182
    iget-boolean v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    if-eqz v8, :cond_3c

    .line 183
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->handleDataChanged()V

    .line 186
    :cond_3c
    const/4 v2, 0x0

    .line 187
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 188
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 190
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 191
    .local v4, selectedPosition:I
    if-ltz v4, :cond_9d

    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_9d

    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_9d

    .line 193
    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_60

    .line 196
    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 199
    :cond_60
    if-eqz v5, :cond_67

    .line 201
    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 204
    :cond_67
    if-eqz v5, :cond_9d

    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_7b

    .line 206
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mBlockLayoutRequests:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iput-boolean v11, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mBlockLayoutRequests:Z

    .line 210
    :cond_7b
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/browser/SecBrowserAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 212
    invoke-virtual {p0, v5}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 213
    invoke-virtual {p0, v5}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 215
    const/4 v1, 0x0

    .line 219
    .end local v5           #view:Landroid/view/View;
    :cond_9d
    if-eqz v1, :cond_b5

    .line 221
    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 222
    if-nez v6, :cond_b5

    .line 223
    iget-object v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 227
    :cond_b5
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 230
    invoke-static {v2, p2, v11}, Lcom/android/browser/SecBrowserAbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .line 231
    .local v0, heightSize:I
    invoke-static {v3, p1, v11}, Lcom/android/browser/SecBrowserAbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 233
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->setMeasuredDimension(II)V

    .line 234
    iput p2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mHeightMeasureSpec:I

    .line 235
    iput p1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mWidthMeasureSpec:I

    .line 236
    return-void

    .line 173
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_d5
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_f

    .line 175
    :cond_d9
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1b

    .line 177
    :cond_dd
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_27

    .line 179
    :cond_e1
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_33
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 435
    move-object v0, p1

    check-cast v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;

    .line 437
    .local v0, ss:Lcom/android/browser/SecBrowserAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/browser/SecBrowserAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 439
    iget-wide v1, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_25

    .line 440
    iput-boolean v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    .line 441
    iput-boolean v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 442
    iget-wide v1, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncRowId:J

    .line 443
    iget v1, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncPosition:I

    .line 444
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSyncMode:I

    .line 445
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->requestLayout()V

    .line 447
    :cond_25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 422
    invoke-super {p0}, Lcom/android/browser/SecBrowserAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 423
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 424
    .local v0, ss:Lcom/android/browser/SecBrowserAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->selectedId:J

    .line 425
    iget-wide v2, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 426
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->position:I

    .line 430
    :goto_1d
    return-object v0

    .line 428
    :cond_1e
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/browser/SecBrowserAbsSpinner$SavedState;->position:I

    goto :goto_1d
.end method

.method public pointToPosition(II)I
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 344
    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 345
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 346
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 347
    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 350
    :cond_d
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v5, :cond_2b

    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-ltz v5, :cond_2b

    .line 351
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 352
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2b

    .line 353
    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 354
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 355
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 370
    .end local v4           #selectedView:Landroid/view/View;
    :goto_2a
    return v5

    .line 360
    :cond_2b
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildCount()I

    move-result v1

    .line 361
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_31
    if-ltz v3, :cond_4d

    .line 362
    invoke-virtual {p0, v3}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4a

    .line 364
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 366
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_2a

    .line 361
    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 370
    .end local v0           #child:Landroid/view/View;
    :cond_4d
    const/4 v5, -0x1

    goto :goto_2a
.end method

.method recycleAllViews()V
    .registers 7

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildCount()I

    move-result v0

    .line 255
    .local v0, childCount:I
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    .line 256
    .local v4, recycleBin:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;
    iget v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 259
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 261
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 262
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 264
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 321
    invoke-super {p0}, Lcom/android/browser/SecBrowserAdapterView;->requestLayout()V

    .line 323
    :cond_7
    return-void
.end method

.method resetList()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->removeAllViewsInLayout()V

    .line 151
    iput v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 152
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAbsSpinner;->setSelectedPositionInt(I)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->invalidate()V

    .line 157
    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 105
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_f

    .line 106
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->resetList()V

    .line 110
    :cond_f
    iput-object p1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 112
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedPosition:I

    .line 113
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldSelectedRowId:J

    .line 115
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4e

    .line 116
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mOldItemCount:I

    .line 117
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 118
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->checkFocus()V

    .line 120
    new-instance v1, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;-><init>(Lcom/android/browser/SecBrowserAdapterView;)V

    iput-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 121
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v1, :cond_3d

    const/4 v0, 0x0

    .line 125
    .local v0, position:I
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->setSelectedPositionInt(I)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 128
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-nez v1, :cond_4a

    .line 130
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->checkSelectionChanged()V

    .line 140
    .end local v0           #position:I
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->requestLayout()V

    .line 141
    return-void

    .line 134
    :cond_4e
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->checkFocus()V

    .line 135
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->resetList()V

    .line 137
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->checkSelectionChanged()V

    goto :goto_4a
.end method

.method public setSelection(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->invalidate()V

    .line 281
    return-void
.end method
