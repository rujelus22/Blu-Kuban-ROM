.class public Lcom/google/android/maps/driveabout/vector/dI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/b;


# static fields
.field private static final b:F

.field private static final c:Lcom/google/android/maps/driveabout/vector/l;

.field private static d:F


# instance fields
.field protected final a:Landroid/content/Context;

.field private final e:Z

.field private final f:Lcom/google/android/maps/driveabout/vector/n;

.field private volatile g:Lcom/google/android/maps/driveabout/vector/l;

.field private volatile h:Lcom/google/android/maps/driveabout/vector/l;

.field private volatile i:F

.field private volatile j:Lcom/google/android/maps/driveabout/vector/m;

.field private volatile k:Z

.field private l:Z

.field private m:Lcom/google/android/maps/driveabout/vector/cY;

.field private n:Lcom/google/android/maps/driveabout/vector/cH;

.field private o:Lcom/google/android/maps/driveabout/vector/ee;

.field private p:Lcom/google/android/maps/driveabout/vector/cs;

.field private q:Z

.field private r:I

.field private s:F

.field private final t:Ll/q;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/dI;->b:F

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    .line 95
    const/high16 v0, 0x41a8

    sput v0, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->r:I

    .line 176
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->s:F

    .line 207
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->a:Landroid/content/Context;

    .line 208
    sget-object v1, Lcom/google/android/maps/driveabout/vector/k;->b:Lcom/google/android/maps/driveabout/vector/l;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 209
    sget-object v1, Lcom/google/android/maps/driveabout/vector/k;->b:Lcom/google/android/maps/driveabout/vector/l;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    .line 211
    if-nez p1, :cond_33

    .line 212
    :goto_16
    new-instance v1, Lcom/google/android/maps/driveabout/vector/n;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/n;-><init>(F)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->a:Landroid/content/Context;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->e:Z

    .line 218
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->t:Ll/q;

    .line 219
    return-void

    .line 211
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_16

    .line 216
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private a(F)F
    .registers 10
    .parameter

    .prologue
    .line 541
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x40031eb851eb851fL

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget v6, Lcom/google/android/maps/driveabout/vector/dI;->b:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x404d5ae147ae147bL

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/n;Ln/Q;F)Lcom/google/android/maps/driveabout/vector/l;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    .line 1526
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v1

    invoke-virtual {p2}, Ln/Q;->f()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1527
    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v0

    invoke-virtual {p2}, Ln/Q;->g()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1528
    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 1529
    neg-float v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 1530
    neg-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 1531
    int-to-float v4, v1

    mul-float/2addr v4, v2

    int-to-float v5, v0

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 1532
    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 1533
    new-instance v1, Ln/Q;

    invoke-virtual {p2}, Ln/Q;->f()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2}, Ln/Q;->g()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Ln/Q;-><init>(II)V

    .line 1537
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    add-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f(F)F

    move-result v4

    .line 1538
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1493
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v0

    mul-float/2addr v0, p2

    .line 1494
    neg-float v1, p3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 1497
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->o()Ln/Q;

    move-result-object v2

    .line 1498
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->p()Ln/Q;

    move-result-object v3

    .line 1499
    new-instance v4, Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v5

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    invoke-direct {v4, v5, v2}, Ln/Q;-><init>(II)V

    .line 1500
    new-instance v5, Ln/Q;

    invoke-virtual {v3}, Ln/Q;->f()I

    move-result v2

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    invoke-direct {v5, v2, v3}, Ln/Q;-><init>(II)V

    .line 1501
    invoke-static {v4, v0, v4}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 1502
    invoke-static {v5, v1, v5}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 1504
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    .line 1505
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    .line 1506
    invoke-virtual {v0}, Ln/Q;->h()I

    move-result v3

    .line 1507
    invoke-virtual {v0, v4}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 1508
    invoke-static {v1, v5, v1}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 1509
    invoke-virtual {v1, v3}, Ln/Q;->b(I)V

    .line 1510
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/n;FFF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 1551
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v6, p4, v0

    .line 1552
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v7, p5, v0

    .line 1561
    invoke-static {p0, p1, v6, v7}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v4

    .line 1563
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    sget v2, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v3

    add-float/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 1566
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1567
    neg-float v1, v6

    neg-float v2, v7

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3
    .parameter

    .prologue
    .line 526
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    .line 530
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/F;

    if-eqz v0, :cond_e

    .line 531
    check-cast p1, Lcom/google/android/maps/driveabout/vector/F;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/F;->b()V

    .line 533
    :cond_e
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 392
    monitor-enter p0

    .line 393
    :try_start_2
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/F;

    if-eqz v0, :cond_9

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->k:Z

    .line 396
    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->l:Z

    .line 398
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 400
    if-eqz p2, :cond_24

    .line 401
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object p2

    .line 404
    :cond_24
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/dI;->h:Lcom/google/android/maps/driveabout/vector/l;

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 406
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_35

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->n:Lcom/google/android/maps/driveabout/vector/cH;

    if-eqz v0, :cond_34

    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->n:Lcom/google/android/maps/driveabout/vector/cH;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cH;->a(ZZ)V

    .line 410
    :cond_34
    return-void

    .line 406
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public static b(F)V
    .registers 1
    .parameter

    .prologue
    .line 230
    sput p0, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    .line 231
    return-void
.end method

.method public static d()F
    .registers 1

    .prologue
    .line 222
    sget v0, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    return v0
.end method

.method static synthetic e(F)F
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dI;->f(F)F

    move-result v0

    return v0
.end method

.method private static f(F)F
    .registers 8
    .parameter

    .prologue
    const-wide v5, 0x4076800000000000L

    .line 1571
    move v0, p0

    :goto_6
    float-to-double v1, v0

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_f

    .line 1572
    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_6

    .line 1574
    :cond_f
    :goto_f
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1a

    .line 1575
    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_f

    .line 1577
    :cond_1a
    return v0
.end method

.method static synthetic j()F
    .registers 1

    .prologue
    .line 35
    sget v0, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    return v0
.end method


# virtual methods
.method public declared-synchronized a(FFFFFZ)F
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 696
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dM;

    if-eqz v0, :cond_1d

    .line 697
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dM;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/dM;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 707
    :goto_19
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->i:F
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3f

    .line 708
    monitor-exit p0

    return v0

    .line 700
    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dM;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dM;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;)V

    .line 703
    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/dM;->a(FFFFFFZ)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 704
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3f

    move v0, v1

    goto :goto_19

    .line 696
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FFFI)F
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 760
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->i:F

    .line 761
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dL;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/dL;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;FFFI)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    .line 764
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    add-float/2addr v0, p1

    sget v1, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public a(FI)F
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 738
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 739
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 743
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 744
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    return v0
.end method

.method public a(Ln/Q;)F
    .registers 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/n;->a()Lcom/google/android/maps/driveabout/vector/o;

    move-result-object v0

    .line 285
    if-nez v0, :cond_b

    sget v0, Lcom/google/android/maps/driveabout/vector/dI;->d:F

    :goto_a
    return v0

    :cond_b
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/o;->a(Ln/Q;)F

    move-result v0

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 551
    .line 552
    monitor-enter p0

    .line 553
    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/F;

    if-eqz v1, :cond_6a

    .line 554
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/F;

    .line 556
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/F;->a()I

    move-result v1

    .line 557
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/F;->a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    .line 558
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/F;->a()I

    move-result v0

    or-int/2addr v0, v1

    .line 581
    :goto_2c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 583
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->l:Z

    if-eqz v1, :cond_5b

    if-nez v0, :cond_5b

    .line 584
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->p:Lcom/google/android/maps/driveabout/vector/cs;

    if-eqz v1, :cond_58

    .line 585
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->m:Lcom/google/android/maps/driveabout/vector/cY;

    if-nez v1, :cond_4b

    .line 589
    new-instance v1, Lcom/google/android/maps/driveabout/vector/dP;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/ck;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/ck;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/dP;-><init>(Lcom/google/android/maps/driveabout/vector/df;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->m:Lcom/google/android/maps/driveabout/vector/cY;

    .line 594
    :cond_4b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->m:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/vector/cY;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->p:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    invoke-interface {v2, v3, v1}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/l;Ljava/util/List;)V

    .line 599
    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->l:Z

    .line 601
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_87

    .line 603
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->o:Lcom/google/android/maps/driveabout/vector/ee;

    if-eqz v1, :cond_69

    .line 605
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->o:Lcom/google/android/maps/driveabout/vector/ee;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/ee;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 608
    :cond_69
    return v0

    .line 575
    :cond_6a
    :try_start_6a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    .line 577
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->k:Z

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2c

    .line 601
    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_87

    throw v0
.end method

.method public declared-synchronized a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 649
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dN;

    if-eqz v0, :cond_10

    .line 650
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dN;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dN;->a(FF)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    .line 656
    :goto_e
    monitor-exit p0

    return-void

    .line 652
    :cond_10
    :try_start_10
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dN;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dN;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 653
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dN;->a(FF)V

    .line 654
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    .line 649
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 3
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->n:Lcom/google/android/maps/driveabout/vector/cH;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->q:Z

    .line 236
    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cs;)V
    .registers 3
    .parameter

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->p:Lcom/google/android/maps/driveabout/vector/cs;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ee;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->o:Lcom/google/android/maps/driveabout/vector/ee;

    .line 265
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 415
    .line 416
    if-nez p2, :cond_7

    const/4 v0, 0x0

    .line 417
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;II)V

    .line 418
    return-void

    .line 416
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;II)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x442f

    const/high16 v8, 0x4100

    const/4 v0, 0x0

    .line 436
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->q:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 522
    :goto_12
    return-void

    .line 439
    :cond_13
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->q:Z

    if-eqz v1, :cond_19

    move p3, v0

    move p2, v0

    .line 444
    :cond_19
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->q:Z

    .line 446
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 447
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/l;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v6

    .line 449
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->i:F

    .line 451
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    .line 452
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 453
    invoke-virtual {v2}, Lt/k;->y()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v2}, Lt/k;->z()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4f

    .line 455
    :cond_4b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    goto :goto_12

    .line 460
    :cond_4f
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 461
    const/16 v4, 0x1e

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 462
    const/high16 v4, 0x4000

    shr-int v2, v4, v2

    .line 463
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln/Q;->c(Ln/Q;)F

    move-result v5

    .line 464
    int-to-float v4, v2

    div-float v7, v5, v4

    .line 465
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/dI;->r:I

    int-to-float v4, v4

    cmpg-float v4, v7, v4

    if-gtz v4, :cond_88

    const/4 v4, 0x1

    .line 467
    :goto_80
    if-eqz v4, :cond_a7

    .line 468
    if-nez p2, :cond_8a

    .line 469
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    goto :goto_12

    :cond_88
    move v4, v0

    .line 465
    goto :goto_80

    .line 472
    :cond_8a
    if-ne p2, v10, :cond_e5

    .line 474
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 475
    div-float/2addr v0, v8

    .line 476
    const/high16 v2, 0x3f40

    mul-float/2addr v0, v2

    const/high16 v2, 0x3fc0

    add-float/2addr v0, v2

    .line 479
    mul-float/2addr v0, v9

    float-to-int v3, v0

    .line 482
    :goto_99
    const/4 v5, 0x0

    .line 483
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dJ;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dJ;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/m;IZF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    goto/16 :goto_12

    .line 488
    :cond_a7
    if-nez p3, :cond_ae

    .line 489
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    goto/16 :goto_12

    .line 492
    :cond_ae
    if-ne p3, v10, :cond_e3

    .line 498
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->r:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    const/high16 v3, 0x4e80

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dI;->r:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 500
    const v2, 0x40833333

    mul-float/2addr v0, v2

    const v2, 0x3fb33333

    add-float/2addr v0, v2

    .line 502
    mul-float/2addr v0, v9

    float-to-int v0, v0

    const/16 v2, 0x9c4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 507
    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->s:F

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 510
    :goto_d4
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/vector/dI;->a(F)F

    move-result v5

    .line 516
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dJ;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dJ;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/m;IZF)V

    invoke-direct {p0, v0, v6}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    goto/16 :goto_12

    :cond_e3
    move v3, p3

    goto :goto_d4

    :cond_e5
    move v3, p2

    goto :goto_99
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    .line 240
    return-void
.end method

.method public a(Ln/B;)V
    .registers 3
    .parameter

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->t:Ll/q;

    invoke-virtual {v0, p1}, Ll/q;->a(Ln/B;)V

    .line 1591
    return-void
.end method

.method public a(Ln/Q;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 331
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 333
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 334
    return-void
.end method

.method public a(Ln/aa;IIFI)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4380

    const/4 v3, 0x0

    .line 366
    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    .line 379
    :cond_7
    :goto_7
    return-void

    .line 369
    :cond_8
    invoke-virtual {p1}, Ln/aa;->f()Ln/Q;

    move-result-object v1

    .line 370
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    .line 372
    invoke-virtual {p1}, Ln/aa;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, p4

    int-to-float v4, p3

    div-float/2addr v2, v4

    .line 374
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 375
    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/vector/dI;->b:F

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    .line 377
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 378
    invoke-virtual {p0, v0, p5}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_7
.end method

.method public declared-synchronized b(FFFFFZ)F
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dM;

    if-eqz v0, :cond_1b

    .line 814
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dM;

    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/dM;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_38

    .line 820
    :goto_19
    monitor-exit p0

    return v0

    .line 817
    :cond_1b
    :try_start_1b
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dM;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dM;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;)V

    .line 819
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    .line 820
    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/dM;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_38

    goto :goto_19

    .line 813
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FI)F
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 790
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 791
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    add-float/2addr v0, p1

    .line 792
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f(F)F

    move-result v4

    .line 793
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 796
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 797
    return v4
.end method

.method public declared-synchronized b(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 673
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dK;

    if-eqz v0, :cond_10

    .line 674
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dK;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dK;->a(FF)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    .line 680
    :goto_e
    monitor-exit p0

    return-void

    .line 676
    :cond_10
    :try_start_10
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dK;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/m;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dK;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 677
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dK;->a(FF)V

    .line 678
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    .line 673
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->h:Lcom/google/android/maps/driveabout/vector/l;

    return-object v0
.end method

.method public c(F)V
    .registers 3
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/n;->a(F)V

    .line 297
    return-void
.end method

.method public c(FI)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->e:Z

    if-eqz v0, :cond_24

    .line 851
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dO;

    if-eqz v0, :cond_12

    .line 852
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dO;->a(F)V

    .line 867
    :goto_11
    return-void

    .line 854
    :cond_12
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dO;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dO;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;)V

    .line 856
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dI;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/l;)V

    .line 857
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dO;->a(F)V

    goto :goto_11

    .line 860
    :cond_24
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    .line 861
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    add-float v3, v0, p1

    .line 862
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 865
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_11
.end method

.method public d(F)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/dI;->s:F

    .line 323
    return-void
.end method

.method public e()F
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->f:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/n;->a()Lcom/google/android/maps/driveabout/vector/o;

    move-result-object v0

    .line 291
    if-nez v0, :cond_b

    const/high16 v0, 0x4000

    :goto_a
    return v0

    :cond_b
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/o;->a()F

    move-result v0

    goto :goto_a
.end method

.method public f()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->g:Lcom/google/android/maps/driveabout/vector/l;

    return-object v0
.end method

.method public g()F
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->i:F

    return v0
.end method

.method public declared-synchronized h()V
    .registers 2

    .prologue
    .line 659
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/dN;

    if-eqz v0, :cond_e

    .line 662
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->j:Lcom/google/android/maps/driveabout/vector/m;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dN;->d()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 664
    :cond_e
    monitor-exit p0

    return-void

    .line 659
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dI;->k:Z

    return v0
.end method
