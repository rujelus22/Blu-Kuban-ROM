.class public Lcom/sec/android/app/music/widget/ChangeOrderListView;
.super Lcom/sec/android/app/music/TrackListView;
.source "ChangeOrderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;,
        Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

.field private mHeight:I

.field private final mItemHeightExpanded:I

.field private final mItemHeightHalf:I

.field private final mItemHeightNormal:I

.field private mLowerBound:I

.field private mSrcDragPos:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZZ)V
    .registers 8
    .parameter "context"
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/TrackListView;-><init>(Landroid/content/Context;ILjava/lang/String;ZZ)V

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTempRect:Landroid/graphics/Rect;

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTouchSlop:I

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightNormal:I

    .line 114
    iget v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightHalf:I

    .line 115
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightExpanded:I

    .line 116
    return-void
.end method

.method private adjustScrollBounds(I)V
    .registers 5
    .parameter "y"

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustScrollBounds y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_24

    .line 215
    iget v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mUpperBound:I

    .line 217
    :cond_24
    iget v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_34

    .line 218
    iget v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mLowerBound:I

    .line 220
    :cond_34
    return-void
.end method

.method private doExpansion()V
    .registers 12

    .prologue
    .line 272
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 273
    .local v0, childnum:I
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    iget v9, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    if-le v8, v9, :cond_10

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 276
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getHeaderViewsCount()I

    move-result v4

    .line 277
    .local v4, numheaders:I
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, first:Landroid/view/View;
    sget-object v8, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doExpansion childnum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numheaders:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " first:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, i:I
    :goto_4c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 282
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_53

    .line 321
    return-void

    .line 286
    :cond_53
    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightNormal:I

    .line 287
    .local v2, height:I
    const/4 v6, 0x0

    .line 288
    .local v6, visibility:I
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    if-ge v8, v4, :cond_75

    if-ne v3, v4, :cond_75

    .line 291
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 292
    const/4 v6, 0x4

    .line 316
    :cond_63
    :goto_63
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 317
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 295
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_72
    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightExpanded:I

    goto :goto_63

    .line 297
    :cond_75
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 299
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    iget v9, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    if-eq v8, v9, :cond_8d

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_8f

    .line 301
    :cond_8d
    const/4 v6, 0x4

    goto :goto_63

    .line 308
    :cond_8f
    const/4 v2, 0x1

    .line 309
    const/4 v6, 0x4

    goto :goto_63

    .line 311
    :cond_92
    if-ne v3, v0, :cond_63

    .line 312
    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    if-lt v8, v4, :cond_63

    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_63

    .line 313
    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightExpanded:I

    goto :goto_63
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 433
    sget-object v1, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dragView x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mYOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_55

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 442
    .local v0, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le p2, v1, :cond_56

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 450
    .end local v0           #width:I
    :cond_55
    :goto_55
    return-void

    .line 444
    .restart local v0       #width:I
    :cond_56
    if-lez v0, :cond_63

    div-int/lit8 v1, v0, 0x4

    if-le p1, v1, :cond_63

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_55

    .line 447
    :cond_63
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_55
.end method

.method private getItemForPosition(I)I
    .registers 7
    .parameter "y"

    .prologue
    .line 196
    sget-object v2, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemForPosition y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 198
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->myPointToPosition(II)I

    move-result v1

    .line 199
    .local v1, pos:I
    if-ltz v1, :cond_2e

    .line 200
    iget v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_2d

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 208
    :cond_2d
    :goto_2d
    return v1

    .line 203
    :cond_2e
    if-gez v0, :cond_2d

    .line 206
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private myPointToPosition(II)I
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 172
    sget-object v5, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "myPointToPosition x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-gez p2, :cond_30

    .line 176
    iget v5, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->myPointToPosition(II)I

    move-result v4

    .line 177
    .local v4, pos:I
    if-lez v4, :cond_30

    .line 178
    add-int/lit8 v5, v4, -0x1

    .line 191
    .end local v4           #pos:I
    :goto_2f
    return v5

    .line 182
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTempRect:Landroid/graphics/Rect;

    .line 183
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildCount()I

    move-result v1

    .line 184
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_38
    if-ltz v3, :cond_50

    .line 185
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_2f

    .line 184
    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 191
    .end local v0           #child:Landroid/view/View;
    :cond_50
    const/4 v5, -0x1

    goto :goto_2f
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .registers 11
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 396
    sget-object v2, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDragging x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->stopDragging()V

    .line 400
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 406
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 413
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 416
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 421
    .local v1, v:Landroid/widget/ImageView;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 422
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 423
    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 424
    iput-object p1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 426
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 427
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iput-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    .line 429
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 453
    sget-object v1, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    const-string v2, "stopDragging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2b

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 458
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iput-object v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    .line 462
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_36

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    iput-object v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 466
    :cond_36
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_40

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 469
    :cond_40
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 11
    .parameter "deletion"

    .prologue
    const/4 v8, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, i:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 228
    .local v3, v:Landroid/view/View;
    sget-object v5, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unExpandViews getChildAt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-nez v3, :cond_6e

    .line 230
    if-eqz p1, :cond_42

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v2

    .line 233
    .local v2, position:I
    invoke-virtual {p0, v8}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 234
    .local v4, y:I
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->setSelectionFromTop(II)V

    .line 240
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->layoutChildren()V

    .line 241
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 242
    sget-object v5, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unExpandViews after layoutChildren() getChildAt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_6b} :catch_7f

    .line 251
    :goto_6b
    if-nez v3, :cond_6e

    .line 252
    return-void

    .line 255
    :cond_6e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 256
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_7f
    move-exception v5

    goto :goto_6b
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    .line 122
    iget-object v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

    if-eqz v7, :cond_2c

    .line 124
    :cond_9
    sget-object v7, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_ce

    .line 163
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Lcom/sec/android/app/music/TrackListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_30
    return v6

    .line 128
    :pswitch_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 129
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 130
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->pointToPosition(II)I

    move-result v2

    .line 131
    .local v2, itemnum:I
    sget-object v7, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent itemnum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2c

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 136
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointX:I

    .line 137
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPointY:I

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mXOffset:I

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mYOffset:I

    .line 142
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    if-le v4, v7, :cond_c9

    .line 143
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 144
    invoke-virtual {v1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 149
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 151
    iput v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    .line 152
    iget v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    .line 154
    iget v3, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTouchSlop:I

    .line 155
    .local v3, touchSlop:I
    sub-int v7, v5, v3

    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mUpperBound:I

    .line 156
    add-int v7, v5, v3

    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mLowerBound:I

    goto/16 :goto_30

    .line 159
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_c9
    invoke-direct {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->stopDragging()V

    goto/16 :goto_2c

    .line 126
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    .line 326
    sget-object v6, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    const-string v7, "onTouchEvent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

    if-eqz v6, :cond_d4

    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v6, :cond_d4

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 331
    .local v0, action:I
    sget-object v6, Lcom/sec/android/app/music/widget/ChangeOrderListView;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    packed-switch v0, :pswitch_data_da

    .line 389
    :cond_33
    :goto_33
    const/4 v6, 0x1

    .line 391
    .end local v0           #action:I
    :goto_34
    return v6

    .line 336
    .restart local v0       #action:I
    :pswitch_35
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mTempRect:Landroid/graphics/Rect;

    .line 337
    .local v2, r:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->stopDragging()V

    .line 340
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

    if-eqz v6, :cond_58

    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    if-ltz v6, :cond_58

    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_58

    .line 341
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

    iget v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mSrcDragPos:I

    iget v8, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    invoke-interface {v6, v7, v8}, Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;->drop(II)V

    .line 343
    :cond_58
    invoke-direct {p0, v9}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->unExpandViews(Z)V

    goto :goto_33

    .line 349
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 350
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 351
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->dragView(II)V

    .line 352
    invoke-direct {p0, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getItemForPosition(I)I

    move-result v1

    .line 353
    .local v1, itemnum:I
    if-ltz v1, :cond_33

    .line 354
    if-eqz v0, :cond_75

    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    if-eq v1, v6, :cond_85

    .line 355
    :cond_75
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;

    if-eqz v6, :cond_80

    .line 356
    iget-object v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;

    iget v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    invoke-interface {v6, v7, v1}, Lcom/sec/android/app/music/widget/ChangeOrderListView$DragListener;->drag(II)V

    .line 358
    :cond_80
    iput v1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDragPos:I

    .line 359
    invoke-direct {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->doExpansion()V

    .line 361
    :cond_85
    const/4 v3, 0x0

    .line 362
    .local v3, speed:I
    invoke-direct {p0, v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->adjustScrollBounds(I)V

    .line 363
    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mLowerBound:I

    if-le v5, v6, :cond_b0

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_ae

    .line 366
    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mHeight:I

    iget v7, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mLowerBound:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_ac

    const/16 v3, 0x10

    .line 383
    :cond_a4
    :goto_a4
    if-eqz v3, :cond_33

    .line 384
    const/16 v6, 0x1e

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->smoothScrollBy(II)V

    goto :goto_33

    .line 366
    :cond_ac
    const/4 v3, 0x4

    goto :goto_a4

    .line 368
    :cond_ae
    const/4 v3, 0x1

    goto :goto_a4

    .line 370
    :cond_b0
    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mUpperBound:I

    if-ge v5, v6, :cond_a4

    .line 372
    iget v6, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mUpperBound:I

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_d2

    const/16 v3, -0x10

    .line 373
    :goto_bc
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_a4

    invoke-virtual {p0, v9}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->getPaddingTop()I

    move-result v7

    if-lt v6, v7, :cond_a4

    .line 380
    const/4 v3, 0x0

    goto :goto_a4

    .line 372
    :cond_d2
    const/4 v3, -0x4

    goto :goto_bc

    .line 391
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_d4
    invoke-super {p0, p1}, Lcom/sec/android/app/music/TrackListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_34

    .line 333
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_35
        :pswitch_5c
        :pswitch_35
    .end packed-switch
.end method

.method public setDropListener(Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/sec/android/app/music/widget/ChangeOrderListView;->mDropListener:Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;

    .line 481
    return-void
.end method
