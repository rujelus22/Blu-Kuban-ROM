.class public Lcom/google/android/music/TouchInterceptor;
.super Lcom/google/android/music/MusicListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TouchInterceptor$RemoveListener;,
        Lcom/google/android/music/TouchInterceptor$DropListener;,
        Lcom/google/android/music/TouchInterceptor$DragListener;
    }
.end annotation


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrabHandleWidth:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mTouchSlop:I

    .line 68
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 70
    iget v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightHalf:I

    .line 71
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    .line 72
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mGrabHandleWidth:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TouchInterceptor;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/TouchInterceptor;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/TouchInterceptor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/TouchInterceptor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/TouchInterceptor;)Lcom/google/android/music/TouchInterceptor$RemoveListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/TouchInterceptor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .registers 3
    .parameter "y"

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_c

    .line 183
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    .line 185
    :cond_c
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1c

    .line 186
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    .line 188
    :cond_1c
    return-void
.end method

.method private doExpansion()V
    .registers 11

    .prologue
    .line 234
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 235
    .local v0, childnum:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-le v8, v9, :cond_10

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v4

    .line 240
    .local v4, numheaders:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 242
    .local v3, i:I
    :goto_20
    invoke-virtual {p0, v3}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 243
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_27

    .line 282
    return-void

    .line 247
    :cond_27
    invoke-virtual {p0, v7}, Lcom/google/android/music/TouchInterceptor;->isHeaderView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 241
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 250
    :cond_30
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 251
    .local v2, height:I
    const/4 v6, 0x0

    .line 252
    .local v6, visibility:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-ge v8, v4, :cond_50

    if-ne v3, v4, :cond_50

    .line 255
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 256
    const/4 v6, 0x4

    .line 277
    :cond_40
    :goto_40
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 278
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 258
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4d
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_40

    .line 260
    :cond_50
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 262
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-eq v8, v9, :cond_68

    invoke-virtual {p0, v7}, Lcom/google/android/music/TouchInterceptor;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6a

    .line 264
    :cond_68
    const/4 v6, 0x4

    goto :goto_40

    .line 270
    :cond_6a
    const/4 v2, 0x1

    goto :goto_40

    .line 272
    :cond_6c
    if-ne v3, v0, :cond_40

    .line 273
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-lt v8, v4, :cond_40

    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_40

    .line 274
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_40
.end method

.method private dragView(II)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 395
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v5, :cond_1e

    .line 396
    const/high16 v0, 0x3f80

    .line 397
    .local v0, alpha:F
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 398
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_1a

    .line 399
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 401
    :cond_1a
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 404
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1e
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-eqz v2, :cond_26

    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v6, :cond_5f

    .line 405
    :cond_26
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 410
    :goto_31
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 411
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5e

    .line 414
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 415
    .restart local v1       #width:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_66

    .line 416
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 423
    .end local v1           #width:I
    :cond_5e
    :goto_5e
    return-void

    .line 407
    :cond_5f
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_31

    .line 417
    .restart local v1       #width:I
    :cond_66
    if-lez v1, :cond_72

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_72

    .line 418
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5e

    .line 420
    :cond_72
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5e
.end method

.method private getItemForPosition(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 167
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 168
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 169
    .local v1, pos:I
    if-ltz v1, :cond_16

    .line 170
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-gt v1, v2, :cond_15

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 178
    :cond_15
    :goto_15
    return v1

    .line 173
    :cond_16
    if-gez v0, :cond_15

    .line 176
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private myPointToPosition(II)I
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    if-gez p2, :cond_e

    .line 148
    iget v5, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 149
    .local v4, pos:I
    if-lez v4, :cond_e

    .line 150
    add-int/lit8 v5, v4, -0x1

    .line 163
    .end local v4           #pos:I
    :goto_d
    return v5

    .line 154
    :cond_e
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 155
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 156
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_16
    if-ltz v3, :cond_2e

    .line 157
    invoke-virtual {p0, v3}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 159
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 160
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_d

    .line 156
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 163
    .end local v0           #child:Landroid/view/View;
    :cond_2e
    const/4 v5, -0x1

    goto :goto_d
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .registers 10
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 365
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    .line 367
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 368
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 369
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 370
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 372
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 374
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 379
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 380
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 382
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 383
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 384
    .local v1, v:Landroid/widget/ImageView;
    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 386
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 389
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 390
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iput-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 392
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 426
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_24

    .line 427
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 429
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 430
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iput-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 433
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_24
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2f

    .line 434
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    iput-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 437
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_39

    .line 438
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 440
    :cond_39
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 9
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, i:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/google/android/music/TouchInterceptor;->isHeaderView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 194
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 199
    :cond_f
    if-nez v3, :cond_33

    .line 200
    if-eqz p1, :cond_29

    .line 202
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 203
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 204
    .local v4, y:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    .line 208
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->layoutChildren()V

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 210
    if-nez v3, :cond_33

    .line 219
    return-void

    .line 214
    :cond_33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 215
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    .line 77
    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_1c

    .line 78
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-nez v6, :cond_1c

    .line 79
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/google/android/music/TouchInterceptor$1;

    invoke-direct {v8, p0}, Lcom/google/android/music/TouchInterceptor$1;-><init>(Lcom/google/android/music/TouchInterceptor;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 102
    :cond_1c
    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v6, :cond_2b

    .line 103
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_b8

    .line 136
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Lcom/google/android/music/MusicListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_2f
    return v6

    .line 105
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 106
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 107
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/google/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v2

    .line 108
    .local v2, itemnum:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v6

    if-lt v2, v6, :cond_2b

    .line 112
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    .line 117
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mGrabHandleWidth:I

    if-ge v4, v6, :cond_b2

    .line 118
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/music/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 124
    iput v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 125
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    .line 127
    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mTouchSlop:I

    .line 128
    .local v3, touchSlop:I
    sub-int v6, v5, v3

    iget v7, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    .line 129
    add-int v6, v5, v3

    iget v7, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    .line 130
    const/4 v6, 0x0

    goto/16 :goto_2f

    .line 132
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_b2
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    goto/16 :goto_2b

    .line 103
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x1

    .line 286
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_b

    .line 287
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    :cond_b
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v10, :cond_f9

    :cond_13
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v10, :cond_f9

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, action:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v6

    .line 292
    .local v6, totalcount:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v3

    .line 293
    .local v3, numheaders:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFooterViewsCount()I

    move-result v2

    .line 294
    .local v2, numfooters:I
    packed-switch v0, :pswitch_data_100

    .line 361
    .end local v0           #action:I
    .end local v2           #numfooters:I
    .end local v3           #numheaders:I
    .end local v6           #totalcount:I
    :cond_2a
    :goto_2a
    return v9

    .line 297
    .restart local v0       #action:I
    .restart local v2       #numfooters:I
    .restart local v3       #numheaders:I
    .restart local v6       #totalcount:I
    :pswitch_2b
    iget-object v4, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 298
    .local v4, r:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 299
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    .line 300
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v10, v9, :cond_58

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_58

    .line 301
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    if-eqz v10, :cond_54

    .line 302
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    iget v11, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    sub-int/2addr v11, v3

    invoke-interface {v10, v11}, Lcom/google/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 304
    :cond_54
    invoke-direct {p0, v9}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_2a

    .line 306
    :cond_58
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v10, :cond_79

    .line 307
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-ge v10, v3, :cond_62

    .line 308
    iput v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 310
    :cond_62
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int v11, v6, v2

    if-lt v10, v11, :cond_6e

    .line 311
    sub-int v10, v6, v2

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 313
    :cond_6e
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    iget v11, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    sub-int/2addr v11, v3

    iget v12, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int/2addr v12, v3

    invoke-interface {v10, v11, v12}, Lcom/google/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 315
    :cond_79
    invoke-direct {p0, v13}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_2a

    .line 321
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_7d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v7, v10

    .line 322
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v8, v10

    .line 323
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/google/android/music/TouchInterceptor;->dragView(II)V

    .line 324
    invoke-direct {p0, v8}, Lcom/google/android/music/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 325
    .local v1, itemnum:I
    if-ltz v1, :cond_2a

    .line 326
    if-eqz v0, :cond_96

    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-eq v1, v10, :cond_a9

    .line 327
    :cond_96
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-eqz v10, :cond_a4

    .line 328
    iget-object v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    iget v11, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int/2addr v11, v3

    sub-int v12, v1, v3

    invoke-interface {v10, v11, v12}, Lcom/google/android/music/TouchInterceptor$DragListener;->drag(II)V

    .line 330
    :cond_a4
    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 331
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->doExpansion()V

    .line 333
    :cond_a9
    const/4 v5, 0x0

    .line 334
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/google/android/music/TouchInterceptor;->adjustScrollBounds(I)V

    .line 335
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    if-le v8, v10, :cond_d5

    .line 337
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getLastVisiblePosition()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_d3

    .line 338
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    iget v11, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    if-le v8, v10, :cond_d1

    const/16 v5, 0x10

    .line 353
    :cond_c8
    :goto_c8
    if-eqz v5, :cond_2a

    .line 354
    const/16 v10, 0x1e

    invoke-virtual {p0, v5, v10}, Lcom/google/android/music/TouchInterceptor;->smoothScrollBy(II)V

    goto/16 :goto_2a

    .line 338
    :cond_d1
    const/4 v5, 0x4

    goto :goto_c8

    .line 340
    :cond_d3
    const/4 v5, 0x1

    goto :goto_c8

    .line 342
    :cond_d5
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    if-ge v8, v10, :cond_c8

    .line 344
    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_f7

    const/16 v5, -0x10

    .line 345
    :goto_e1
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v10

    if-nez v10, :cond_c8

    invoke-virtual {p0, v13}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingTop()I

    move-result v11

    if-lt v10, v11, :cond_c8

    .line 350
    const/4 v5, 0x0

    goto :goto_c8

    .line 344
    :cond_f7
    const/4 v5, -0x4

    goto :goto_e1

    .line 361
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v2           #numfooters:I
    .end local v3           #numheaders:I
    .end local v5           #speed:I
    .end local v6           #totalcount:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_f9
    invoke-super {p0, p1}, Lcom/google/android/music/MusicListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2a

    .line 294
    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_2b
        :pswitch_7d
        :pswitch_2b
    .end packed-switch
.end method

.method public setDragListener(Lcom/google/android/music/TouchInterceptor$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    .line 449
    return-void
.end method

.method public setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 453
    return-void
.end method

.method public setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 457
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "trash"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 444
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    .line 445
    return-void
.end method
