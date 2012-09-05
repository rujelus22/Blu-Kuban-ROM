.class public Lbm/a;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lbn/b;

.field private final s:Lbm/b;

.field private t:F

.field private u:Z

.field private v:Z

.field private final w:Lbn/b;

.field private x:F

.field private y:Z

.field private final z:Lbn/b;


# direct methods
.method public constructor <init>(Lbm/b;IILandroid/graphics/Bitmap;)V
    .registers 12

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x437f

    iput v0, p0, Lbm/a;->l:F

    iput v1, p0, Lbm/a;->q:I

    iput-boolean v1, p0, Lbm/a;->u:Z

    iput-boolean v1, p0, Lbm/a;->v:Z

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbm/a;->w:Lbn/b;

    iput v4, p0, Lbm/a;->x:F

    iput-boolean v1, p0, Lbm/a;->y:Z

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbm/a;->z:Lbn/b;

    const/16 v0, 0x32

    iput v0, p0, Lbm/a;->A:I

    iput-boolean v1, p0, Lbm/a;->B:Z

    iput-boolean v1, p0, Lbm/a;->C:Z

    iput v1, p0, Lbm/a;->D:I

    iput v1, p0, Lbm/a;->E:I

    iput-object p1, p0, Lbm/a;->s:Lbm/b;

    iput p2, p0, Lbm/a;->a:I

    iput p3, p0, Lbm/a;->b:I

    int-to-float v0, p2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbm/a;->c:I

    iput-object p4, p0, Lbm/a;->d:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lbm/a;->p:I

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbm/a;->r:Lbn/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbm/a;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lbm/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbm/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0, v6}, Lbn/b;->a(I)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0, v4}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0, v4}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0, v6}, Lbn/b;->a(I)V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0, v4}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0, v4}, Lbn/b;->b(F)V

    return-void
.end method

.method private f()V
    .registers 7

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    const/high16 v0, 0x40c0

    invoke-static {v2, v0}, Lbn/c;->a(FF)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v2, v0, v2

    if-lez v2, :cond_29

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_29

    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lbn/c;->a(FF)F

    move-result v0

    iput v0, p0, Lbm/a;->k:F

    iget v0, p0, Lbm/a;->a:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->j:F

    :goto_28
    return-void

    :cond_29
    cmpl-float v2, v0, v4

    if-lez v2, :cond_47

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_47

    iget v0, p0, Lbm/a;->b:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lbn/c;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lbm/a;->k:F

    iget v0, p0, Lbm/a;->a:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->j:F

    goto :goto_28

    :cond_47
    cmpl-float v2, v0, v3

    if-lez v2, :cond_61

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_61

    iget v0, p0, Lbm/a;->b:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->k:F

    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lbn/c;->a(FF)F

    move-result v0

    iput v0, p0, Lbm/a;->j:F

    goto :goto_28

    :cond_61
    cmpl-float v2, v0, v5

    if-lez v2, :cond_81

    const/high16 v2, 0x4080

    cmpg-float v0, v0, v2

    if-gez v0, :cond_81

    iget v0, p0, Lbm/a;->b:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->k:F

    iget v0, p0, Lbm/a;->a:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lbn/c;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lbm/a;->j:F

    goto :goto_28

    :cond_81
    iget v0, p0, Lbm/a;->a:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->j:F

    iget v0, p0, Lbm/a;->b:I

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v0

    iput v0, p0, Lbm/a;->k:F

    goto :goto_28
.end method


# virtual methods
.method a()V
    .registers 10

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4024

    const/16 v1, 0xff

    iget-boolean v0, p0, Lbm/a;->v:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Lbm/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-direct {p0}, Lbm/a;->f()V

    const-wide v0, 0x3fe999999999999aL

    const-wide v2, 0x3ff3333333333333L

    invoke-static {v0, v1, v2, v3}, Lbn/c;->a(DD)F

    move-result v0

    iput v0, p0, Lbm/a;->t:F

    iput v6, p0, Lbm/a;->g:F

    const/high16 v0, 0x3e80

    const/4 v1, 0x1

    invoke-static {v1}, Lbn/c;->a(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    iput v0, p0, Lbm/a;->h:F

    iget v0, p0, Lbm/a;->j:F

    iget v1, p0, Lbm/a;->k:F

    iget-object v2, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v2}, Lbm/b;->b()F

    move-result v2

    iget-object v3, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v3}, Lbm/b;->c()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lbn/c;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Lbm/a;->f:F

    iput v8, p0, Lbm/a;->n:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x406f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xfa

    iput v0, p0, Lbm/a;->o:I

    new-instance v0, Lbn/b;

    invoke-direct {v0}, Lbn/b;-><init>()V

    iput-object v0, p0, Lbm/a;->r:Lbn/b;

    iget-object v0, p0, Lbm/a;->r:Lbn/b;

    invoke-virtual {v0, v6}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbm/a;->r:Lbn/b;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbm/a;->r:Lbn/b;

    iget v1, p0, Lbm/a;->o:I

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    iput v7, p0, Lbm/a;->l:F

    const/high16 v0, 0x4120

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lbm/a;->m:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v7

    iput v0, p0, Lbm/a;->i:F

    iput-boolean v8, p0, Lbm/a;->u:Z

    :goto_94
    return-void

    :cond_95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm/a;->u:Z

    goto :goto_94
.end method

.method public a(F)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lbm/a;->y:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0, v2}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    iget v1, p0, Lbm/a;->x:F

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    const/high16 v0, 0x41a0

    const/high16 v1, 0x41f0

    invoke-static {v0, v1}, Lbn/c;->a(FF)F

    move-result v0

    iput v0, p0, Lbm/a;->x:F

    iput-boolean v3, p0, Lbm/a;->y:Z

    :cond_24
    iget-boolean v0, p0, Lbm/a;->B:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lbm/a;->C:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0, v2}, Lbn/b;->a(F)V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lbn/b;->a(I)V

    const/high16 v0, 0x4100

    div-float v0, p1, v0

    const/high16 v1, 0x42f0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lbm/a;->A:I

    invoke-static {}, Lbn/c;->a()I

    move-result v0

    iput v0, p0, Lbm/a;->E:I

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    iget v1, p0, Lbm/a;->A:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lbn/b;->b(F)V

    iput-boolean v3, p0, Lbm/a;->B:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm/a;->C:Z

    :cond_58
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9

    const/high16 v5, 0x41a0

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lbm/a;->j:F

    iget-object v1, p0, Lbm/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lbm/a;->k:F

    iget-object v2, p0, Lbm/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lbm/a;->E:I

    iget v1, p0, Lbm/a;->D:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->b()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lbm/a;->E:I

    iget v2, p0, Lbm/a;->D:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v2}, Lbn/b;->b()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbm/a;->r:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbm/a;->r:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->c()F

    move-result v0

    iget-object v1, p0, Lbm/a;->r:Lbn/b;

    invoke-virtual {v1}, Lbn/b;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v0, p0, Lbm/a;->l:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lbm/a;->l:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_80

    iget-object v0, p0, Lbm/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method a([[Lbm/c;F)V
    .registers 16

    const-wide/high16 v11, 0x4008

    const/16 v10, 0xff

    const/high16 v9, 0x3fc0

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lbm/a;->p:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbm/a;->p:I

    if-lez v0, :cond_1f9

    iget-boolean v0, p0, Lbm/a;->u:Z

    if-nez v0, :cond_1f9

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->a()V

    iget v0, p0, Lbm/a;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbm/a;->D:I

    iget-boolean v0, p0, Lbm/a;->y:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget v2, p0, Lbm/a;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iput-boolean v1, p0, Lbm/a;->y:Z

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v0, v8}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbm/a;->w:Lbn/b;

    const/high16 v2, 0x41f0

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Lbn/c;->a(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lbn/b;->a(I)V

    :cond_49
    iget-boolean v0, p0, Lbm/a;->B:Z

    if-eqz v0, :cond_132

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    iget v2, p0, Lbm/a;->A:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_72

    iput-boolean v1, p0, Lbm/a;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm/a;->C:Z

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0, v8}, Lbn/b;->b(F)V

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    const/high16 v2, 0x41f0

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Lbn/c;->a(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lbn/b;->a(I)V

    :cond_72
    :goto_72
    iget v0, p0, Lbm/a;->g:F

    float-to-double v2, v0

    iget v0, p0, Lbm/a;->h:F

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL

    sub-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_8f

    iget v0, p0, Lbm/a;->g:F

    iget v2, p0, Lbm/a;->h:F

    iget v3, p0, Lbm/a;->g:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4270

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lbm/a;->g:F

    :cond_8f
    iget v0, p0, Lbm/a;->n:I

    if-ge v0, v10, :cond_144

    iget v0, p0, Lbm/a;->l:F

    float-to-double v2, v0

    const-wide v4, 0x3ff199999999999aL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lbm/a;->l:F

    const/high16 v0, 0x437f

    iget v2, p0, Lbm/a;->l:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lbm/a;->l:F

    :cond_a9
    :goto_a9
    iget v0, p0, Lbm/a;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17f

    move v0, v1

    :goto_b0
    iget v2, p0, Lbm/a;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    if-ge v0, v2, :cond_17f

    move v2, v1

    :goto_bd
    iget v3, p0, Lbm/a;->a:I

    iget v4, p0, Lbm/a;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    if-ge v2, v3, :cond_17b

    iget v3, p0, Lbm/a;->j:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12f

    iget v3, p0, Lbm/a;->j:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12f

    iget v3, p0, Lbm/a;->k:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12f

    iget v3, p0, Lbm/a;->k:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12f

    iget v3, p0, Lbm/a;->j:F

    iget v4, p0, Lbm/a;->k:F

    int-to-float v5, v2

    mul-float/2addr v5, p2

    int-to-float v6, v0

    mul-float/2addr v6, p2

    invoke-static {v3, v4, v5, v6}, Lbn/c;->b(FFFF)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_12f

    aget-object v3, p1, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lbm/c;->a()F

    move-result v3

    iget v4, p0, Lbm/a;->f:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x40069e955b62f741L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_12f

    iget v3, p0, Lbm/a;->f:F

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lbm/c;->a()F

    move-result v4

    iget v5, p0, Lbm/a;->f:F

    sub-float/2addr v4, v5

    iget v5, p0, Lbm/a;->i:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lbm/a;->f:F

    :cond_12f
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_132
    iget-boolean v0, p0, Lbm/a;->C:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lbm/a;->z:Lbn/b;

    invoke-virtual {v0}, Lbn/b;->b()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_72

    iput-boolean v1, p0, Lbm/a;->C:Z

    goto/16 :goto_72

    :cond_144
    iget v0, p0, Lbm/a;->n:I

    iget v2, p0, Lbm/a;->o:I

    add-int/lit8 v2, v2, -0x64

    if-le v0, v2, :cond_16e

    iget v0, p0, Lbm/a;->l:F

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lbm/a;->l:F

    iget v0, p0, Lbm/a;->m:F

    float-to-double v2, v0

    const-wide v4, 0x3fefae147ae147aeL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lbm/a;->m:F

    iget v0, p0, Lbm/a;->m:F

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lbm/a;->m:F

    goto/16 :goto_a9

    :cond_16e
    iget v0, p0, Lbm/a;->n:I

    iget v2, p0, Lbm/a;->o:I

    if-le v0, v2, :cond_a9

    iget-object v0, p0, Lbm/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v10, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_a9

    :cond_17b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b0

    :cond_17f
    iget v0, p0, Lbm/a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbm/a;->q:I

    iget v0, p0, Lbm/a;->j:F

    float-to-double v0, v0

    iget v2, p0, Lbm/a;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lbm/a;->g:F

    iget-object v5, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v5}, Lbn/b;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lbm/a;->j:F

    iget v0, p0, Lbm/a;->k:F

    float-to-double v0, v0

    iget v2, p0, Lbm/a;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lbm/a;->g:F

    iget-object v5, p0, Lbm/a;->w:Lbn/b;

    invoke-virtual {v5}, Lbn/b;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lbm/a;->k:F

    iget-object v0, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v0}, Lbm/b;->b()F

    move-result v0

    iget-object v1, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v1}, Lbm/b;->c()F

    move-result v1

    iget v2, p0, Lbm/a;->j:F

    iget v3, p0, Lbm/a;->k:F

    invoke-static {v0, v1, v2, v3}, Lbn/c;->b(FFFF)F

    move-result v0

    iget-object v1, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v1}, Lbm/b;->d()F

    move-result v1

    iget v2, p0, Lbm/a;->t:F

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1f9

    iget v1, p0, Lbm/a;->g:F

    float-to-double v1, v1

    const-wide v3, 0x3fee666666666666L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lbm/a;->g:F

    iget-object v1, p0, Lbm/a;->s:Lbm/b;

    invoke-virtual {v1}, Lbm/b;->e()F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f9

    iget v0, p0, Lbm/a;->n:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lbm/a;->n:I

    :cond_1f9
    iget v0, p0, Lbm/a;->n:I

    iget v1, p0, Lbm/a;->o:I

    if-le v0, v1, :cond_202

    invoke-virtual {p0}, Lbm/a;->a()V

    :cond_202
    iget v0, p0, Lbm/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbm/a;->n:I

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lbm/a;->v:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lbm/a;->u:Z

    return v0
.end method

.method public d()V
    .registers 5

    iget-boolean v0, p0, Lbm/a;->v:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm/a;->v:Z

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lbm/a;->p:I

    invoke-virtual {p0}, Lbm/a;->a()V

    :cond_17
    return-void
.end method

.method public e()V
    .registers 2

    iget-boolean v0, p0, Lbm/a;->v:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm/a;->v:Z

    :cond_7
    return-void
.end method
