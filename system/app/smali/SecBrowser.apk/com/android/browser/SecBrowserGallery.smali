.class public Lcom/android/browser/SecBrowserGallery;
.super Lcom/android/browser/SecBrowserAbsSpinner;
.source "SecBrowserGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SecBrowserGallery$LayoutParams;,
        Lcom/android/browser/SecBrowserGallery$FlingRunnable;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field public mIsScrollingToSelectedPage:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/SecBrowserGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 214
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/SecBrowserGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/SecBrowserAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput v6, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 107
    const/16 v5, 0x190

    iput v5, p0, Lcom/android/browser/SecBrowserGallery;->mAnimationDuration:I

    .line 144
    new-instance v5, Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;-><init>(Lcom/android/browser/SecBrowserGallery;)V

    iput-object v5, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    .line 150
    new-instance v5, Lcom/android/browser/SecBrowserGallery$1;

    invoke-direct {v5, p0}, Lcom/android/browser/SecBrowserGallery$1;-><init>(Lcom/android/browser/SecBrowserGallery;)V

    iput-object v5, p0, Lcom/android/browser/SecBrowserGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 175
    iput-boolean v7, p0, Lcom/android/browser/SecBrowserGallery;->mShouldCallbackDuringFling:Z

    .line 180
    iput-boolean v7, p0, Lcom/android/browser/SecBrowserGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 206
    iput-boolean v7, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    .line 207
    iput-boolean v6, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    .line 220
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/browser/SecBrowserGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 221
    iget-object v5, p0, Lcom/android/browser/SecBrowserGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 223
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 227
    .local v2, index:I
    if-ltz v2, :cond_3d

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserGallery;->setGravity(I)V

    .line 231
    :cond_3d
    const/16 v1, 0x5dc

    .line 233
    .local v1, animationDuration:I
    if-lez v1, :cond_44

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserGallery;->setAnimationDuration(I)V

    .line 237
    :cond_44
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 239
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/android/browser/SecBrowserGallery;->setSpacing(I)V

    .line 241
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 243
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/android/browser/SecBrowserGallery;->setUnselectedAlpha(F)V

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    iget v5, p0, Lcom/android/browser/SecBrowserGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/android/browser/SecBrowserGallery;->mGroupFlags:I

    .line 251
    iget v5, p0, Lcom/android/browser/SecBrowserGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/android/browser/SecBrowserGallery;->mGroupFlags:I

    .line 252
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/SecBrowserGallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/browser/SecBrowserGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/browser/SecBrowserGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/SecBrowserGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/SecBrowserGallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/SecBrowserGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/SecBrowserGallery;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/SecBrowserGallery;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/browser/SecBrowserGallery;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/browser/SecBrowserGallery;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/SecBrowserGallery;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/SecBrowserGallery;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .registers 9
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 948
    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getMeasuredHeight()I

    move-result v3

    .line 949
    .local v3, myHeight:I
    :goto_6
    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 951
    .local v1, childHeight:I
    :goto_c
    const/4 v2, 0x0

    .line 953
    .local v2, childTop:I
    iget v4, p0, Lcom/android/browser/SecBrowserGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_42

    .line 966
    :goto_12
    return v2

    .line 948
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_13
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getHeight()I

    move-result v3

    goto :goto_6

    .line 949
    .restart local v3       #myHeight:I
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_c

    .line 955
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_1d
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 956
    goto :goto_12

    .line 958
    :sswitch_22
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 960
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 961
    goto :goto_12

    .line 963
    .end local v0           #availableSpace:I
    :sswitch_38
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_12

    .line 953
    nop

    :sswitch_data_42
    .sparse-switch
        0x10 -> :sswitch_22
        0x30 -> :sswitch_1d
        0x50 -> :sswitch_38
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .registers 13
    .parameter "toLeft"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v7

    .line 493
    .local v7, numChildren:I
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 494
    .local v2, firstPosition:I
    const/4 v8, 0x0

    .line 495
    .local v8, start:I
    const/4 v1, 0x0

    .line 497
    .local v1, count:I
    if-eqz p1, :cond_42

    .line 498
    iget v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    .line 499
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d
    if-ge v5, v7, :cond_21

    .line 500
    iget-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eqz v9, :cond_33

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 501
    .local v6, n:I
    :goto_17
    invoke-virtual {p0, v6}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_35

    .line 510
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_21
    iget-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-nez v9, :cond_26

    .line 511
    const/4 v8, 0x0

    .line 531
    .end local v3           #galleryLeft:I
    :cond_26
    :goto_26
    invoke-virtual {p0, v8, v1}, Lcom/android/browser/SecBrowserGallery;->detachViewsFromParent(II)V

    .line 533
    iget-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eq p1, v9, :cond_32

    .line 534
    iget v9, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 536
    :cond_32
    return-void

    .restart local v3       #galleryLeft:I
    :cond_33
    move v6, v5

    .line 500
    goto :goto_17

    .line 505
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_35
    move v8, v6

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 507
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 514
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    .end local v6           #n:I
    :cond_42
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 515
    .local v4, galleryRight:I
    add-int/lit8 v5, v7, -0x1

    .restart local v5       #i:I
    :goto_4c
    if-ltz v5, :cond_60

    .line 516
    iget-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eqz v9, :cond_66

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 517
    .restart local v6       #n:I
    :goto_56
    invoke-virtual {p0, v6}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_68

    .line 526
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_60
    iget-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eqz v9, :cond_26

    .line 527
    const/4 v8, 0x0

    goto :goto_26

    :cond_66
    move v6, v5

    .line 516
    goto :goto_56

    .line 521
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_68
    move v8, v6

    .line 522
    add-int/lit8 v1, v1, 0x1

    .line 523
    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 515
    add-int/lit8 v5, v5, -0x1

    goto :goto_4c
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1183
    const/4 v6, 0x0

    .line 1185
    .local v6, handled:Z
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemLongClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_11

    .line 1186
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mOnItemLongClickListener:Lcom/android/browser/SecBrowserAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/SecBrowserAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/android/browser/SecBrowserAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1190
    :cond_11
    if-nez v6, :cond_1e

    .line 1191
    new-instance v0, Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mContextMenuInfo:Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;

    .line 1192
    invoke-super {p0, p0}, Lcom/android/browser/SecBrowserAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1195
    :cond_1e
    if-eqz v6, :cond_24

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->performHapticFeedback(I)Z

    .line 1199
    :cond_24
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1119
    if-eqz p1, :cond_6

    .line 1120
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1123
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->setPressed(Z)V

    .line 1124
    return-void
.end method

.method private dispatchUnpress()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1128
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_13

    .line 1129
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1128
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1132
    :cond_13
    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserGallery;->setPressed(Z)V

    .line 1133
    return-void
.end method

.method private fillToGalleryLeft()V
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 700
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryLeftRtl()V

    .line 704
    :goto_7
    return-void

    .line 702
    :cond_8
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryLeftLtr()V

    goto :goto_7
.end method

.method private fillToGalleryLeftLtr()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 738
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 739
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    .line 742
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 746
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2c

    .line 747
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 748
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 756
    .local v1, curRightEdge:I
    :goto_15
    if-le v1, v2, :cond_3a

    if-ltz v0, :cond_3a

    .line 757
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/android/browser/SecBrowserGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 761
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 764
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 765
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 751
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_2c
    const/4 v0, 0x0

    .line 752
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 753
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    goto :goto_15

    .line 767
    :cond_3a
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .registers 10

    .prologue
    .line 707
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 708
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    .line 709
    .local v2, galleryLeft:I
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v4

    .line 710
    .local v4, numChildren:I
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 713
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 717
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_34

    .line 718
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 719
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 727
    .local v1, curRightEdge:I
    :goto_1c
    if-le v1, v2, :cond_47

    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-ge v0, v7, :cond_47

    .line 728
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, Lcom/android/browser/SecBrowserGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 732
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 722
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_34
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0       #curPosition:I
    iput v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 723
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 724
    .restart local v1       #curRightEdge:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    goto :goto_1c

    .line 735
    :cond_47
    return-void
.end method

.method private fillToGalleryRight()V
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 771
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryRightRtl()V

    .line 775
    :goto_7
    return-void

    .line 773
    :cond_8
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryRightLtr()V

    goto :goto_7
.end method

.method private fillToGalleryRightLtr()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 809
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 810
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 811
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v4

    .line 812
    .local v4, numChildren:I
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 815
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 819
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_39

    .line 820
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 821
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 828
    .local v0, curLeftEdge:I
    :goto_24
    if-ge v0, v2, :cond_44

    if-ge v1, v5, :cond_44

    .line 829
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/android/browser/SecBrowserGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 833
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 823
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_39
    iget v7, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 824
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    .line 825
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    goto :goto_24

    .line 836
    :cond_44
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 778
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 779
    .local v3, itemSpacing:I
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 782
    .local v2, galleryRight:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 786
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_34

    .line 787
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 788
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 795
    .local v0, curLeftEdge:I
    :goto_1d
    if-ge v0, v2, :cond_3a

    if-ltz v1, :cond_3a

    .line 796
    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/android/browser/SecBrowserGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 800
    iput v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 803
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 804
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 790
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_34
    const/4 v1, 0x0

    .line 791
    .restart local v1       #curPosition:I
    iget v0, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    .line 792
    .restart local v0       #curLeftEdge:I
    iput-boolean v7, p0, Lcom/android/browser/SecBrowserGallery;->mShouldStopFling:Z

    goto :goto_1d

    .line 806
    :cond_3a
    return-void
.end method

.method private getCenterOfGallery()I
    .registers 3

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 861
    iget-boolean v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2a

    .line 862
    iget-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 863
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 865
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 868
    .local v2, childLeft:I
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/browser/SecBrowserGallery;->mRightMost:I

    .line 870
    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/browser/SecBrowserGallery;->mLeftMost:I

    .line 873
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/browser/SecBrowserGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 885
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_29
    return-object v1

    .line 880
    .end local v1           #child:Landroid/view/View;
    :cond_2a
    iget-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 883
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/browser/SecBrowserGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 885
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_29
.end method

.method private offsetChildrenLeftAndRight(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_12

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 466
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 469
    :cond_12
    return-void
.end method

.method private onFinishedMovement()V
    .registers 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_a

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    .line 564
    invoke-super {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->selectionChanged()V

    .line 566
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->invalidate()V

    .line 567
    return-void
.end method

.method private scrollIntoSlots()V
    .registers 6

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_b

    .line 557
    :cond_a
    :goto_a
    return-void

    .line 546
    :cond_b
    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/android/browser/SecBrowserGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 547
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfGallery()I

    move-result v2

    .line 549
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 550
    .local v0, scrollAmount:I
    if-eqz v0, :cond_1f

    .line 551
    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_a

    .line 553
    :cond_1f
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->onFinishedMovement()V

    .line 554
    iget-boolean v3, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 555
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    goto :goto_a
.end method

.method private setSelectionToCenterChild()V
    .registers 11

    .prologue
    .line 582
    iget-object v7, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    .line 583
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_7

    .line 620
    :cond_6
    :goto_6
    return-void

    .line 585
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfGallery()I

    move-result v3

    .line 588
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_6

    .line 593
    :cond_17
    const v2, 0x7fffffff

    .line 594
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 595
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_21
    if-ltz v4, :cond_34

    .line 597
    invoke-virtual {p0, v4}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_46

    .line 601
    move v6, v4

    .line 613
    .end local v0           #child:Landroid/view/View;
    :cond_34
    iget v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 615
    .local v5, newPos:I
    iget v8, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_6

    .line 616
    invoke-virtual {p0, v5}, Lcom/android/browser/SecBrowserGallery;->setSelectedPositionInt(I)V

    .line 617
    invoke-virtual {p0, v5}, Lcom/android/browser/SecBrowserGallery;->setNextSelectedPositionInt(I)V

    .line 618
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->checkSelectionChanged()V

    goto :goto_6

    .line 605
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_46
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 607
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_60

    .line 608
    move v2, v1

    .line 609
    move v6, v4

    .line 595
    :cond_60
    add-int/lit8 v4, v4, -0x1

    goto :goto_21
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .registers 16
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    .line 905
    .local v6, lp:Lcom/android/browser/SecBrowserGallery$LayoutParams;
    if-nez v6, :cond_e

    .line 906
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/android/browser/SecBrowserGallery$LayoutParams;
    check-cast v6, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    .line 909
    .restart local v6       #lp:Lcom/android/browser/SecBrowserGallery$LayoutParams;
    :cond_e
    iget-boolean v8, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eq p4, v8, :cond_59

    const/4 v8, -0x1

    :goto_13
    invoke-virtual {p0, p1, v8, v6}, Lcom/android/browser/SecBrowserGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 911
    if-nez p2, :cond_5b

    const/4 v8, 0x1

    :goto_19
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 914
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 916
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 920
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 926
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/browser/SecBrowserGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 927
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 929
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 930
    .local v7, width:I
    if-eqz p4, :cond_5d

    .line 931
    move v2, p3

    .line 932
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 938
    .local v3, childRight:I
    :goto_55
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 939
    return-void

    .line 909
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_59
    const/4 v8, 0x0

    goto :goto_13

    .line 911
    :cond_5b
    const/4 v8, 0x0

    goto :goto_19

    .line 934
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_5d
    sub-int v2, p3, v7

    .line 935
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_55
.end method

.method private updateSelectedItemMetadata()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1350
    iget-object v1, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    .line 1352
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    .line 1353
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_12

    .line 1376
    :cond_11
    :goto_11
    return-void

    .line 1357
    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1358
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1361
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1366
    :cond_21
    if-eqz v1, :cond_11

    if-eq v1, v0, :cond_11

    .line 1369
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1373
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_11
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 344
    instance-of v0, p1, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1149
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1151
    :cond_9
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 1142
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 362
    new-instance v0, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/browser/SecBrowserGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 354
    new-instance v0, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/browser/SecBrowserGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 349
    new-instance v0, Lcom/android/browser/SecBrowserGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/browser/SecBrowserGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1394
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1397
    .local v0, selectedIndex:I
    if-gez v0, :cond_9

    .line 1407
    .end local p2
    :cond_8
    :goto_8
    return p2

    .line 1399
    .restart local p2
    :cond_9
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_f

    move p2, v0

    .line 1401
    goto :goto_8

    .line 1402
    :cond_f
    if-lt p2, v0, :cond_8

    .line 1404
    add-int/lit8 p2, p2, 0x1

    goto :goto_8
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    const/high16 v0, 0x3f80

    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_e
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mUnselectedAlpha:F

    goto :goto_9
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mContextMenuInfo:Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getIsScrollingToSelectedPage()Z
    .registers 2

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 10
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 428
    iget-boolean v6, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    if-eq p1, v6, :cond_15

    iget v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 429
    .local v3, extremeItemPosition:I
    :goto_9
    iget v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 431
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_17

    move v5, p2

    .line 454
    :cond_14
    :goto_14
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_15
    move v3, v5

    .line 428
    goto :goto_9

    .line 435
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_17
    invoke-static {v1}, Lcom/android/browser/SecBrowserGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 436
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfGallery()I

    move-result v4

    .line 438
    .local v4, galleryCenter:I
    if-eqz p1, :cond_2c

    .line 439
    if-le v2, v4, :cond_14

    .line 452
    :cond_23
    sub-int v0, v4, v2

    .line 454
    .local v0, centerDifference:I
    if-eqz p1, :cond_2f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_14

    .line 445
    .end local v0           #centerDifference:I
    :cond_2c
    if-lt v2, v4, :cond_23

    goto :goto_14

    .line 454
    .restart local v0       #centerDifference:I
    :cond_2f
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_14
.end method

.method public getmSelectedPosition()I
    .registers 4

    .prologue
    .line 840
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecBrowserGallery :getmSelectedPosition mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    return v0
.end method

.method layout(IZ)V
    .registers 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/SecBrowserGallery;->mIsRtl:Z

    .line 637
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 638
    .local v0, childrenLeft:I
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mRight:I

    iget v5, p0, Lcom/android/browser/SecBrowserAdapterView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 640
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_22

    .line 641
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->handleDataChanged()V

    .line 645
    :cond_22
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-nez v4, :cond_2a

    .line 646
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->resetList()V

    .line 696
    :goto_29
    return-void

    .line 651
    :cond_2a
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_33

    .line 652
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/android/browser/SecBrowserGallery;->setSelectedPositionInt(I)V

    .line 656
    :cond_33
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->recycleAllViews()V

    .line 660
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->detachAllViewsFromParent()V

    .line 666
    iput v6, p0, Lcom/android/browser/SecBrowserGallery;->mRightMost:I

    .line 667
    iput v6, p0, Lcom/android/browser/SecBrowserGallery;->mLeftMost:I

    .line 675
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    .line 676
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/android/browser/SecBrowserGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 679
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 680
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 682
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryRight()V

    .line 683
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryLeft()V

    .line 686
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->clear()V

    .line 688
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->invalidate()V

    .line 689
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->checkSelectionChanged()V

    .line 691
    iput-boolean v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    .line 692
    iput-boolean v6, p0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 693
    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/android/browser/SecBrowserGallery;->setNextSelectedPositionInt(I)V

    .line 695
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->updateSelectedItemMetadata()V

    goto :goto_29
.end method

.method public moveNext()Z
    .registers 3

    .prologue
    .line 1289
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_18

    .line 1290
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->scrollToChild(I)Z

    .line 1291
    const/4 v0, 0x1

    .line 1293
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public movePrevious()Z
    .registers 3

    .prologue
    .line 1271
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_14

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-lez v0, :cond_14

    .line 1272
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->scrollToChild(I)Z

    .line 1273
    const/4 v0, 0x1

    .line 1275
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public moveselectedNext(I)Z
    .registers 5
    .parameter "scrollvalue"

    .prologue
    .line 1297
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecBrowserGallery :moveNext() mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_54

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_54

    .line 1299
    const/16 v0, 0xe10

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->setAnimationDuration(I)V

    .line 1300
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/SecBrowserGallery;->scrollToselectedChild(II)Z

    .line 1301
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->setAnimationDuration(I)V

    .line 1302
    const/4 v0, 0x1

    .line 1304
    :goto_53
    return v0

    :cond_54
    const/4 v0, 0x0

    goto :goto_53
.end method

.method moveselectedPrevious(I)Z
    .registers 4
    .parameter "scrollvalue"

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-lez v0, :cond_1e

    .line 1280
    const/16 v0, 0xe10

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->setAnimationDuration(I)V

    .line 1281
    iget v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/SecBrowserGallery;->scrollToselectedChild(II)Z

    .line 1282
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->setAnimationDuration(I)V

    .line 1283
    const/4 v0, 0x1

    .line 1285
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method onCancel()V
    .registers 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->onUp()V

    .line 1102
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1068
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->stop(Z)V

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/SecBrowserGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    .line 1073
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2b

    .line 1074
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchView:Landroid/view/View;

    .line 1075
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1079
    :cond_2b
    iput-boolean v2, p0, Lcom/android/browser/SecBrowserGallery;->mIsFirstScroll:Z

    .line 1082
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1009
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_10

    .line 1013
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1016
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    .line 1020
    :cond_10
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1022
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1413
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/SecBrowserAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1420
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 1421
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1422
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1425
    :cond_14
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1214
    sparse-switch p1, :sswitch_data_22

    .line 1234
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/browser/SecBrowserAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    .line 1217
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1218
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->playSoundEffect(I)V

    goto :goto_8

    .line 1223
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1224
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/browser/SecBrowserGallery;->playSoundEffect(I)V

    goto :goto_8

    .line 1230
    :sswitch_1e
    iput-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_4

    .line 1214
    nop

    :sswitch_data_22
    .sparse-switch
        0x15 -> :sswitch_9
        0x16 -> :sswitch_13
        0x17 -> :sswitch_1e
        0x42 -> :sswitch_1e
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1239
    sparse-switch p1, :sswitch_data_3e

    .line 1267
    invoke-super {p0, p1, p2}, Lcom/android/browser/SecBrowserAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_7
    return v1

    .line 1243
    :sswitch_8
    iget-boolean v1, p0, Lcom/android/browser/SecBrowserGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_39

    .line 1244
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v1, :cond_39

    .line 1246
    iget-object v1, p0, Lcom/android/browser/SecBrowserGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/browser/SecBrowserGallery;->dispatchPress(Landroid/view/View;)V

    .line 1247
    new-instance v1, Lcom/android/browser/SecBrowserGallery$2;

    invoke-direct {v1, p0}, Lcom/android/browser/SecBrowserGallery$2;-><init>(Lcom/android/browser/SecBrowserGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/SecBrowserGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1254
    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1255
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/browser/SecBrowserGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1261
    .end local v0           #selectedIndex:I
    :cond_39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/SecBrowserGallery;->mReceivedInvokeKeyDown:Z

    .line 1263
    const/4 v1, 0x1

    goto :goto_7

    .line 1239
    :sswitch_data_3e
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-super/range {p0 .. p5}, Lcom/android/browser/SecBrowserAbsSpinner;->onLayout(ZIIII)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    .line 375
    invoke-virtual {p0, v1, v1}, Lcom/android/browser/SecBrowserGallery;->layout(IZ)V

    .line 376
    iput-boolean v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mInLayout:Z

    .line 377
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1106
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1039
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1043
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_25

    .line 1044
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1c

    .line 1050
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_15

    iput-boolean v3, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    .line 1051
    :cond_15
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/SecBrowserGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1058
    :cond_1c
    :goto_1c
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->trackMotionScroll(I)V

    .line 1060
    iput-boolean v4, p0, Lcom/android/browser/SecBrowserGallery;->mIsFirstScroll:Z

    .line 1061
    return v3

    .line 1054
    :cond_25
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1c

    iput-boolean v4, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    goto :goto_1c
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1113
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    .line 989
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_27

    .line 992
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->scrollToChild(I)Z

    .line 995
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_25

    .line 996
    :cond_16
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/android/browser/SecBrowserGallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/SecBrowserGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1000
    :cond_25
    const/4 v0, 0x1

    .line 1003
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 973
    iget-object v2, p0, Lcom/android/browser/SecBrowserGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 975
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 976
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 978
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->onUp()V

    .line 983
    :cond_10
    :goto_10
    return v1

    .line 979
    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 980
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->onCancel()V

    goto :goto_10
.end method

.method onUp()V
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    #getter for: Lcom/android/browser/SecBrowserGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->access$200(Lcom/android/browser/SecBrowserGallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1091
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->scrollIntoSlots()V

    .line 1094
    :cond_f
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->dispatchUnpress()V

    .line 1095
    return-void
.end method

.method public scrollToChild(I)Z
    .registers 6
    .parameter "childPosition"

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1311
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1312
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1313
    .local v1, distance:I
    iget-object v2, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1314
    const/4 v2, 0x1

    .line 1317
    .end local v1           #distance:I
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public scrollToselectedChild(II)Z
    .registers 8
    .parameter "childPosition"
    .parameter "scrollvalue"

    .prologue
    const/4 v2, 0x1

    .line 1321
    iget-boolean v3, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    if-nez v3, :cond_7

    .line 1322
    iput-boolean v2, p0, Lcom/android/browser/SecBrowserGallery;->mIsScrollingToSelectedPage:Z

    .line 1323
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1325
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 1327
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfGallery()I

    move-result v3

    invoke-static {v0}, Lcom/android/browser/SecBrowserGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    sub-int v1, v3, v4

    .line 1329
    .local v1, distance:I
    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    mul-int v4, v1, p2

    invoke-virtual {v3, v4}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1333
    .end local v1           #distance:I
    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method selectionChanged()V
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 572
    invoke-super {p0}, Lcom/android/browser/SecBrowserAbsSpinner;->selectionChanged()V

    .line 574
    :cond_7
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .parameter "animationDurationMillis"

    .prologue
    .line 290
    iput p1, p0, Lcom/android/browser/SecBrowserGallery;->mAnimationDuration:I

    .line 291
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1386
    iget v0, p0, Lcom/android/browser/SecBrowserGallery;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1387
    iput p1, p0, Lcom/android/browser/SecBrowserGallery;->mGravity:I

    .line 1388
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->requestLayout()V

    .line 1390
    :cond_9
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 1342
    invoke-super {p0, p1}, Lcom/android/browser/SecBrowserAbsSpinner;->setSelectedPositionInt(I)V

    .line 1345
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->updateSelectedItemMetadata()V

    .line 1346
    return-void
.end method

.method public setSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 301
    iput p1, p0, Lcom/android/browser/SecBrowserGallery;->mSpacing:I

    .line 302
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .registers 2
    .parameter "unselectedAlpha"

    .prologue
    .line 312
    iput p1, p0, Lcom/android/browser/SecBrowserGallery;->mUnselectedAlpha:F

    .line 313
    return-void
.end method

.method public showContextMenu()Z
    .registers 6

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_1d

    .line 1174
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1175
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/browser/SecBrowserGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1176
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/browser/SecBrowserGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1179
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .parameter "originalView"

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/browser/SecBrowserGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1162
    .local v2, longPressPosition:I
    if-gez v2, :cond_8

    .line 1163
    const/4 v3, 0x0

    .line 1167
    :goto_7
    return v3

    .line 1166
    :cond_8
    iget-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1167
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/browser/SecBrowserGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_7
.end method

.method trackMotionScroll(I)V
    .registers 6
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 425
    :goto_7
    return-void

    .line 396
    :cond_8
    if-gez p1, :cond_33

    const/4 v1, 0x1

    .line 398
    .local v1, toLeft:Z
    :goto_b
    invoke-virtual {p0, v1, p1}, Lcom/android/browser/SecBrowserGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 399
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_19

    .line 401
    iget-object v3, p0, Lcom/android/browser/SecBrowserGallery;->mFlingRunnable:Lcom/android/browser/SecBrowserGallery$FlingRunnable;

    #calls: Lcom/android/browser/SecBrowserGallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/android/browser/SecBrowserGallery$FlingRunnable;->access$100(Lcom/android/browser/SecBrowserGallery$FlingRunnable;Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->onFinishedMovement()V

    .line 405
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/browser/SecBrowserGallery;->offsetChildrenLeftAndRight(I)V

    .line 407
    invoke-direct {p0, v1}, Lcom/android/browser/SecBrowserGallery;->detachOffScreenChildren(Z)V

    .line 409
    if-eqz v1, :cond_35

    .line 411
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryRight()V

    .line 418
    :goto_24
    iget-object v3, p0, Lcom/android/browser/SecBrowserAbsSpinner;->mRecycler:Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;

    invoke-virtual {v3}, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->clear()V

    .line 420
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->setSelectionToCenterChild()V

    .line 422
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/browser/SecBrowserGallery;->onScrollChanged(IIII)V

    .line 424
    invoke-virtual {p0}, Lcom/android/browser/SecBrowserGallery;->invalidate()V

    goto :goto_7

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_33
    move v1, v2

    .line 396
    goto :goto_b

    .line 414
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_35
    invoke-direct {p0}, Lcom/android/browser/SecBrowserGallery;->fillToGalleryLeft()V

    goto :goto_24
.end method
