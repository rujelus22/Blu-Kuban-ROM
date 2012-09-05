.class public Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;
.super Landroid/widget/ListView;
.source "MusicSettingsMusicMenuReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;,
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;,
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;
    }
.end annotation


# instance fields
.field private dndViewId:I

.field private final dragImageX:I

.field private isDnd:Z

.field protected mAdapter:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

.field private final mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field protected mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

.field public mFinishHandler:Landroid/os/Handler;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field protected mRemoveListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    iput v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->dragImageX:I

    .line 135
    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFinishHandler:Landroid/os/Handler;

    .line 498
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    .line 500
    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    .line 515
    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    .line 553
    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$4;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTouchSlop:I

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 99
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setDropListener(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setRemoveListener(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->initAdapter(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z

    return p1
.end method

.method private adjustScrollBounds(I)V
    .registers 3
    .parameter "y"

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_c

    .line 256
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    .line 258
    :cond_c
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1c

    .line 259
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    .line 261
    :cond_1c
    return-void
.end method

.method private doExpansion()V
    .registers 10

    .prologue
    .line 303
    iget v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 304
    .local v0, childnum:I
    iget v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iget v8, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-le v7, v8, :cond_10

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 310
    :cond_10
    iget v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 314
    .local v3, i:I
    :goto_1c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 315
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_23

    .line 340
    return-void

    .line 318
    :cond_23
    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 319
    .local v2, height:I
    const/4 v5, 0x0

    .line 322
    .local v5, visibility:I
    if-ne v6, v1, :cond_40

    .line 324
    iget v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iget v8, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3e

    .line 325
    const/4 v5, 0x4

    .line 334
    :cond_2f
    :goto_2f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 335
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 337
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 327
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3e
    const/4 v2, 0x1

    goto :goto_2f

    .line 329
    :cond_40
    if-ne v3, v0, :cond_2f

    .line 330
    iget v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_2f

    .line 331
    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    goto :goto_2f
.end method

.method private dragView(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 483
    :goto_4
    return-void

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private getItemForPosition(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 242
    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v2, p1, v2

    add-int/lit8 v0, v2, -0x20

    .line 243
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->myPointToPosition(II)I

    move-result v1

    .line 244
    .local v1, pos:I
    if-ltz v1, :cond_14

    .line 245
    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_13

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_13
    :goto_13
    return v1

    .line 248
    :cond_14
    if-gez v0, :cond_13

    .line 249
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private initAdapter(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 110
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mAdapter:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mAdapter:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method private myPointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 230
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildCount()I

    move-result v1

    .line 231
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_8
    if-ltz v3, :cond_20

    .line 232
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 238
    .end local v0           #child:Landroid/view/View;
    :goto_1c
    return v4

    .line 231
    .restart local v0       #child:Landroid/view/View;
    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 238
    .end local v0           #child:Landroid/view/View;
    :cond_20
    const/4 v4, -0x1

    goto :goto_1c
.end method

.method private setDropListener(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    .line 580
    return-void
.end method

.method private setRemoveListener(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mRemoveListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$RemoveListener;

    .line 592
    return-void
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 9
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 444
    const-string v1, "Reorder"

    const-string v2, "StartDragging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->stopDragging()V

    .line 447
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x35

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 461
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 465
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 467
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    .line 473
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 488
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iput-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    .line 492
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 494
    iput-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 496
    :cond_26
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 9
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, i:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 269
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_2a

    .line 270
    if-eqz p1, :cond_20

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v2

    .line 272
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 273
    .local v4, y:I
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setSelectionFromTop(II)V

    .line 276
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->layoutChildren()V

    .line 277
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 278
    if-nez v3, :cond_2a

    .line 291
    return-void

    .line 284
    :cond_2a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 285
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 286
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public forceCancelDragging()V
    .registers 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->stopDragging()V

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->unExpandViews(Z)V

    .line 610
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_10

    .line 160
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_f0

    .line 214
    :cond_10
    :goto_10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 215
    .local v5, returnV:Z
    const-string v9, "Reorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v5           #returnV:Z
    :goto_2c
    return v5

    .line 162
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v7, v9

    .line 164
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 166
    .local v8, y:I
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v3

    .line 167
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_10

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, item:Landroid/view/View;
    const v9, 0x7f0c00c9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v7, :cond_5a

    .line 177
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_2c

    .line 179
    :cond_5a
    const-string v9, "Reorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    .line 181
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightNormal:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mItemHeightExpanded:I

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v8, v9

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPoint:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mCoordOffset:I

    .line 185
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->dndViewId:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_97

    .line 187
    move-object v1, v2

    .line 188
    :cond_97
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 189
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 190
    iget v9, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_eb

    .line 191
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 193
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v8}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 198
    iput v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    .line 199
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    .line 202
    iget v6, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTouchSlop:I

    .line 203
    .local v6, touchSlop:I
    sub-int v9, v8, v6

    iget v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    .line 204
    add-int v9, v8, v6

    iget v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    .line 205
    const-string v9, "Reorder"

    const-string v10, "Return false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 208
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #touchSlop:I
    :cond_eb
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    goto/16 :goto_10

    .line 160
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_2d
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    .line 347
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_c9

    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_c9

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 352
    .local v0, action:I
    packed-switch v0, :pswitch_data_d0

    .line 438
    :cond_14
    :goto_14
    const/4 v9, 0x1

    .line 440
    .end local v0           #action:I
    :goto_15
    return v9

    .line 355
    .restart local v0       #action:I
    :pswitch_16
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 356
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 357
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->stopDragging()V

    .line 358
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    if-eqz v9, :cond_39

    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    if-ltz v9, :cond_39

    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_39

    .line 359
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDropListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;

    iget v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mFirstDragPos:I

    iget v11, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;->drop(II)V

    .line 361
    :cond_39
    invoke-direct {p0, v12}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->unExpandViews(Z)V

    goto :goto_14

    .line 376
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 377
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 385
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->dragView(II)V

    .line 387
    invoke-direct {p0, v8}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getItemForPosition(I)I

    move-result v1

    .line 391
    .local v1, itemnum:I
    if-ltz v1, :cond_14

    .line 392
    if-eqz v0, :cond_56

    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    if-eq v1, v9, :cond_66

    .line 393
    :cond_56
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    if-eqz v9, :cond_61

    .line 394
    iget-object v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragListener:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;

    iget v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;->drag(II)V

    .line 396
    :cond_61
    iput v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mDragPos:I

    .line 408
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->doExpansion()V

    .line 410
    :cond_66
    const/4 v5, 0x0

    .line 411
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->adjustScrollBounds(I)V

    .line 412
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    add-int/lit8 v9, v9, 0x32

    if-le v8, v9, :cond_b5

    .line 414
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    iget v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mLowerBound:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x32

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_b2

    const/16 v5, 0x32

    .line 419
    :cond_7d
    :goto_7d
    if-eqz v5, :cond_14

    .line 420
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v4

    .line 421
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_99

    .line 424
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->pointToPosition(II)I

    move-result v4

    .line 426
    :cond_99
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 427
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_14

    if-eqz v0, :cond_14

    .line 428
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 429
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setSelectionFromTop(II)V

    goto/16 :goto_14

    .line 414
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_b2
    const/16 v5, 0x14

    goto :goto_7d

    .line 415
    :cond_b5
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    add-int/lit8 v9, v9, -0x64

    if-ge v8, v9, :cond_7d

    .line 417
    iget v9, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x64

    if-ge v8, v9, :cond_c6

    const/16 v5, -0x32

    :goto_c5
    goto :goto_7d

    :cond_c6
    const/16 v5, -0x14

    goto :goto_c5

    .line 440
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_c9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_15

    .line 352
    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_16
        :pswitch_3d
        :pswitch_16
    .end packed-switch
.end method

.method public submitReorder()V
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, temp:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget v3, v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 130
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setMusicMenuOrder(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 133
    return-void
.end method
