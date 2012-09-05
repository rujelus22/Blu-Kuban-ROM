.class Lbj/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbn/f;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:Lbn/f;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Lbn/b;


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Lbn/f;)V
    .registers 13

    const-wide/high16 v5, 0x3fe0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbj/a;->c:I

    iput p2, p0, Lbj/a;->d:I

    iput-object p3, p0, Lbj/a;->b:Landroid/graphics/Paint;

    iput-object p4, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    new-instance v0, Lbn/f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p5, Lbn/f;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p5, Lbn/f;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lbn/f;-><init>(DD)V

    iput-object v0, p0, Lbj/a;->e:Lbn/f;

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbj/a;->g:Lbn/b;

    new-instance v0, Lbn/f;

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbn/f;-><init>(FF)V

    iput-object v0, p0, Lbj/a;->a:Lbn/f;

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 8

    const/high16 v4, 0x4120

    const/high16 v3, 0x4000

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v1, v0, Lbn/f;->a:F

    iget-object v2, p0, Lbj/a;->e:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->a:F

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v1, v0, Lbn/f;->b:F

    iget-object v2, p0, Lbj/a;->e:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget v1, p0, Lbj/a;->c:I

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ad

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lbn/f;->a:F

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    iget v1, p0, Lbj/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cd

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Lbn/f;->b:F

    :cond_60
    :goto_60
    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ac

    iget-object v0, p0, Lbj/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbj/a;->a:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget-object v1, p0, Lbj/a;->g:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lbj/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ac
    return-void

    :cond_ad
    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v1, p0, Lbj/a;->c:I

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lbn/f;->a:F

    goto/16 :goto_3f

    :cond_cd
    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    iget-object v1, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_60

    iget-object v0, p0, Lbj/a;->a:Lbn/f;

    iget v1, p0, Lbj/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lbj/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    goto/16 :goto_60
.end method

.method public a(Lbn/f;)V
    .registers 9

    const-wide/high16 v5, 0x3fe0

    iget-object v0, p0, Lbj/a;->e:Lbn/f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p1, Lbn/f;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p1, Lbn/f;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lbn/f;->a(DD)V

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbj/a;->g:Lbn/b;

    const-wide/high16 v1, 0x402e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4039

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    return-void
.end method
