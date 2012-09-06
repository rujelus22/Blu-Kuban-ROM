.class LaX/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbb/f;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:Lbb/f;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Lbb/b;


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Lbb/f;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v5, 0x3fe0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, LaX/a;->c:I

    .line 29
    iput p2, p0, LaX/a;->d:I

    .line 30
    iput-object p3, p0, LaX/a;->b:Landroid/graphics/Paint;

    .line 31
    iput-object p4, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    .line 32
    new-instance v0, Lbb/f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p5, Lbb/f;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p5, Lbb/f;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lbb/f;-><init>(DD)V

    iput-object v0, p0, LaX/a;->e:Lbb/f;

    .line 33
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, LaX/a;->g:Lbb/b;

    .line 34
    new-instance v0, Lbb/f;

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbb/f;-><init>(FF)V

    iput-object v0, p0, LaX/a;->a:Lbb/f;

    .line 38
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->a(F)V

    .line 39
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 40
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 53
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4120

    const/high16 v3, 0x4000

    .line 56
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 57
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v1, v0, Lbb/f;->a:F

    iget-object v2, p0, LaX/a;->e:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->a:F

    .line 58
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v1, v0, Lbb/f;->b:F

    iget-object v2, p0, LaX/a;->e:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    .line 61
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget v1, p0, LaX/a;->c:I

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ad

    .line 62
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lbb/f;->a:F

    .line 68
    :cond_3f
    :goto_3f
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    iget v1, p0, LaX/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cd

    .line 69
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Lbb/f;->b:F

    .line 74
    :cond_60
    :goto_60
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ac

    .line 75
    iget-object v0, p0, LaX/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaX/a;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget-object v1, p0, LaX/a;->g:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 79
    iget-object v0, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, LaX/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    :cond_ac
    return-void

    .line 63
    :cond_ad
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 64
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v1, p0, LaX/a;->c:I

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lbb/f;->a:F

    goto/16 :goto_3f

    .line 70
    :cond_cd
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    iget-object v1, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_60

    .line 71
    iget-object v0, p0, LaX/a;->a:Lbb/f;

    iget v1, p0, LaX/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, LaX/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    goto/16 :goto_60
.end method

.method public a(Lbb/f;)V
    .registers 9
    .parameter

    .prologue
    const-wide/high16 v5, 0x3fe0

    .line 46
    iget-object v0, p0, LaX/a;->e:Lbb/f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p1, Lbb/f;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p1, Lbb/f;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lbb/f;->a(DD)V

    .line 47
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 48
    iget-object v0, p0, LaX/a;->g:Lbb/b;

    const-wide/high16 v1, 0x402e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4039

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 49
    return-void
.end method
