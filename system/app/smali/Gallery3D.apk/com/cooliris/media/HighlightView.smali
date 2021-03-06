.class Lcom/cooliris/media/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/HighlightView$ModifyMode;
    }
.end annotation


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 378
    sget-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

    .line 388
    iput-boolean v1, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    .line 392
    iput-boolean v1, p0, Lcom/cooliris/media/HighlightView;->mCircle:Z

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 402
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 404
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 55
    iput-object p1, p0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    .line 56
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/high16 v5, 0x3f80

    .line 338
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 340
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 341
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, resources:Landroid/content/res/Resources;
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 62
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 63
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .registers 31
    .parameter "canvas"

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/HighlightView;->mHidden:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-void

    .line 86
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 88
    .local v12, path:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v23

    if-nez v23, :cond_38

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/high16 v24, -0x100

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 92
    :cond_38
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v15, viewDrawingRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1ac

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    .line 96
    .local v16, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v8, v0

    .line 97
    .local v8, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v16, v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v25, v8, v25

    add-float v24, v24, v25

    const/high16 v25, 0x4000

    div-float v25, v16, v25

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const v24, -0x10fb2a

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .end local v8           #height:F
    .end local v16           #width:F
    :goto_b7
    :try_start_b7
    sget-object v23, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c0} :catch_1ce

    .line 109
    :goto_c0
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v23

    if-eqz v23, :cond_1d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_cc
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

    move-object/from16 v23, v0

    sget-object v24, Lcom/cooliris/media/HighlightView$ModifyMode;->Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/HighlightView;->mCircle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1dc

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 117
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 119
    .local v8, height:I
    const-wide v23, 0x3fe921fb54442d18L

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v6, v0

    .line 121
    .local v6, d:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    add-int v23, v23, v6

    div-int/lit8 v24, v16, 0x2

    sub-int v19, v23, v24

    .line 122
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    sub-int v23, v23, v6

    div-int/lit8 v24, v8, 0x2

    sub-int v21, v23, v24

    .line 123
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    add-int v25, v25, v21

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 101
    .end local v6           #d:I
    .end local v8           #height:I
    .end local v16           #width:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_1ac
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const v24, -0xeaab6a

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b7

    .line 106
    :catch_1ce
    move-exception v7

    .line 107
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c0

    .line 109
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_cc

    .line 128
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int/lit8 v11, v23, 0x1

    .line 129
    .local v11, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    .line 130
    .local v13, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int/lit8 v14, v23, 0x4

    .line 131
    .local v14, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int/lit8 v5, v23, 0x3

    .line 133
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v18, v23, 0x4

    .line 134
    .local v18, widthWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v17, v23, 0x4

    .line 135
    .local v17, widthHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    div-int/lit8 v9, v23, 0x4

    .line 136
    .local v9, heightHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v10, v23, 0x4

    .line 138
    .local v10, heightWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v20, v23, v24

    .line 139
    .local v20, xMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 141
    .local v22, yMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v11, v18

    add-int/lit8 v24, v24, -0x1

    sub-int v25, v22, v17

    add-int v26, v11, v18

    add-int/lit8 v26, v26, -0x1

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v13, v18

    sub-int v25, v22, v17

    add-int v26, v13, v18

    add-int v27, v22, v17

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v14, v9

    add-int/lit8 v25, v25, -0x1

    add-int v26, v20, v10

    add-int v27, v14, v9

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v10

    sub-int v25, v5, v9

    add-int v26, v20, v10

    add-int v27, v5, v9

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 332
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 171
    .local v6, r:Landroid/graphics/Rect;
    const/high16 v5, 0x41a0

    .line 172
    .local v5, hysteresis:F
    const/4 v8, 0x1

    .line 174
    .local v8, retval:I
    iget-boolean v10, p0, Lcom/cooliris/media/HighlightView;->mCircle:Z

    if-eqz v10, :cond_60

    .line 175
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 176
    .local v1, distX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 177
    .local v2, distY:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 178
    .local v3, distanceFromCenter:I
    iget-object v10, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 179
    .local v7, radius:I
    sub-int v0, v3, v7

    .line 180
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_59

    .line 181
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_50

    .line 182
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4d

    .line 183
    const/16 v8, 0x8

    .line 224
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_4c
    :goto_4c
    return v8

    .line 185
    .restart local v0       #delta:I
    .restart local v1       #distX:F
    .restart local v2       #distY:F
    .restart local v3       #distanceFromCenter:I
    .restart local v7       #radius:I
    :cond_4d
    const/16 v8, 0x10

    goto :goto_4c

    .line 188
    :cond_50
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_57

    .line 189
    const/4 v8, 0x2

    goto :goto_4c

    .line 191
    :cond_57
    const/4 v8, 0x4

    goto :goto_4c

    .line 194
    :cond_59
    if-ge v3, v7, :cond_5e

    .line 195
    const/16 v8, 0x20

    goto :goto_4c

    .line 197
    :cond_5e
    const/4 v8, 0x1

    goto :goto_4c

    .line 202
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_60
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_e1

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_e1

    const/4 v9, 0x1

    .line 203
    .local v9, verticalCheck:Z
    :goto_75
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_e3

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_e3

    const/4 v4, 0x1

    .line 206
    .local v4, horizCheck:Z
    :goto_8a
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9c

    if-eqz v9, :cond_9c

    .line 207
    or-int/lit8 v8, v8, 0x2

    .line 209
    :cond_9c
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_ae

    if-eqz v9, :cond_ae

    .line 210
    or-int/lit8 v8, v8, 0x4

    .line 212
    :cond_ae
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c0

    if-eqz v4, :cond_c0

    .line 213
    or-int/lit8 v8, v8, 0x8

    .line 215
    :cond_c0
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d2

    if-eqz v4, :cond_d2

    .line 216
    or-int/lit8 v8, v8, 0x10

    .line 220
    :cond_d2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4c

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 221
    const/16 v8, 0x20

    goto/16 :goto_4c

    .line 202
    .end local v4           #horizCheck:Z
    .end local v9           #verticalCheck:Z
    :cond_e1
    const/4 v9, 0x0

    goto :goto_75

    .line 203
    .restart local v9       #verticalCheck:Z
    :cond_e3
    const/4 v4, 0x0

    goto :goto_8a
.end method

.method growBy(FF)V
    .registers 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 274
    iget-boolean v4, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_11

    .line 275
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_db

    .line 276
    iget v4, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 285
    :cond_11
    :goto_11
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 286
    .local v2, r:Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_43

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    .line 287
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 288
    .local v0, adjustment:F
    move p1, v0

    .line 289
    iget-boolean v4, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_43

    .line 290
    iget v4, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 293
    .end local v0           #adjustment:F
    :cond_43
    cmpl-float v4, p2, v6

    if-lez v4, :cond_6e

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 294
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 295
    .restart local v0       #adjustment:F
    move p2, v0

    .line 296
    iget-boolean v4, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_6e

    .line 297
    iget v4, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 301
    .end local v0           #adjustment:F
    :cond_6e
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 304
    const/high16 v3, 0x41c8

    .line 305
    .local v3, widthCap:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_88

    .line 306
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 308
    :cond_88
    iget-boolean v4, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_8f

    iget v4, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 309
    .local v1, heightCap:F
    :cond_8f
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a2

    .line 310
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 314
    :cond_a2
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e5

    .line 315
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 319
    :cond_b6
    :goto_b6
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_fb

    .line 320
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    :cond_ca
    :goto_ca
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 326
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 327
    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 328
    return-void

    .line 277
    .end local v1           #heightCap:F
    .end local v2           #r:Landroid/graphics/RectF;
    .end local v3           #widthCap:F
    :cond_db
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_11

    .line 278
    iget v4, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_11

    .line 316
    .restart local v1       #heightCap:F
    .restart local v2       #r:Landroid/graphics/RectF;
    .restart local v3       #widthCap:F
    :cond_e5
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b6

    .line 317
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b6

    .line 321
    :cond_fb
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ca

    .line 322
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_ca
.end method

.method handleMotion(IFF)V
    .registers 11
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 230
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 231
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_9

    .line 251
    :goto_8
    return-void

    .line 233
    :cond_9
    const/16 v5, 0x20

    if-ne p1, v5, :cond_2b

    .line 235
    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/cooliris/media/HighlightView;->moveBy(FF)V

    goto :goto_8

    .line 237
    :cond_2b
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_30

    .line 238
    const/4 p2, 0x0

    .line 241
    :cond_30
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_35

    .line 242
    const/4 p3, 0x0

    .line 246
    :cond_35
    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 247
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 248
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_62

    move v5, v3

    :goto_56
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_64

    :goto_5c
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/cooliris/media/HighlightView;->growBy(FF)V

    goto :goto_8

    :cond_62
    move v5, v4

    goto :goto_56

    :cond_64
    move v3, v4

    goto :goto_5c
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cooliris/media/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 347
    return-void
.end method

.method moveBy(FF)V
    .registers 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 257
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 260
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 263
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 266
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 267
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 268
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 269
    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 270
    return-void
.end method

.method public setFocus(Z)V
    .registers 2
    .parameter "f"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/cooliris/media/HighlightView;->mIsFocused:Z

    .line 76
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .parameter "hidden"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/cooliris/media/HighlightView;->mHidden:Z

    .line 80
    return-void
.end method

.method public setMode(Lcom/cooliris/media/HighlightView$ModifyMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/HighlightView$ModifyMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 163
    iput-object p1, p0, Lcom/cooliris/media/HighlightView;->mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

    .line 164
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 166
    :cond_f
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 10
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "circle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 351
    if-eqz p4, :cond_7

    .line 352
    const/4 p5, 0x1

    .line 354
    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 356
    iput-object p3, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 357
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 358
    iput-boolean p5, p0, Lcom/cooliris/media/HighlightView;->mMaintainAspectRatio:Z

    .line 359
    iput-boolean p4, p0, Lcom/cooliris/media/HighlightView;->mCircle:Z

    .line 361
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/HighlightView;->mInitialAspectRatio:F

    .line 362
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 364
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 365
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 366
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 367
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    iget-object v0, p0, Lcom/cooliris/media/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    sget-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/cooliris/media/HighlightView;->mMode:Lcom/cooliris/media/HighlightView$ModifyMode;

    .line 371
    invoke-direct {p0}, Lcom/cooliris/media/HighlightView;->init()V

    .line 372
    return-void
.end method
