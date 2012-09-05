.class Lcom/cooliris/media/CropImageView;
.super Lcom/cooliris/media/ImageViewTouchBase;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/CropImageView$1;,
        Lcom/cooliris/media/CropImageView$ButtonMoveHandler;
    }
.end annotation


# instance fields
.field private mButtonHandler:Lcom/cooliris/media/CropImageView$ButtonMoveHandler;

.field private mButtonsAni:[Landroid/view/animation/Animation;

.field private mButtonsLayout:Landroid/view/View;

.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/cooliris/media/HighlightView;

.field private mTouchPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 1439
    iput-object v1, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/CropImageView;->mTouchPressed:Z

    .line 1717
    new-instance v0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;

    invoke-direct {v0, p0, v1}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;-><init>(Lcom/cooliris/media/CropImageView;Lcom/cooliris/media/CropImageView$1;)V

    iput-object v0, p0, Lcom/cooliris/media/CropImageView;->mButtonHandler:Lcom/cooliris/media/CropImageView$ButtonMoveHandler;

    .line 1470
    return-void
.end method

.method static synthetic access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/CropImageView;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cooliris/media/CropImageView;[Landroid/view/animation/Animation;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;

    return-object p1
.end method

.method private centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V
    .registers 15
    .parameter "hv"

    .prologue
    .line 1677
    iget-object v3, p1, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1679
    .local v3, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 1680
    .local v5, width:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v4, v9

    .line 1682
    .local v4, height:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getWidth()I

    move-result v9

    int-to-float v2, v9

    .line 1683
    .local v2, currViewWidth:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .line 1685
    .local v1, currViewHeight:F
    div-float v9, v2, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 1686
    .local v6, z1:F
    div-float v9, v1, v4

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 1688
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1689
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 1690
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1692
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6f

    .line 1693
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 1696
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1697
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/cooliris/media/CropImageView;->zoomTo(FFFF)V

    .line 1700
    .end local v0           #coordinates:[F
    :cond_6f
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->ensureVisible(Lcom/cooliris/media/HighlightView;)V

    .line 1701
    return-void
.end method

.method private ensureVisible(Lcom/cooliris/media/HighlightView;)V
    .registers 12
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 1649
    iget-object v6, p1, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1651
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1652
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1654
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1655
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1657
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_55

    move v0, v1

    .line 1658
    .local v0, panDeltaX:I
    :goto_32
    if-eqz v4, :cond_57

    move v3, v4

    .line 1663
    .local v3, panDeltaY:I
    :goto_35
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_40

    .line 1664
    const/4 v0, 0x0

    .line 1666
    :cond_40
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_4b

    .line 1667
    const/4 v3, 0x0

    .line 1669
    :cond_4b
    if-nez v0, :cond_4f

    if-eqz v3, :cond_54

    .line 1670
    :cond_4f
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/cooliris/media/CropImageView;->panBy(FF)V

    .line 1672
    :cond_54
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_55
    move v0, v2

    .line 1657
    goto :goto_32

    .restart local v0       #panDeltaX:I
    :cond_57
    move v3, v5

    .line 1658
    goto :goto_35
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1514
    iget-object v4, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1516
    .local v1, highlightViewsCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v1, :cond_39

    .line 1517
    iget-object v4, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/HighlightView;

    .line 1519
    .local v2, hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1520
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 1521
    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 1524
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/cooliris/media/HighlightView;->getHit(FF)I

    move-result v0

    .line 1525
    .local v0, edge:I
    if-eq v0, v6, :cond_3d

    .line 1526
    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1527
    invoke-virtual {v2, v6}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 1528
    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 1533
    .end local v0           #edge:I
    .end local v2           #hv:Lcom/cooliris/media/HighlightView;
    :cond_39
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 1534
    return-void

    .line 1516
    .restart local v0       #edge:I
    .restart local v2       #hv:Lcom/cooliris/media/HighlightView;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method


# virtual methods
.method public add(Lcom/cooliris/media/HighlightView;)V
    .registers 3
    .parameter "hv"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1713
    iget-object v0, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 1715
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1705
    invoke-super {p0, p1}, Lcom/cooliris/media/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1706
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1707
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/HighlightView;

    invoke-virtual {v1, p1}, Lcom/cooliris/media/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 1706
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1709
    :cond_1a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1449
    invoke-super/range {p0 .. p5}, Lcom/cooliris/media/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 1450
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/cooliris/media/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1451
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v2}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1452
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 1454
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1455
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    goto :goto_16

    .line 1461
    .end local v0           #hv:Lcom/cooliris/media/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1539
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 1541
    .local v2, highlightViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/HighlightView;>;"
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/CropImage;

    .line 1542
    .local v0, cropImage:Lcom/cooliris/media/CropImage;
    iget-boolean v7, v0, Lcom/cooliris/media/CropImage;->mSaving:Z

    if-eqz v7, :cond_10

    move v7, v8

    .line 1644
    :goto_f
    return v7

    .line 1546
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_116

    .line 1629
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_120

    :cond_1e
    :goto_1e
    move v7, v9

    .line 1644
    goto :goto_f

    .line 1548
    :pswitch_20
    iget-boolean v7, p0, Lcom/cooliris/media/CropImageView;->mTouchPressed:Z

    if-nez v7, :cond_2b

    .line 1549
    iput-boolean v9, p0, Lcom/cooliris/media/CropImageView;->mTouchPressed:Z

    .line 1550
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mButtonHandler:Lcom/cooliris/media/CropImageView$ButtonMoveHandler;

    invoke-virtual {v7}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->hide()V

    .line 1553
    :cond_2b
    iget-boolean v7, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v7, :cond_33

    .line 1554
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 1556
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1557
    .local v3, highlightViewsCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_38
    if-ge v5, v3, :cond_17

    .line 1558
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/HighlightView;

    .line 1559
    .local v4, hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/cooliris/media/HighlightView;->getHit(FF)I

    move-result v1

    .line 1560
    .local v1, edge:I
    if-eq v1, v9, :cond_6d

    .line 1561
    iput v1, p0, Lcom/cooliris/media/CropImageView;->mMotionEdge:I

    .line 1562
    iput-object v4, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    .line 1563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    .line 1564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    .line 1566
    iget-object v8, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    const/16 v7, 0x20

    if-ne v1, v7, :cond_6a

    sget-object v7, Lcom/cooliris/media/HighlightView$ModifyMode;->Move:Lcom/cooliris/media/HighlightView$ModifyMode;

    :goto_66
    invoke-virtual {v8, v7}, Lcom/cooliris/media/HighlightView;->setMode(Lcom/cooliris/media/HighlightView$ModifyMode;)V

    goto :goto_17

    :cond_6a
    sget-object v7, Lcom/cooliris/media/HighlightView$ModifyMode;->Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

    goto :goto_66

    .line 1557
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 1577
    .end local v1           #edge:I
    .end local v3           #highlightViewsCount:I
    .end local v4           #hv:Lcom/cooliris/media/HighlightView;
    .end local v5           #i:I
    :pswitch_70
    iget-boolean v7, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v7, :cond_ac

    .line 1578
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1579
    .restart local v3       #highlightViewsCount:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_79
    if-ge v5, v3, :cond_bc

    .line 1580
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/HighlightView;

    .line 1581
    .restart local v4       #hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {v4}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 1582
    iput-object v4, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    .line 1583
    const/4 v6, 0x0

    .local v6, j:I
    :goto_8a
    if-ge v6, v3, :cond_9b

    .line 1584
    if-ne v6, v5, :cond_91

    .line 1583
    :goto_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 1589
    :cond_91
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/HighlightView;

    invoke-virtual {v7, v9}, Lcom/cooliris/media/HighlightView;->setHidden(Z)V

    goto :goto_8e

    .line 1591
    :cond_9b
    invoke-direct {p0, v4}, Lcom/cooliris/media/CropImageView;->centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V

    .line 1592
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/CropImage;

    iput-boolean v8, v7, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    move v7, v9

    .line 1593
    goto/16 :goto_f

    .line 1579
    .end local v6           #j:I
    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 1596
    .end local v3           #highlightViewsCount:I
    .end local v4           #hv:Lcom/cooliris/media/HighlightView;
    .end local v5           #i:I
    :cond_ac
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    if-eqz v7, :cond_bc

    .line 1597
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    invoke-direct {p0, v7}, Lcom/cooliris/media/CropImageView;->centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V

    .line 1598
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    sget-object v10, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    invoke-virtual {v7, v10}, Lcom/cooliris/media/HighlightView;->setMode(Lcom/cooliris/media/HighlightView$ModifyMode;)V

    .line 1600
    :cond_bc
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    .line 1602
    iget-boolean v7, p0, Lcom/cooliris/media/CropImageView;->mTouchPressed:Z

    if-eqz v7, :cond_17

    .line 1603
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mButtonHandler:Lcom/cooliris/media/CropImageView$ButtonMoveHandler;

    invoke-virtual {v7}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->show()V

    .line 1604
    iput-boolean v8, p0, Lcom/cooliris/media/CropImageView;->mTouchPressed:Z

    goto/16 :goto_17

    .line 1609
    :pswitch_cc
    iget-boolean v7, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v7, :cond_d5

    .line 1610
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_17

    .line 1611
    :cond_d5
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    if-eqz v7, :cond_17

    .line 1612
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    iget v8, p0, Lcom/cooliris/media/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    sub-float/2addr v11, v12

    invoke-virtual {v7, v8, v10, v11}, Lcom/cooliris/media/HighlightView;->handleMotion(IFF)V

    .line 1614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    .line 1623
    iget-object v7, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    invoke-direct {p0, v7}, Lcom/cooliris/media/CropImageView;->ensureVisible(Lcom/cooliris/media/HighlightView;)V

    goto/16 :goto_17

    .line 1631
    :pswitch_101
    invoke-virtual {p0, v9, v9}, Lcom/cooliris/media/CropImageView;->center(ZZ)V

    goto/16 :goto_1e

    .line 1638
    :pswitch_106
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1e

    .line 1639
    invoke-virtual {p0, v9, v9}, Lcom/cooliris/media/CropImageView;->center(ZZ)V

    goto/16 :goto_1e

    .line 1546
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_20
        :pswitch_70
        :pswitch_cc
    .end packed-switch

    .line 1629
    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_101
        :pswitch_106
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .registers 6
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 1503
    invoke-super {p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 1504
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1505
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 1506
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1507
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 1504
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1509
    .end local v0           #hv:Lcom/cooliris/media/HighlightView;
    :cond_1f
    return-void
.end method

.method public setButtonsLayout(Landroid/view/View;)V
    .registers 2
    .parameter "buttonsLayout"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;

    .line 1466
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1481
    return-void
.end method
