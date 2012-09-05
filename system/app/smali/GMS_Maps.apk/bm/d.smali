.class public Lbm/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:[[Lbm/c;

.field private final e:Lbn/f;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Lbm/e;IIFLbn/f;)V
    .registers 15

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v8, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbm/d;->f:F

    const v0, 0x3727c5ac

    iput v0, p0, Lbm/d;->g:F

    iput v2, p0, Lbm/d;->j:F

    iput v2, p0, Lbm/d;->k:F

    iput p2, p0, Lbm/d;->a:I

    iput p3, p0, Lbm/d;->b:I

    iput p4, p0, Lbm/d;->c:F

    iput-object p5, p0, Lbm/d;->e:Lbn/f;

    int-to-float v0, p3

    div-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v2, p2

    div-float/2addr v2, p4

    float-to-int v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Lbm/c;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lbm/c;

    iput-object v0, p0, Lbm/d;->d:[[Lbm/c;

    move v2, v1

    :goto_31
    int-to-float v0, p3

    div-float/2addr v0, p4

    float-to-int v0, v0

    if-ge v2, v0, :cond_69

    move v0, v1

    :goto_37
    int-to-float v3, p2

    div-float/2addr v3, p4

    float-to-int v3, v3

    if-ge v0, v3, :cond_65

    iget-object v3, p0, Lbm/d;->d:[[Lbm/c;

    aget-object v3, v3, v2

    new-instance v4, Lbm/c;

    int-to-float v5, v0

    div-float v6, p4, v8

    add-float/2addr v5, v6

    int-to-float v6, v2

    div-float v7, p4, v8

    add-float/2addr v6, v7

    invoke-direct {v4, p0, v5, v6}, Lbm/c;-><init>(Lbm/d;FF)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lbm/d;->d:[[Lbm/c;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    int-to-float v4, v0

    mul-float/2addr v4, p4

    div-float v5, p4, v8

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, p4

    div-float v6, p4, v8

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lbm/c;->a(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    :cond_69
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12

    const/4 v1, 0x0

    iget v0, p0, Lbm/d;->h:F

    iget v2, p0, Lbm/d;->j:F

    add-float/2addr v0, v2

    iput v0, p0, Lbm/d;->h:F

    iget v0, p0, Lbm/d;->i:F

    iget v2, p0, Lbm/d;->k:F

    add-float/2addr v0, v2

    iput v0, p0, Lbm/d;->i:F

    move v0, v1

    :goto_10
    iget v2, p0, Lbm/d;->b:I

    int-to-float v2, v2

    iget v3, p0, Lbm/d;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v0, v2, :cond_5d

    move v2, v1

    :goto_1a
    iget v3, p0, Lbm/d;->a:I

    int-to-float v3, v3

    iget v4, p0, Lbm/d;->c:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_5a

    int-to-float v3, v2

    iget v4, p0, Lbm/d;->c:F

    mul-float/2addr v3, v4

    int-to-float v3, v0

    iget v4, p0, Lbm/d;->c:F

    mul-float/2addr v3, v4

    const/high16 v3, 0x42b4

    const/high16 v4, 0x4307

    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    iget-object v5, p0, Lbm/d;->d:[[Lbm/c;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lbm/c;->c()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3ff921fb54442d18L

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lbm/d;->l:F

    iget-object v3, p0, Lbm/d;->d:[[Lbm/c;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget v4, p0, Lbm/d;->l:F

    invoke-virtual {v3, v4}, Lbm/c;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_5d
    iget v0, p0, Lbm/d;->f:F

    iget v1, p0, Lbm/d;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lbm/d;->f:F

    return-void
.end method

.method public a(Lbn/f;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1, p1}, Lbn/f;->a(Lbn/f;)V

    move v0, v1

    :goto_5
    iget v2, p0, Lbm/d;->b:I

    int-to-float v2, v2

    iget v3, p0, Lbm/d;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v0, v2, :cond_27

    move v2, v1

    :goto_f
    iget v3, p0, Lbm/d;->a:I

    int-to-float v3, v3

    iget v4, p0, Lbm/d;->c:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_24

    iget-object v3, p0, Lbm/d;->d:[[Lbm/c;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lbm/c;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    return-void
.end method

.method public a()[[Lbm/c;
    .registers 2

    iget-object v0, p0, Lbm/d;->d:[[Lbm/c;

    return-object v0
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lbm/d;->c:F

    return v0
.end method

.method public c()Lbn/f;
    .registers 2

    iget-object v0, p0, Lbm/d;->e:Lbn/f;

    return-object v0
.end method
