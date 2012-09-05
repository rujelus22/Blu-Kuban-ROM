.class public Lcom/arcsoft/widget/BitmapView;
.super Landroid/view/View;
.source "BitmapView.java"


# instance fields
.field private mAlpha:I

.field private mBezierControl1:Landroid/graphics/PointF;

.field private mBezierControl2:Landroid/graphics/PointF;

.field private mBezierEnd1:Landroid/graphics/PointF;

.field private mBezierEnd2:Landroid/graphics/PointF;

.field private mBezierStart1:Landroid/graphics/PointF;

.field private mBezierStart2:Landroid/graphics/PointF;

.field private mBeziervertex1:Landroid/graphics/PointF;

.field private mBeziervertex2:Landroid/graphics/PointF;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCornerPonit:Landroid/graphics/PointF;

.field private mCornerTurnoverPoint:Landroid/graphics/PointF;

.field private mDst:Landroid/graphics/RectF;

.field private mOriDst:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 19
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    .line 20
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    .line 21
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    .line 22
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 24
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    .line 25
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    .line 26
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    .line 27
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    .line 29
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    .line 30
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    .line 31
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    .line 32
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    .line 33
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lcom/arcsoft/widget/BitmapView;->mAlpha:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 19
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    .line 20
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    .line 21
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    .line 22
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 24
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    .line 25
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    .line 26
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    .line 27
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    .line 29
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    .line 30
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    .line 31
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    .line 32
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    .line 33
    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lcom/arcsoft/widget/BitmapView;->mAlpha:I

    .line 40
    return-void
.end method

.method private getPoint()V
    .registers 11

    .prologue
    const/high16 v9, 0x4040

    const/high16 v8, 0x4000

    .line 106
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/PointF;->x:F

    .line 107
    .local v2, X:F
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v3, v4, Landroid/graphics/PointF;->y:F

    .line 108
    .local v3, Y:F
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget v1, v4, Landroid/graphics/PointF;->x:F

    .line 109
    .local v1, R:F
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget v0, v4, Landroid/graphics/PointF;->y:F

    .line 111
    .local v0, B:F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    .line 112
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    add-float v5, v1, v2

    div-float/2addr v5, v8

    sub-float v6, v0, v3

    sub-float v7, v0, v3

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float v7, v1, v2

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 113
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 114
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    .line 115
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v9

    sub-float/2addr v5, v1

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 116
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 117
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    .line 118
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v2

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 119
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 120
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    .line 121
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 122
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 124
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    .line 125
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 126
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    add-float v5, v0, v3

    div-float/2addr v5, v8

    sub-float v6, v1, v2

    sub-float v7, v1, v2

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float v7, v0, v3

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 127
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    .line 128
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 129
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v9

    sub-float/2addr v5, v0

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 130
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    .line 131
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v2

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 132
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 133
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    .line 134
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 135
    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 136
    return-void
.end method

.method private turnoverCornerAnimation(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 66
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    if-nez v3, :cond_5

    .line 102
    :goto_4
    return-void

    .line 69
    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v0, mPaint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 71
    .local v1, mPath:Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 73
    .local v2, mPath1:Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/arcsoft/widget/BitmapView;->getPoint()V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 76
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 79
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 81
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierEnd2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBezierControl2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/arcsoft/widget/BitmapView;->mBezierStart2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 84
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/arcsoft/widget/BitmapView;->mBeziervertex2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 96
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 98
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4
.end method


# virtual methods
.method public getBitmapAlpha()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/arcsoft/widget/BitmapView;->mAlpha:I

    return v0
.end method

.method public getCornerPoint()Landroid/graphics/PointF;
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    .line 187
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 190
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 192
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerPonit:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOriDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 62
    :goto_7
    return-void

    .line 54
    :cond_8
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_13

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 56
    :cond_13
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 57
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/arcsoft/widget/BitmapView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/BitmapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/BitmapView;->turnoverCornerAnimation(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    goto :goto_7
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p1, :cond_4

    .line 150
    :goto_3
    return-void

    .line 141
    :cond_4
    iput-object p1, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    .line 145
    :cond_11
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 146
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 147
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 148
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method public setBitmapAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 168
    iput p1, p0, Lcom/arcsoft/widget/BitmapView;->mAlpha:I

    .line 169
    return-void
.end method

.method public setCornerTurnoverPoint(Landroid/graphics/PointF;)V
    .registers 4
    .parameter "point"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    .line 197
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    .line 199
    :cond_b
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 200
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mCornerTurnoverPoint:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 201
    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;)V
    .registers 4
    .parameter "dst"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 154
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 155
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 156
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 157
    return-void
.end method

.method public setOriDisplayRect(Landroid/graphics/RectF;)V
    .registers 4
    .parameter "dst"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    .line 173
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    if-nez v0, :cond_1b

    .line 177
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    .line 178
    :cond_1b
    iget-object v0, p0, Lcom/arcsoft/widget/BitmapView;->mDst:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/arcsoft/widget/BitmapView;->mOriDst:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 179
    return-void
.end method
