.class public LEo;
.super Ljava/lang/Object;
.source "CellView.java"


# instance fields
.field private a:D

.field private a:F

.field private a:I

.field private a:Landroid/graphics/Bitmap;

.field private a:Ljava/lang/String;

.field private b:D

.field private b:F

.field private b:I

.field private c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 116
    invoke-virtual {p5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {p0}, LEo;->a()I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 119
    int-to-double v1, p1

    iget-wide v3, p0, LEo;->a:D

    float-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v2, p2

    iget-wide v4, p0, LEo;->b:D

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    invoke-virtual {p4, v0, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, LEo;->a:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 122
    iget v0, p0, LEo;->a:F

    mul-float/2addr v0, p3

    .line 123
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40c0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_53

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    invoke-virtual {p0}, LEo;->b()I

    move-result v1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    invoke-virtual {p0}, LEo;->a()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    iget v3, p0, LEo;->b:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    :cond_53
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, LEo;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LEo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, LEo;->a:Landroid/graphics/Bitmap;

    .line 110
    iput p3, p0, LEo;->c:F

    .line 111
    invoke-direct/range {p0 .. p5}, LEo;->b(IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, LEo;->b:I

    return v0
.end method
