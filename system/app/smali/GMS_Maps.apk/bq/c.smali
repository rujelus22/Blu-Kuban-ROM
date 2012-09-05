.class public Lbq/c;
.super Ljava/lang/Object;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Lbq/b;

.field private F:J

.field private G:Lbp/b;

.field private H:Ljava/util/concurrent/ArrayBlockingQueue;

.field private I:Ljava/util/concurrent/ArrayBlockingQueue;

.field public a:Lbq/a;

.field protected b:I

.field protected c:I

.field protected d:Lbp/b;

.field protected e:Lbp/b;

.field private f:[F

.field private g:[F

.field private h:[F

.field private i:I

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:[F

.field private p:[F

.field private q:[F

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:J

.field private w:J

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .registers 8

    const-wide/16 v5, 0x0

    const/16 v4, 0x32

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Lbq/c;->f:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lbq/c;->g:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lbq/c;->h:[F

    iput v2, p0, Lbq/c;->i:I

    iput v2, p0, Lbq/c;->j:I

    iput v2, p0, Lbq/c;->k:I

    new-array v0, v4, [F

    iput-object v0, p0, Lbq/c;->l:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lbq/c;->m:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lbq/c;->n:[F

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lbq/c;->o:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lbq/c;->p:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_6c

    iput-object v0, p0, Lbq/c;->q:[F

    iput v1, p0, Lbq/c;->s:F

    iput v1, p0, Lbq/c;->t:F

    iput-wide v5, p0, Lbq/c;->u:J

    iput-wide v5, p0, Lbq/c;->v:J

    iput-wide v5, p0, Lbq/c;->w:J

    iput v2, p0, Lbq/c;->b:I

    iput v2, p0, Lbq/c;->c:I

    iput v1, p0, Lbq/c;->x:F

    iput v2, p0, Lbq/c;->y:I

    iput v1, p0, Lbq/c;->z:F

    iput v1, p0, Lbq/c;->A:F

    iput v1, p0, Lbq/c;->B:F

    iput v1, p0, Lbq/c;->C:F

    iput v1, p0, Lbq/c;->D:F

    const/4 v0, 0x0

    iput-object v0, p0, Lbq/c;->E:Lbq/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lbq/c;->G:Lbp/b;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lbq/c;->H:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lbq/c;->I:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void

    :array_6c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private a([F)F
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_b

    aget v2, p1, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method private a([F[F)F
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aget v1, p1, v2

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private b([F)F
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_e

    aget v2, p1, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private c([F)[F
    .registers 6

    array-length v0, p1

    new-array v1, v0, [F

    invoke-direct {p0, p1}, Lbq/c;->b([F)F

    move-result v2

    const/4 v0, 0x0

    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_13

    aget v3, p1, v0

    div-float/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    return-object v1
.end method


# virtual methods
.method public a(Lbp/b;JLbp/b;J)F
    .registers 11

    sub-long v0, p5, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L

    div-double/2addr v0, v2

    invoke-virtual {p1, p4}, Lbp/b;->a(Lbp/b;)D

    move-result-wide v2

    div-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_9
.end method

.method public a(J)Lbp/b;
    .registers 10

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    invoke-virtual {v0}, Lbq/a;->a()Lbq/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbq/c;->a(Lbq/b;)Lbp/b;

    move-result-object v4

    const/4 v0, 0x0

    iget-object v1, p0, Lbq/c;->G:Lbp/b;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lbq/c;->G:Lbp/b;

    iget-wide v2, p0, Lbq/c;->F:J

    move-object v0, p0

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lbq/c;->a(Lbp/b;JLbp/b;J)F

    move-result v0

    :cond_1d
    invoke-virtual {v4, v0}, Lbp/b;->a(F)V

    iput-object v4, p0, Lbq/c;->G:Lbp/b;

    iput-wide p1, p0, Lbq/c;->F:J

    :goto_24
    return-object v4

    :cond_25
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public a(Lbq/b;)Lbp/b;
    .registers 12

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    invoke-virtual {v0, p1}, Lbq/a;->a(Lbq/b;)I

    move-result v3

    iget v0, p0, Lbq/c;->b:I

    iget v1, p1, Lbq/b;->b:F

    float-to-double v1, v1

    const-wide v4, 0x40567f46328ec073L

    mul-double/2addr v1, v4

    double-to-int v1, v1

    add-int/2addr v1, v0

    iget v0, p0, Lbq/c;->c:I

    iget v2, p1, Lbq/b;->a:F

    float-to-double v4, v2

    const-wide v6, 0x416312d000000000L

    iget v2, p0, Lbq/c;->b:I

    int-to-double v8, v2

    invoke-static {v8, v9}, Lbp/a;->b(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v2, v4

    add-int/2addr v2, v0

    new-instance v0, Lbp/b;

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lbp/b;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(F)V
    .registers 2

    return-void
.end method

.method public a(JFFF)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->a:Lbq/a;

    if-eqz v3, :cond_27c

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->f:[F

    const/4 v4, 0x0

    aput p3, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->f:[F

    const/4 v4, 0x1

    aput p4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->f:[F

    const/4 v4, 0x2

    aput p5, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lbq/c;->i:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lbq/c;->i:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->l:[F

    move-object/from16 v0, p0

    iget v4, v0, Lbq/c;->i:I

    rem-int/lit8 v4, v4, 0x32

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->f:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->m:[F

    move-object/from16 v0, p0

    iget v4, v0, Lbq/c;->i:I

    rem-int/lit8 v4, v4, 0x32

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->f:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->n:[F

    move-object/from16 v0, p0

    iget v4, v0, Lbq/c;->i:I

    rem-int/lit8 v4, v4, 0x32

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->f:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->p:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->l:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbq/c;->a([F)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lbq/c;->i:I

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->p:[F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->m:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbq/c;->a([F)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lbq/c;->i:I

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->p:[F

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->n:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbq/c;->a([F)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lbq/c;->i:I

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->p:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbq/c;->b([F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lbq/c;->p:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->p:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    div-float/2addr v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lbq/c;->p:[F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->p:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    div-float/2addr v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lbq/c;->p:[F

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->p:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    div-float/2addr v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lbq/c;->p:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->f:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lbq/c;->a([F[F)F

    move-result v4

    sub-float v3, v4, v3

    move-object/from16 v0, p0

    iput v3, v0, Lbq/c;->r:F

    move-object/from16 v0, p0

    iget v3, v0, Lbq/c;->j:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lbq/c;->j:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->o:[F

    move-object/from16 v0, p0

    iget v4, v0, Lbq/c;->j:I

    rem-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p0

    iget v5, v0, Lbq/c;->r:F

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->o:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbq/c;->a([F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lbq/c;->s:F

    move-object/from16 v0, p0

    iget v3, v0, Lbq/c;->s:F

    const/high16 v4, 0x4080

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1f1

    move-object/from16 v0, p0

    iget v3, v0, Lbq/c;->t:F

    const/high16 v4, 0x4080

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1f1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lbq/c;->v:J

    sub-long v3, p1, v3

    const-wide/32 v5, 0xee6b280

    cmp-long v3, v3, v5

    if-lez v3, :cond_1f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->a:Lbq/a;

    const v4, 0x3f19999a

    invoke-virtual {v3, v4}, Lbq/a;->a(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->a:Lbq/a;

    iget-object v3, v3, Lbq/a;->i:[Lbq/b;

    array-length v4, v3

    const/4 v3, 0x0

    :goto_15b
    if-ge v3, v4, :cond_1e2

    move-object/from16 v0, p0

    iget-object v5, v0, Lbq/c;->a:Lbq/a;

    iget-object v5, v5, Lbq/a;->i:[Lbq/b;

    aget-object v5, v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbq/c;->a(Lbq/b;)Lbp/b;

    move-result-object v6

    iget v7, v6, Lbp/b;->a:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lbq/c;->d:Lbp/b;

    iget v8, v8, Lbp/b;->a:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    iget v6, v6, Lbp/b;->b:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lbq/c;->d:Lbp/b;

    iget v9, v9, Lbp/b;->b:I

    sub-int/2addr v6, v9

    int-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iget v8, v5, Lbq/b;->d:F

    move-object/from16 v0, p0

    iget v9, v0, Lbq/c;->x:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L

    cmpl-double v10, v8, v10

    if-lez v10, :cond_19f

    const-wide v10, 0x401921fb54442d18L

    sub-double v8, v10, v8

    :cond_19f
    const-wide/high16 v8, 0x3fe0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lbq/c;->w:J

    sub-long v10, p1, v10

    long-to-double v10, v10

    const-wide v12, 0x3e112e0be826d695L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, v5, Lbq/b;->e:F

    float-to-double v9, v9

    float-to-double v11, v8

    const-wide/high16 v13, 0x4000

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v13, 0x411e848000000000L

    move-object/from16 v0, p0

    iget-object v8, v0, Lbq/c;->d:Lbp/b;

    iget v8, v8, Lbp/b;->c:I

    int-to-double v15, v8

    const-wide v17, 0x40b7700000000000L

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    add-double/2addr v6, v9

    double-to-float v6, v6

    iput v6, v5, Lbq/b;->e:F

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15b

    :cond_1e2
    move-object/from16 v0, p0

    iget v3, v0, Lbq/c;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbq/c;->a(F)V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbq/c;->v:J

    :cond_1f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->f:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbq/c;->c([F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lbq/c;->g:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->q:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-nez v3, :cond_214

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->g:[F

    move-object/from16 v0, p0

    iput-object v3, v0, Lbq/c;->q:[F

    :cond_214
    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->q:[F

    const/4 v4, 0x0

    const v5, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->q:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v5, v6

    const v6, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v7, v0, Lbq/c;->g:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->q:[F

    const/4 v4, 0x1

    const v5, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->q:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    const v6, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v7, v0, Lbq/c;->g:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->q:[F

    const/4 v4, 0x2

    const v5, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v6, v0, Lbq/c;->q:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    const v6, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v7, v0, Lbq/c;->g:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbq/c;->q:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbq/c;->c([F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lbq/c;->q:[F

    :cond_27c
    return-void
.end method

.method public a(JLbp/b;)V
    .registers 16

    iput-wide p1, p0, Lbq/c;->w:J

    if-eqz p3, :cond_5d

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    if-nez v0, :cond_5e

    iget v0, p3, Lbp/b;->a:I

    iput v0, p0, Lbq/c;->b:I

    iget v0, p3, Lbp/b;->b:I

    iput v0, p0, Lbq/c;->c:I

    iget v0, p3, Lbp/b;->a:I

    iget v1, p0, Lbq/c;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x47d90a8f

    mul-float/2addr v0, v1

    const v1, 0x4b189680

    div-float v4, v0, v1

    iget v0, p3, Lbp/b;->b:I

    iget v1, p0, Lbq/c;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lbq/c;->b:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lbp/a;->b(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x4b189680

    div-float v2, v0, v1

    new-instance v0, Lbq/a;

    const/high16 v1, 0x4040

    sub-float v1, v2, v1

    const/high16 v3, 0x4040

    add-float/2addr v2, v3

    const/high16 v3, 0x4040

    sub-float v3, v4, v3

    const/high16 v5, 0x4040

    add-float/2addr v4, v5

    const-wide/high16 v5, 0x3ff0

    const/16 v7, 0x12c

    invoke-direct/range {v0 .. v7}, Lbq/a;-><init>(FFFFDI)V

    iput-object v0, p0, Lbq/c;->a:Lbq/a;

    new-instance v0, Lbp/b;

    iget v1, p3, Lbp/b;->a:I

    iget v2, p3, Lbp/b;->b:I

    iget v3, p3, Lbp/b;->c:I

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lbp/b;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbq/c;->d:Lbp/b;

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    iget-object v0, v0, Lbq/a;->i:[Lbq/b;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_64
    if-ge v0, v1, :cond_be

    iget-object v2, p0, Lbq/c;->a:Lbq/a;

    iget-object v2, v2, Lbq/a;->i:[Lbq/b;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lbq/c;->a(Lbq/b;)Lbp/b;

    move-result-object v3

    iget v4, v3, Lbp/b;->a:I

    iget v5, p3, Lbp/b;->a:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v3, v3, Lbp/b;->b:I

    iget v6, p3, Lbp/b;->b:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v5, v2, Lbq/b;->d:F

    iget v6, p0, Lbq/c;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    cmpl-double v7, v5, v7

    if-lez v7, :cond_9a

    const-wide v7, 0x401921fb54442d18L

    sub-double v5, v7, v5

    :cond_9a
    iget v5, v2, Lbq/b;->e:F

    const-wide/high16 v6, 0x4000

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    const-wide v6, 0x411e848000000000L

    iget v8, p3, Lbp/b;->c:I

    int-to-double v8, v8

    const-wide v10, 0x40b7700000000000L

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v2, Lbq/b;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_be
    iget-object v0, p0, Lbq/c;->d:Lbp/b;

    if-eqz v0, :cond_10a

    iget v0, p0, Lbq/c;->B:F

    iget-object v1, p0, Lbq/c;->d:Lbp/b;

    invoke-virtual {p3, v1}, Lbp/b;->a(Lbp/b;)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lbq/c;->B:F

    iget v0, p3, Lbp/b;->a:I

    iget-object v1, p0, Lbq/c;->d:Lbp/b;

    iget v1, v1, Lbp/b;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p3, Lbp/b;->b:I

    iget-object v3, p0, Lbq/c;->d:Lbp/b;

    iget v3, v3, Lbp/b;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lbq/c;->H:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f6

    iget-object v1, p0, Lbq/c;->H:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    iget-object v1, p0, Lbq/c;->I:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    :cond_f6
    iget-object v1, p0, Lbq/c;->H:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbq/c;->I:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p3, Lbp/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_10a
    new-instance v0, Lbp/b;

    iget v1, p3, Lbp/b;->a:I

    iget v2, p3, Lbp/b;->b:I

    iget v3, p3, Lbp/b;->c:I

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lbp/b;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbq/c;->d:Lbp/b;

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    invoke-virtual {v0}, Lbq/a;->a()Lbq/b;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbq/c;->a(Lbq/b;)Lbp/b;

    move-result-object v0

    iput-object v0, p0, Lbq/c;->e:Lbp/b;

    iget-object v0, p0, Lbq/c;->E:Lbq/b;

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lbq/c;->E:Lbq/b;

    invoke-virtual {p0, v0}, Lbq/c;->a(Lbq/b;)Lbp/b;

    move-result-object v0

    iget v1, p0, Lbq/c;->C:F

    float-to-double v3, v1

    iget-object v1, p0, Lbq/c;->e:Lbp/b;

    invoke-virtual {v0, v1}, Lbp/b;->a(Lbp/b;)D

    move-result-wide v0

    add-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lbq/c;->C:F

    :cond_13e
    iput-object v2, p0, Lbq/c;->E:Lbq/b;

    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    invoke-virtual {v0}, Lbq/a;->b()V

    iget v0, p0, Lbq/c;->x:F

    invoke-virtual {p0, v0}, Lbq/c;->a(F)V

    const v0, 0x3dcccccd

    iget v1, p3, Lbp/b;->c:I

    const/16 v3, 0x1770

    if-ge v1, v3, :cond_155

    const/high16 v0, 0x3f40

    :cond_155
    const/4 v1, 0x0

    :goto_156
    int-to-float v3, v1

    iget-object v4, p0, Lbq/c;->a:Lbq/a;

    iget v4, v4, Lbq/a;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_198

    iget-object v3, p0, Lbq/c;->a:Lbq/a;

    iget-object v3, v3, Lbq/a;->i:[Lbq/b;

    aget-object v3, v3, v1

    iget v4, p3, Lbp/b;->b:I

    iget v5, p0, Lbq/c;->c:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, p0, Lbq/c;->b:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Lbp/a;->b(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x416312d000000000L

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lbq/b;->a:F

    iget-object v3, p0, Lbq/c;->a:Lbq/a;

    iget-object v3, v3, Lbq/a;->i:[Lbq/b;

    aget-object v3, v3, v1

    iget v4, p3, Lbp/b;->a:I

    iget v5, p0, Lbq/c;->b:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x3f86c22813448063L

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lbq/b;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    :cond_198
    iget-object v0, p0, Lbq/c;->a:Lbq/a;

    iget v1, v2, Lbq/b;->d:F

    iput v1, v0, Lbq/a;->h:F

    goto/16 :goto_5d
.end method
