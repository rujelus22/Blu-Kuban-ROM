.class public Lbl/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbn/f;

.field private final b:Lbn/f;

.field private final c:Lbn/f;

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:I

.field private final g:Lbl/d;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Lbn/f;

.field private p:F

.field private q:I

.field private r:[Lbn/f;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(IILbn/f;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbn/f;

    invoke-direct {v0}, Lbn/f;-><init>()V

    iput-object v0, p0, Lbl/b;->a:Lbn/f;

    new-instance v0, Lbn/f;

    invoke-direct {v0}, Lbn/f;-><init>()V

    iput-object v0, p0, Lbl/b;->b:Lbn/f;

    new-instance v0, Lbn/f;

    invoke-direct {v0}, Lbn/f;-><init>()V

    iput-object v0, p0, Lbl/b;->c:Lbn/f;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbl/b;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lbl/b;->l:F

    const/4 v0, 0x4

    iput v0, p0, Lbl/b;->q:I

    iput-boolean v2, p0, Lbl/b;->u:Z

    iput-boolean v2, p0, Lbl/b;->v:Z

    iput-boolean v2, p0, Lbl/b;->w:Z

    iput p1, p0, Lbl/b;->e:I

    iput p2, p0, Lbl/b;->f:I

    iput-object p3, p0, Lbl/b;->o:Lbn/f;

    iget-object v0, p0, Lbl/b;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lbl/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lbl/d;

    invoke-direct {v0}, Lbl/d;-><init>()V

    iput-object v0, p0, Lbl/b;->g:Lbl/d;

    iput v2, p0, Lbl/b;->s:I

    invoke-direct {p0}, Lbl/b;->f()I

    move-result v0

    iput v0, p0, Lbl/b;->t:I

    invoke-direct {p0}, Lbl/b;->g()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lbl/b;->w:Z

    if-nez v1, :cond_93

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0xff

    const/16 v3, 0xa9

    const/16 v4, 0xd8

    const/16 v5, 0xf0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget v1, p0, Lbl/b;->q:I

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-lez v1, :cond_3f

    iget-object v3, p0, Lbl/b;->r:[Lbn/f;

    aget-object v3, v3, v1

    iget-object v4, p0, Lbl/b;->r:[Lbn/f;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lbn/f;->a:F

    iput v4, v3, Lbn/f;->a:F

    iget-object v3, p0, Lbl/b;->r:[Lbn/f;

    aget-object v3, v3, v1

    iget-object v4, p0, Lbl/b;->r:[Lbn/f;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lbn/f;->b:F

    iput v4, v3, Lbn/f;->b:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_3f
    iget-object v1, p0, Lbl/b;->r:[Lbn/f;

    aget-object v1, v1, v0

    iget-object v3, p0, Lbl/b;->b:Lbn/f;

    iget v3, v3, Lbn/f;->a:F

    iput v3, v1, Lbn/f;->a:F

    iget-object v1, p0, Lbl/b;->r:[Lbn/f;

    aget-object v1, v1, v0

    iget-object v3, p0, Lbl/b;->b:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    iput v3, v1, Lbn/f;->b:F

    iget v1, p0, Lbl/b;->l:F

    const/high16 v3, 0x4120

    cmpl-float v1, v1, v3

    if-lez v1, :cond_93

    iget v1, p0, Lbl/b;->n:F

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lbl/b;->k:F

    :goto_63
    iget v3, p0, Lbl/b;->q:I

    if-ge v0, v3, :cond_93

    const/4 v3, 0x0

    iget v4, p0, Lbl/b;->n:F

    mul-int/lit8 v5, v0, 0x1e

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lbl/b;->r:[Lbn/f;

    aget-object v3, v3, v0

    iget v3, v3, Lbn/f;->a:F

    iget-object v4, p0, Lbl/b;->r:[Lbn/f;

    aget-object v4, v4, v0

    iget v4, v4, Lbn/f;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v5, v1

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    float-to-double v3, v1

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-float v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_93
    return-void
.end method

.method private b(Lbn/f;)V
    .registers 8

    const/high16 v5, 0x437f

    iget-object v0, p0, Lbl/b;->o:Lbn/f;

    invoke-virtual {v0, p1}, Lbn/f;->a(Lbn/f;)V

    iget-object v0, p0, Lbl/b;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    iget-object v2, p0, Lbl/b;->o:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbl/b;->o:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbn/c;->a(FFFF)F

    move-result v0

    iput v0, p0, Lbl/b;->h:F

    iget-object v0, p0, Lbl/b;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    iget-object v2, p0, Lbl/b;->o:Lbn/f;

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbl/b;->o:Lbn/f;

    iget v3, v3, Lbn/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbn/c;->b(FFFF)F

    move-result v0

    iput v0, p0, Lbl/b;->i:F

    iget v0, p0, Lbl/b;->l:F

    iget v1, p0, Lbl/b;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lbl/b;->l:F

    iget v0, p0, Lbl/b;->l:F

    const/high16 v1, 0x4300

    cmpg-float v0, v0, v1

    if-gez v0, :cond_46

    iget v0, p0, Lbl/b;->l:F

    iput v0, p0, Lbl/b;->n:F

    :cond_46
    iget v0, p0, Lbl/b;->l:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_60

    iget-object v0, p0, Lbl/b;->g:Lbl/d;

    iget-object v1, p0, Lbl/b;->c:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget-object v2, p0, Lbl/b;->c:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    invoke-virtual {v0, v1, v2}, Lbl/d;->a(FF)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lbl/b;->l:F

    invoke-direct {p0}, Lbl/b;->g()V

    :cond_60
    const/high16 v0, 0x437d

    iget v1, p0, Lbl/b;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lbl/b;->n:F

    const/high16 v0, 0x4000

    iget v1, p0, Lbl/b;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lbl/b;->n:F

    iget v0, p0, Lbl/b;->l:F

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lbl/b;->j:F

    iget-object v0, p0, Lbl/b;->c:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget v2, p0, Lbl/b;->j:F

    iget v3, p0, Lbl/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lbl/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbn/f;->a:F

    iget-object v0, p0, Lbl/b;->c:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    iget v2, p0, Lbl/b;->j:F

    iget v3, p0, Lbl/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lbl/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    iget v0, p0, Lbl/b;->l:F

    div-float/2addr v0, v5

    iput v0, p0, Lbl/b;->p:F

    iget-object v0, p0, Lbl/b;->b:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget v2, p0, Lbl/b;->j:F

    iget v3, p0, Lbl/b;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, Lbl/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lbl/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbn/f;->a:F

    iget-object v0, p0, Lbl/b;->b:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->b:F

    iget v2, p0, Lbl/b;->j:F

    iget v3, p0, Lbl/b;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, Lbl/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lbl/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    iget v0, p0, Lbl/b;->k:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lbl/b;->k:F

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lbl/b;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x6b

    const/16 v3, 0xcf

    const/16 v4, 0xed

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbl/b;->g:Lbl/d;

    iget-object v1, p0, Lbl/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lbl/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private f()I
    .registers 5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4079

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private g()V
    .registers 2

    iget-boolean v0, p0, Lbl/b;->v:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lbl/b;->h()V

    iget-object v0, p0, Lbl/b;->o:Lbn/f;

    invoke-direct {p0, v0}, Lbl/b;->b(Lbn/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/b;->w:Z

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/b;->w:Z

    goto :goto_f
.end method

.method private h()V
    .registers 9

    const/high16 v7, 0x4000

    iget-boolean v0, p0, Lbl/b;->v:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lbl/b;->a:Lbn/f;

    iget v1, p0, Lbl/b;->e:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget v5, p0, Lbl/b;->e:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lbn/f;->a:F

    iget-object v0, p0, Lbl/b;->a:Lbn/f;

    iget v1, p0, Lbl/b;->f:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lbl/b;->f:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lbn/f;->b:F

    const v0, 0x3dcccccd

    iput v0, p0, Lbl/b;->p:F

    iget-object v0, p0, Lbl/b;->c:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget-object v2, p0, Lbl/b;->a:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    invoke-virtual {v0, v1, v2}, Lbn/f;->a(FF)V

    iget-object v0, p0, Lbl/b;->b:Lbn/f;

    iget-object v1, p0, Lbl/b;->a:Lbn/f;

    iget v1, v1, Lbn/f;->a:F

    iget-object v2, p0, Lbl/b;->a:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    invoke-virtual {v0, v1, v2}, Lbn/f;->a(FF)V

    iget v0, p0, Lbl/b;->q:I

    new-array v0, v0, [Lbn/f;

    iput-object v0, p0, Lbl/b;->r:[Lbn/f;

    const/4 v0, 0x0

    :goto_57
    iget v1, p0, Lbl/b;->q:I

    if-ge v0, v1, :cond_6f

    iget-object v1, p0, Lbl/b;->r:[Lbn/f;

    new-instance v2, Lbn/f;

    iget-object v3, p0, Lbl/b;->a:Lbn/f;

    iget v3, v3, Lbn/f;->a:F

    iget-object v4, p0, Lbl/b;->a:Lbn/f;

    iget v4, v4, Lbn/f;->b:F

    invoke-direct {v2, v3, v4}, Lbn/f;-><init>(FF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_6f
    invoke-direct {p0}, Lbl/b;->i()V

    :goto_72
    return-void

    :cond_73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/b;->w:Z

    goto :goto_72
.end method

.method private i()V
    .registers 6

    const/high16 v0, 0x4040

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lbl/b;->k:F

    const/high16 v0, 0x3f80

    iget v1, p0, Lbl/b;->k:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lbl/b;->m:F

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/b;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lbl/b;->s:I

    invoke-direct {p0}, Lbl/b;->f()I

    move-result v0

    iput v0, p0, Lbl/b;->t:I

    invoke-direct {p0}, Lbl/b;->g()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Lbl/b;->u:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lbl/b;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lbl/b;->c(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lbl/b;->g:Lbl/d;

    iget-boolean v0, v0, Lbl/d;->a:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lbl/b;->c(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method public a(Lbn/f;)V
    .registers 4

    iget-boolean v0, p0, Lbl/b;->u:Z

    if-nez v0, :cond_13

    iget v0, p0, Lbl/b;->s:I

    iget v1, p0, Lbl/b;->t:I

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/b;->u:Z

    :cond_d
    iget v0, p0, Lbl/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/b;->s:I

    :cond_13
    iget-boolean v0, p0, Lbl/b;->u:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lbl/b;->w:Z

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Lbl/b;->b(Lbn/f;)V

    :cond_1e
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/b;->v:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lbl/b;->g:Lbl/d;

    iget-boolean v0, v0, Lbl/d;->a:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lbl/b;->w:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lbl/b;->v:Z

    return v0
.end method
