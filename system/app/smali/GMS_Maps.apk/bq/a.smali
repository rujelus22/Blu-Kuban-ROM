.class public Lbq/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:D

.field public g:F

.field public h:F

.field public i:[Lbq/b;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lbq/a;->a:I

    iput v2, p0, Lbq/a;->b:F

    iput v2, p0, Lbq/a;->c:F

    iput v2, p0, Lbq/a;->d:F

    iput v2, p0, Lbq/a;->e:F

    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lbq/a;->f:D

    iput v2, p0, Lbq/a;->g:F

    iput v2, p0, Lbq/a;->h:F

    invoke-direct {p0}, Lbq/a;->c()V

    return-void
.end method

.method public constructor <init>(FFFFDI)V
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lbq/a;->a:I

    iput v2, p0, Lbq/a;->b:F

    iput v2, p0, Lbq/a;->c:F

    iput v2, p0, Lbq/a;->d:F

    iput v2, p0, Lbq/a;->e:F

    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lbq/a;->f:D

    iput v2, p0, Lbq/a;->g:F

    iput v2, p0, Lbq/a;->h:F

    iput p1, p0, Lbq/a;->b:F

    iput p2, p0, Lbq/a;->c:F

    iput p3, p0, Lbq/a;->d:F

    iput p4, p0, Lbq/a;->e:F

    iput-wide p5, p0, Lbq/a;->f:D

    iput p7, p0, Lbq/a;->a:I

    invoke-direct {p0}, Lbq/a;->c()V

    return-void
.end method

.method private c()V
    .registers 9

    const-wide v6, 0x400921fb54442d18L

    const/4 v0, 0x0

    iput-object v0, p0, Lbq/a;->i:[Lbq/b;

    iget v0, p0, Lbq/a;->a:I

    new-array v0, v0, [Lbq/b;

    iput-object v0, p0, Lbq/a;->i:[Lbq/b;

    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lbq/a;->a:I

    if-ge v0, v1, :cond_4f

    new-instance v1, Lbq/b;

    invoke-direct {v1, p0}, Lbq/b;-><init>(Lbq/a;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lbq/a;->c:F

    iget v5, p0, Lbq/a;->b:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lbq/a;->b:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbq/b;->a:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lbq/a;->e:F

    iget v5, p0, Lbq/a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lbq/a;->d:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbq/b;->b:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    sub-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lbq/b;->d:F

    iget-object v2, p0, Lbq/a;->i:[Lbq/b;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_4f
    return-void
.end method

.method private d()V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lbq/a;->i:[Lbq/b;

    array-length v4, v2

    move v2, v0

    move v3, v1

    :goto_7
    if-ge v2, v4, :cond_13

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v2

    iget v5, v5, Lbq/b;->e:F

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    iput v3, p0, Lbq/a;->g:F

    cmpl-float v2, v3, v1

    if-lez v2, :cond_28

    move v2, v0

    :goto_1a
    if-ge v2, v4, :cond_3a

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v2

    iget v6, v5, Lbq/b;->e:F

    div-float/2addr v6, v3

    iput v6, v5, Lbq/b;->f:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_28
    move v2, v0

    :goto_29
    if-ge v2, v4, :cond_3a

    iget-object v3, p0, Lbq/a;->i:[Lbq/b;

    aget-object v3, v3, v2

    const/high16 v5, 0x3f80

    iget v6, p0, Lbq/a;->a:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lbq/b;->f:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3a
    :goto_3a
    if-ge v0, v4, :cond_4b

    iget-object v2, p0, Lbq/a;->i:[Lbq/b;

    aget-object v2, v2, v0

    iget v3, v2, Lbq/b;->f:F

    add-float/2addr v3, v1

    iput v3, v2, Lbq/b;->g:F

    iget v2, v2, Lbq/b;->f:F

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4b
    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lbq/a;->i:[Lbq/b;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_10

    iget-object v2, p0, Lbq/a;->i:[Lbq/b;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lbq/b;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Lbq/b;)I
    .registers 12

    const/16 v0, 0xbb8

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lbq/a;->i:[Lbq/b;

    array-length v4, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_28

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v1

    iget v6, p1, Lbq/b;->a:F

    iget v7, v5, Lbq/b;->a:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p1, Lbq/b;->b:F

    iget v9, v5, Lbq/b;->b:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iget v5, v5, Lbq/b;->f:F

    float-to-double v8, v5

    mul-double/2addr v8, v6

    mul-double v5, v8, v6

    add-double/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    if-ge v1, v0, :cond_3d

    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    goto :goto_3c
.end method

.method public a()Lbq/b;
    .registers 8

    invoke-direct {p0}, Lbq/a;->d()V

    new-instance v1, Lbq/b;

    invoke-direct {v1, p0}, Lbq/b;-><init>(Lbq/a;)V

    iget-object v0, p0, Lbq/a;->i:[Lbq/b;

    array-length v2, v0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_33

    iget-object v3, p0, Lbq/a;->i:[Lbq/b;

    aget-object v3, v3, v0

    iget v4, v1, Lbq/b;->a:F

    iget v5, v3, Lbq/b;->a:F

    iget v6, v3, Lbq/b;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v1, Lbq/b;->a:F

    iget v4, v1, Lbq/b;->b:F

    iget v5, v3, Lbq/b;->b:F

    iget v6, v3, Lbq/b;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v1, Lbq/b;->b:F

    iget v4, v1, Lbq/b;->d:F

    iget v5, v3, Lbq/b;->d:F

    iget v3, v3, Lbq/b;->f:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, v1, Lbq/b;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_33
    return-object v1
.end method

.method public a(F)V
    .registers 13

    const-wide/high16 v9, 0x3fe0

    iget-object v0, p0, Lbq/a;->i:[Lbq/b;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_3b

    iget-object v2, p0, Lbq/a;->i:[Lbq/b;

    aget-object v2, v2, v0

    iget v3, v2, Lbq/b;->d:F

    float-to-double v4, p1

    neg-float v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double/2addr v6, v9

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v5, p1

    neg-float v3, v3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    sub-double/2addr v7, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v3, v5

    iget v5, v2, Lbq/b;->a:F

    add-float/2addr v4, v5

    iput v4, v2, Lbq/b;->a:F

    iget v4, v2, Lbq/b;->b:F

    add-float/2addr v3, v4

    iput v3, v2, Lbq/b;->b:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3b
    return-void
.end method

.method public b()V
    .registers 14

    invoke-direct {p0}, Lbq/a;->d()V

    iget v0, p0, Lbq/a;->a:I

    new-array v2, v0, [Lbq/b;

    iget-object v0, p0, Lbq/a;->i:[Lbq/b;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lbq/a;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_11
    iget v1, p0, Lbq/a;->a:I

    if-ge v0, v1, :cond_162

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v1, 0x1

    :goto_1b
    iget v4, p0, Lbq/a;->a:I

    if-ge v1, v4, :cond_15e

    if-nez v1, :cond_bd

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b9

    iget-object v4, p0, Lbq/a;->i:[Lbq/b;

    aget-object v4, v4, v1

    iget v4, v4, Lbq/b;->g:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_b9

    aget-object v4, v2, v1

    iget v5, p0, Lbq/a;->g:F

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    iget v5, v4, Lbq/b;->a:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lbq/a;->f:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Lbq/b;->a:F

    iget v5, v4, Lbq/b;->b:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lbq/a;->f:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Lbq/b;->b:F

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x3fe921fb54442d18L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    :goto_6f
    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_88

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x401921fb54442d18L

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    goto :goto_6f

    :cond_88
    :goto_88
    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, -0x3ff6de04abbbd2e8L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_a1

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x401921fb54442d18L

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    goto :goto_88

    :cond_a1
    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v6, v4, Lbq/b;->a:F

    iput v6, v5, Lbq/b;->a:F

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v6, v4, Lbq/b;->b:F

    iput v6, v5, Lbq/b;->b:F

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v4, v4, Lbq/b;->d:F

    iput v4, v5, Lbq/b;->d:F

    :cond_b9
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    :cond_bd
    iget-object v4, p0, Lbq/a;->i:[Lbq/b;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lbq/b;->g:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b9

    iget-object v4, p0, Lbq/a;->i:[Lbq/b;

    aget-object v4, v4, v1

    iget v4, v4, Lbq/b;->g:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_b9

    aget-object v4, v2, v1

    iget v5, p0, Lbq/a;->g:F

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    iget v5, v4, Lbq/b;->a:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lbq/a;->f:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Lbq/b;->a:F

    iget v5, v4, Lbq/b;->b:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lbq/a;->f:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Lbq/b;->b:F

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x3ff921fb54442d18L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    :goto_112
    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_12b

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x401921fb54442d18L

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    goto :goto_112

    :cond_12b
    :goto_12b
    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, -0x3ff6de04abbbd2e8L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_144

    iget v5, v4, Lbq/b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x401921fb54442d18L

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lbq/b;->d:F

    goto :goto_12b

    :cond_144
    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v6, v4, Lbq/b;->a:F

    iput v6, v5, Lbq/b;->a:F

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v6, v4, Lbq/b;->b:F

    iput v6, v5, Lbq/b;->b:F

    iget-object v5, p0, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v0

    iget v4, v4, Lbq/b;->d:F

    iput v4, v5, Lbq/b;->d:F

    goto/16 :goto_b9

    :cond_15e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    :cond_162
    invoke-direct {p0}, Lbq/a;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbq/a;->i:[Lbq/b;

    array-length v2, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_19

    iget-object v3, p0, Lbq/a;->i:[Lbq/b;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lbq/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
