.class public Lbl/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;

.field private final d:Lbn/f;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(II)V
    .registers 7

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbl/a;->f:Landroid/graphics/Paint;

    iput v2, p0, Lbl/a;->g:I

    iput v2, p0, Lbl/a;->h:I

    const/16 v0, 0x14

    iput v0, p0, Lbl/a;->i:I

    iput p1, p0, Lbl/a;->a:I

    iput p2, p0, Lbl/a;->b:I

    iget-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lbl/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbl/a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Lbn/f;

    int-to-float v1, p1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    int-to-float v2, p2

    const/high16 v3, 0x3f40

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbn/f;-><init>(FF)V

    iput-object v0, p0, Lbl/a;->d:Lbn/f;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .registers 5

    const/high16 v3, 0x4000

    const v0, 0x3dcccccd

    iget v1, p0, Lbl/a;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lbl/a;->a:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    iget v2, p0, Lbl/a;->j:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lbl/a;->a:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lbl/a;->k:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Z)V
    .registers 7

    const/high16 v2, 0x3f00

    const/16 v1, 0xff

    iget-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbl/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_14

    iput v2, p0, Lbl/a;->j:F

    :cond_14
    iget v0, p0, Lbl/a;->j:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lbl/a;->d:Lbn/f;

    iget v2, p0, Lbl/a;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lbl/a;->d:Lbn/f;

    iget v2, v2, Lbn/f;->b:F

    invoke-virtual {v1, v0, v2}, Lbn/f;->a(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lbl/a;->g:I

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/b;

    invoke-virtual {v0}, Lbl/b;->b()V

    iget v0, p0, Lbl/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/a;->g:I

    goto :goto_11

    :cond_27
    return-void
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lbl/a;->j:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lbl/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/a;->h:I

    iget v1, p0, Lbl/a;->i:I

    if-le v0, v1, :cond_3f

    iget v0, p0, Lbl/a;->g:I

    if-lez v0, :cond_3f

    move v1, v2

    :goto_10
    iget v0, p0, Lbl/a;->g:I

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/b;

    invoke-virtual {v0}, Lbl/b;->d()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Lbl/b;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lbl/a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbl/a;->g:I

    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_3f
    invoke-direct {p0}, Lbl/a;->b()V

    invoke-direct {p0, p1, p2}, Lbl/a;->b(Landroid/graphics/Canvas;Z)V

    iget v0, p0, Lbl/a;->k:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/b;

    iget-object v2, p0, Lbl/a;->d:Lbn/f;

    invoke-virtual {v0, v2}, Lbl/b;->a(Lbn/f;)V

    invoke-virtual {v0, p1}, Lbl/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_59

    :cond_6e
    return-void
.end method

.method public a(Lbl/c;)V
    .registers 10

    const/4 v1, 0x0

    iput v1, p0, Lbl/a;->g:I

    iput v1, p0, Lbl/a;->h:I

    invoke-virtual {p1}, Lbl/c;->a()I

    move-result v0

    iget-object v2, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    if-lez v2, :cond_29

    move v0, v1

    :goto_14
    if-ge v0, v2, :cond_43

    iget-object v3, p0, Lbl/a;->c:Ljava/util/ArrayList;

    new-instance v4, Lbl/b;

    iget v5, p0, Lbl/a;->a:I

    iget v6, p0, Lbl/a;->b:I

    iget-object v7, p0, Lbl/a;->d:Lbn/f;

    invoke-direct {v4, v5, v6, v7}, Lbl/b;-><init>(IILbn/f;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_29
    if-gez v2, :cond_43

    move v0, v1

    :goto_2c
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_43

    iget-object v3, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    iget v3, p0, Lbl/a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbl/a;->g:I

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_43
    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lbl/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/b;

    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lbl/a;->g:I

    if-le v1, v4, :cond_6e

    invoke-virtual {v0}, Lbl/b;->e()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {v0}, Lbl/b;->a()V

    :cond_6c
    :goto_6c
    move v1, v2

    goto :goto_51

    :cond_6e
    invoke-virtual {v0}, Lbl/b;->b()V

    goto :goto_6c

    :cond_72
    return-void
.end method
