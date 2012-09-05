.class public Lbi/a;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private final b:Lbn/f;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Lbi/b;

.field private final j:Lbn/b;

.field private final k:Lbn/b;

.field private l:Lbn/f;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Lbi/c;

.field private r:Lbi/e;


# direct methods
.method public constructor <init>(Lbi/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lbi/c;Lbn/f;Landroid/graphics/Bitmap;Z)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xff

    iput v1, p0, Lbi/a;->o:I

    iput-object p1, p0, Lbi/a;->i:Lbi/b;

    iput p2, p0, Lbi/a;->d:I

    iput p3, p0, Lbi/a;->e:I

    iput-object p4, p0, Lbi/a;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p5, p0, Lbi/a;->f:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lbi/a;->g:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lbi/a;->q:Lbi/c;

    invoke-direct {p0}, Lbi/a;->c()V

    new-instance v1, Lbn/f;

    const-wide/high16 v2, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object/from16 v0, p8

    iget v4, v0, Lbn/f;->a:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object/from16 v0, p8

    iget v6, v0, Lbn/f;->b:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lbn/f;-><init>(DD)V

    iput-object v1, p0, Lbi/a;->l:Lbn/f;

    move-object/from16 v0, p9

    iput-object v0, p0, Lbi/a;->h:Landroid/graphics/Bitmap;

    move/from16 v0, p10

    iput-boolean v0, p0, Lbi/a;->n:Z

    new-instance v1, Lbn/b;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Lbn/b;-><init>(F)V

    iput-object v1, p0, Lbi/a;->j:Lbn/b;

    new-instance v1, Lbn/b;

    invoke-direct {v1}, Lbn/b;-><init>()V

    iput-object v1, p0, Lbi/a;->k:Lbn/b;

    new-instance v1, Lbn/f;

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v6, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p3

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lbn/f;-><init>(FF)V

    iput-object v1, p0, Lbi/a;->b:Lbn/f;

    iget-object v1, p0, Lbi/a;->j:Lbn/b;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Lbn/b;->a(F)V

    iget-object v1, p0, Lbi/a;->k:Lbn/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbn/b;->a(F)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lbi/a;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    sget-object v0, Lbi/c;->a:Lbi/c;

    iget-object v1, p0, Lbi/a;->q:Lbi/c;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lbi/a;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    :cond_e
    return-void
.end method


# virtual methods
.method public a()Lbi/c;
    .registers 2

    iget-object v0, p0, Lbi/a;->q:Lbi/c;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 11

    const/4 v7, 0x0

    const/high16 v3, 0x4120

    const v6, 0x3f733333

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    iget-object v0, p0, Lbi/a;->j:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbi/a;->k:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v1, v0, Lbn/f;->a:F

    iget-object v2, p0, Lbi/a;->l:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->a:F

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v1, v0, Lbn/f;->b:F

    iget-object v2, p0, Lbi/a;->l:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget v1, p0, Lbi/a;->d:I

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_120

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget-object v1, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lbn/f;->a:F

    :cond_49
    :goto_49
    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    iget v1, p0, Lbi/a;->e:I

    int-to-float v1, v1

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_140

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget-object v1, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v0, Lbn/f;->b:F

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lbi/a;->k:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbi/a;->b:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbi/a;->j:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget-object v1, p0, Lbi/a;->j:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iget-boolean v1, p0, Lbi/a;->n:Z

    if-eqz v1, :cond_b2

    float-to-double v0, v0

    const-wide v2, 0x3feff7ced916872bL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b2

    iget-boolean v0, p0, Lbi/a;->p:Z

    if-nez v0, :cond_b2

    const/16 v0, 0xc8

    iput v0, p0, Lbi/a;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbi/a;->p:Z

    :cond_b2
    iget v0, p0, Lbi/a;->o:I

    int-to-float v0, v0

    iget-object v1, p0, Lbi/a;->r:Lbi/e;

    invoke-virtual {v1}, Lbi/e;->a()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbi/a;->o:I

    iget v0, p0, Lbi/a;->o:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c9

    iput v7, p0, Lbi/a;->o:I

    iput-boolean v7, p0, Lbi/a;->p:Z

    :cond_c9
    iget-boolean v0, p0, Lbi/a;->p:Z

    if-eqz v0, :cond_f4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v0, 0x3f666666

    iget-object v1, p0, Lbi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lbi/a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lbi/a;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lbi/a;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbi/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f4
    iget-object v0, p0, Lbi/a;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lbi/a;->k:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lbi/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11f
    return-void

    :cond_120
    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v1, p0, Lbi/a;->d:I

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lbn/f;->a:F

    goto/16 :goto_49

    :cond_140
    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    iget-object v1, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6a

    iget-object v0, p0, Lbi/a;->b:Lbn/f;

    iget v1, p0, Lbi/a;->e:I

    int-to-float v1, v1

    iget-object v2, p0, Lbi/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    goto/16 :goto_6a
.end method

.method public a(Lbn/f;Lbi/c;Lbi/e;Z)V
    .registers 12

    const-wide/high16 v5, 0x3fe0

    iget-object v0, p0, Lbi/a;->l:Lbn/f;

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

    iput-boolean p4, p0, Lbi/a;->n:Z

    iput-object p2, p0, Lbi/a;->q:Lbi/c;

    iput-object p3, p0, Lbi/a;->r:Lbi/e;

    invoke-direct {p0}, Lbi/a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbi/a;->a:Z

    iget-object v0, p0, Lbi/a;->j:Lbn/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbi/a;->j:Lbn/b;

    const-wide/high16 v1, 0x4020

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    iget-object v0, p0, Lbi/a;->k:Lbn/b;

    const/high16 v1, 0x437f

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbi/a;->k:Lbn/b;

    iget-object v1, p0, Lbi/a;->j:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbi/a;->a:Z

    iget-object v0, p0, Lbi/a;->j:Lbn/b;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbi/a;->k:Lbn/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    return-void
.end method
