.class public Lbm/e;
.super Ljava/lang/Object;

# interfaces
.implements Lbn/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Lbm/d;

.field private final f:Lbm/b;

.field private final g:Ljava/util/ArrayList;

.field private final h:[Landroid/graphics/Bitmap;

.field private final i:Lbn/d;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V
    .registers 12

    const/16 v2, 0x64

    const/4 v1, 0x0

    const/high16 v3, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbm/e;->d:Landroid/graphics/Paint;

    iput v1, p0, Lbm/e;->k:I

    iput v1, p0, Lbm/e;->l:I

    const/16 v0, 0x1e

    iput v0, p0, Lbm/e;->m:I

    iput-boolean v1, p0, Lbm/e;->n:Z

    new-instance v0, Lbn/d;

    const/16 v1, 0x177

    invoke-direct {v0, p1, v1}, Lbn/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbm/e;->i:Lbn/d;

    iget-object v0, p0, Lbm/e;->i:Lbn/d;

    invoke-virtual {v0, p0}, Lbn/d;->a(Lbn/e;)V

    iput p2, p0, Lbm/e;->a:I

    iput p3, p0, Lbm/e;->b:I

    iput-object p4, p0, Lbm/e;->h:[Landroid/graphics/Bitmap;

    int-to-float v0, p2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lbm/e;->c:I

    iget-object v0, p0, Lbm/e;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbm/e;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lbm/e;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lbm/b;

    int-to-float v1, p2

    div-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbm/b;-><init>(FF)V

    iput-object v0, p0, Lbm/e;->f:Lbm/b;

    new-instance v0, Lbm/d;

    iget v1, p0, Lbm/e;->c:I

    add-int v2, p2, v1

    int-to-double v3, p3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/high16 v4, 0x42f0

    iget-object v1, p0, Lbm/e;->f:Lbm/b;

    invoke-virtual {v1}, Lbm/b;->a()Lbn/f;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbm/d;-><init>(Lbm/e;IIFLbn/f;)V

    iput-object v0, p0, Lbm/e;->e:Lbm/d;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Lbm/e;->n:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbm/e;->e:Lbm/d;

    iget-object v1, p0, Lbm/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lbm/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 6

    const/16 v1, 0xff

    iget-object v0, p0, Lbm/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm/a;

    iget-object v2, p0, Lbm/e;->e:Lbm/d;

    invoke-virtual {v2}, Lbm/d;->a()[[Lbm/c;

    move-result-object v2

    iget-object v3, p0, Lbm/e;->e:Lbm/d;

    invoke-virtual {v3}, Lbm/d;->b()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lbm/a;->a([[Lbm/c;F)V

    iget-object v2, p0, Lbm/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lbm/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_15

    :cond_36
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm/e;->n:Z

    iput v0, p0, Lbm/e;->l:I

    iput v0, p0, Lbm/e;->k:I

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm/a;

    invoke-virtual {v0}, Lbm/a;->e()V

    iget v0, p0, Lbm/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbm/e;->k:I

    goto :goto_15

    :cond_2b
    return-void
.end method

.method public a(F)V
    .registers 4

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm/a;

    invoke-virtual {v0, p1}, Lbm/a;->a(F)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 6

    iget v0, p0, Lbm/e;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbm/e;->l:I

    iget v1, p0, Lbm/e;->m:I

    if-le v0, v1, :cond_3e

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1b
    if-ltz v1, :cond_3e

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm/a;

    iget v2, p0, Lbm/e;->k:I

    if-lez v2, :cond_3a

    invoke-virtual {v0}, Lbm/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lbm/e;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbm/e;->k:I

    :cond_3a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1b

    :cond_3e
    invoke-virtual {p0, p1, p2}, Lbm/e;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public a(Lbm/f;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm/e;->n:Z

    iput v1, p0, Lbm/e;->k:I

    iput v1, p0, Lbm/e;->l:I

    invoke-virtual {p1}, Lbm/f;->a()I

    move-result v0

    iget-object v2, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    if-lez v2, :cond_3a

    move v0, v1

    :goto_17
    if-ge v0, v2, :cond_54

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lbm/e;->h:[Landroid/graphics/Bitmap;

    array-length v5, v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lbm/e;->h:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    new-instance v4, Lbm/a;

    iget-object v5, p0, Lbm/e;->f:Lbm/b;

    iget v6, p0, Lbm/e;->a:I

    iget v7, p0, Lbm/e;->b:I

    invoke-direct {v4, v5, v6, v7, v3}, Lbm/a;-><init>(Lbm/b;IILandroid/graphics/Bitmap;)V

    iget-object v3, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3a
    if-gez v2, :cond_54

    move v0, v1

    :goto_3d
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_54

    iget-object v3, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    iget v3, p0, Lbm/e;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbm/e;->k:I

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_54
    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v0, p0, Lbm/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm/a;

    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lbm/e;->k:I

    if-le v1, v4, :cond_7f

    invoke-virtual {v0}, Lbm/a;->b()Z

    move-result v1

    if-nez v1, :cond_7d

    invoke-virtual {v0}, Lbm/a;->d()V

    :cond_7d
    :goto_7d
    move v1, v2

    goto :goto_62

    :cond_7f
    invoke-virtual {v0}, Lbm/a;->e()V

    goto :goto_7d

    :cond_83
    return-void
.end method

.method public b(F)V
    .registers 5

    const/high16 v2, 0x4000

    iput p1, p0, Lbm/e;->j:F

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lbm/e;->c(F)F

    move-result v0

    iget v1, p0, Lbm/e;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v0, v1, v0

    iget v1, p0, Lbm/e;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lbm/e;->f:Lbm/b;

    iget-object v2, p0, Lbm/e;->f:Lbm/b;

    invoke-virtual {v2}, Lbm/b;->c()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbm/b;->a(FF)V

    iget-object v0, p0, Lbm/e;->e:Lbm/d;

    iget-object v1, p0, Lbm/e;->f:Lbm/b;

    invoke-virtual {v1}, Lbm/b;->a()Lbn/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbm/d;->a(Lbn/f;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 4

    if-eqz p2, :cond_6

    const/high16 v0, 0x3f00

    iput v0, p0, Lbm/e;->j:F

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lbm/e;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lbm/e;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c(F)F
    .registers 5

    const/high16 v0, -0x4080

    iget v1, p0, Lbm/e;->j:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lbm/e;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
