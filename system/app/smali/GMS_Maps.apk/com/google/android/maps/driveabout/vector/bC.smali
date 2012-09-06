.class public Lcom/google/android/maps/driveabout/vector/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:F

.field private static final t:Ljava/lang/ThreadLocal;

.field private static final u:[I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static final y:[[I


# instance fields
.field private final b:Ln/Q;

.field private final c:Ln/Q;

.field private final d:Ln/Q;

.field private final e:Ln/Q;

.field private final f:Ln/Q;

.field private final g:Ln/Q;

.field private final h:Ln/Q;

.field private final i:Ln/Q;

.field private final j:Ln/Q;

.field private final k:Ln/Q;

.field private final l:Ln/aB;

.field private final m:Ln/aB;

.field private final n:Ln/aB;

.field private final o:Ln/aB;

.field private final p:Ln/aB;

.field private final q:Ln/aB;

.field private final r:Ln/aB;

.field private final s:Ln/aB;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x8

    .line 30
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    .line 54
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bd;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->t:Ljava/lang/ThreadLocal;

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->u:[I

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->v:[I

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->w:[I

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->x:[I

    .line 460
    const/16 v0, 0x10

    new-array v0, v0, [[I

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->y:[[I

    .line 461
    return-void

    .line 96
    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
    .end array-data

    .line 104
    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    .line 112
    :array_60
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data

    .line 118
    :array_6c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    .line 63
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    .line 64
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 65
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 66
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    .line 67
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->g:Ln/Q;

    .line 68
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->h:Ln/Q;

    .line 69
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->i:Ln/Q;

    .line 70
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->j:Ln/Q;

    .line 71
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->k:Ln/Q;

    .line 72
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->l:Ln/aB;

    .line 73
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->m:Ln/aB;

    .line 74
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->n:Ln/aB;

    .line 75
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->o:Ln/aB;

    .line 76
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->p:Ln/aB;

    .line 77
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->q:Ln/aB;

    .line 78
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->r:Ln/aB;

    .line 79
    new-instance v0, Ln/aB;

    invoke-direct {v0}, Ln/aB;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->s:Ln/aB;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bc;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)I
    .registers 4
    .parameter

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 507
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    .line 509
    :cond_1b
    return v1
.end method

.method public static a(Ln/U;)I
    .registers 3
    .parameter

    .prologue
    .line 425
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 426
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 428
    const/4 v0, 0x6

    .line 433
    :goto_a
    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_a
.end method

.method public static a()Lcom/google/android/maps/driveabout/vector/bc;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bc;

    return-object v0
.end method

.method private a(Ln/Q;Ln/Q;FIZLcom/google/android/maps/driveabout/vector/ea;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 780
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 783
    invoke-static {p2, p1, v0}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 784
    invoke-static {v0, p3, v1}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 787
    invoke-static {p1, v1, v0}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 788
    invoke-interface {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 789
    invoke-static {p1, v1, v0}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 790
    invoke-interface {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 793
    invoke-static {p2, v1, v0}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 794
    invoke-interface {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 795
    invoke-static {p2, v1, v0}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 796
    invoke-interface {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 798
    if-eqz p5, :cond_27

    .line 800
    invoke-interface {p6, p2, p4}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 802
    :cond_27
    return-void
.end method

.method private static a(I)[I
    .registers 8
    .parameter

    .prologue
    const v6, 0x8000

    const/high16 v5, 0x1

    const/4 v1, 0x0

    .line 464
    mul-int/lit8 v0, p0, 0x5

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [I

    .line 466
    div-int v0, v6, p0

    move v2, v0

    move v0, v1

    .line 467
    :goto_10
    array-length v4, v3

    if-ge v0, v4, :cond_3f

    .line 469
    aput v1, v3, v0

    .line 470
    add-int/lit8 v4, v0, 0x1

    aput v2, v3, v4

    .line 471
    add-int/lit8 v4, v0, 0x2

    aput v5, v3, v4

    .line 472
    add-int/lit8 v4, v0, 0x3

    aput v2, v3, v4

    .line 473
    add-int/lit8 v4, v0, 0x4

    aput v5, v3, v4

    .line 474
    add-int/lit8 v4, v0, 0x5

    aput v2, v3, v4

    .line 475
    add-int/lit8 v4, v0, 0x6

    aput v1, v3, v4

    .line 476
    add-int/lit8 v4, v0, 0x7

    aput v2, v3, v4

    .line 477
    add-int/lit8 v4, v0, 0x8

    aput v6, v3, v4

    .line 478
    add-int/lit8 v4, v0, 0x9

    aput v2, v3, v4

    .line 479
    div-int v4, v5, p0

    add-int/2addr v2, v4

    .line 468
    add-int/lit8 v0, v0, 0xa

    goto :goto_10

    .line 481
    :cond_3f
    return-object v3
.end method

.method public static b(Ljava/util/List;)I
    .registers 5
    .parameter

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 520
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 521
    invoke-virtual {v0}, Ln/U;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 522
    add-int/lit8 v0, v2, 0x1

    .line 524
    :goto_20
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    move v1, v0

    .line 525
    goto :goto_6

    .line 526
    :cond_27
    return v1

    :cond_28
    move v0, v2

    goto :goto_20
.end method

.method public static b(Ln/U;)I
    .registers 3
    .parameter

    .prologue
    .line 439
    .line 441
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 442
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 444
    const/16 v0, 0xc

    .line 447
    :goto_b
    return v0

    :cond_c
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method private b(Ln/U;FLn/Q;ILcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/bJ;ZZB)I
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-interface {p5}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    .line 346
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    .line 347
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 348
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 349
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    .line 350
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bc;->g:Ln/Q;

    .line 351
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bc;->h:Ln/Q;

    .line 354
    const/4 v9, 0x0

    invoke-virtual {p1, v9, p3, v2}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 355
    const/4 v9, 0x1

    invoke-virtual {p1, v9, p3, v3}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 360
    invoke-static {v3, v2, v4}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 361
    invoke-static {v4, p2, v5}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 362
    invoke-static {v5, v6}, Ln/S;->a(Ln/Q;Ln/Q;)V

    .line 365
    if-eqz p8, :cond_28

    .line 366
    invoke-static {v2, v6, v2}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 368
    :cond_28
    if-eqz p9, :cond_2d

    .line 369
    invoke-static {v3, v6, v3}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 373
    :cond_2d
    invoke-static {v2, v5, v8}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 374
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 375
    invoke-static {v2, v5, v8}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 376
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 378
    invoke-static {v2, v3, v7}, Ln/S;->e(Ln/Q;Ln/Q;Ln/Q;)V

    .line 379
    invoke-static {v7, v5, v8}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 380
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 381
    invoke-static {v7, v5, v8}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 382
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 384
    invoke-static {v3, v5, v8}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 385
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 386
    invoke-static {v3, v5, v8}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 387
    move/from16 v0, p10

    invoke-interface {p5, v8, p4, v0}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 389
    const/4 v2, 0x6

    .line 394
    const/high16 v3, -0x4180

    invoke-virtual {v4}, Ln/Q;->i()F

    move-result v4

    div-float/2addr v4, p2

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    .line 395
    const/high16 v4, 0x4780

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 396
    if-eqz p8, :cond_bc

    .line 397
    const/4 v4, 0x0

    const/high16 v5, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 398
    const/high16 v4, 0x1

    const/high16 v5, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 403
    :goto_83
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 404
    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 405
    if-eqz p9, :cond_ca

    .line 406
    const/4 v3, 0x0

    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 407
    const/high16 v3, 0x1

    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 414
    :goto_a3
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 415
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 417
    return v2

    .line 400
    :cond_bc
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 401
    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    goto :goto_83

    .line 409
    :cond_ca
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    .line 410
    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a(II)V

    goto :goto_a3
.end method

.method private static b(I)[I
    .registers 3
    .parameter

    .prologue
    .line 492
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->y:[[I

    aget-object v0, v0, p0

    if-nez v0, :cond_10

    .line 493
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->y:[[I

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bc;->a(I)[I

    move-result-object v1

    aput-object v1, v0, p0

    .line 496
    :cond_10
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->y:[[I

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public a(Ln/U;FLn/Q;ILcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/bJ;ZZB)I
    .registers 34
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    const/high16 v4, 0x3f80

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    .line 318
    :cond_7
    :goto_7
    return v3

    .line 153
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ln/U;->b()I

    move-result v11

    .line 154
    const/4 v4, 0x2

    if-ne v11, v4, :cond_15

    .line 155
    invoke-direct/range {p0 .. p10}, Lcom/google/android/maps/driveabout/vector/bc;->b(Ln/U;FLn/Q;ILcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/bJ;ZZB)I

    move-result v4

    add-int/2addr v3, v4

    .line 157
    goto :goto_7

    .line 158
    :cond_15
    const/4 v4, 0x2

    if-lt v11, v4, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    move-object/from16 v16, v0

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->g:Ln/Q;

    move-object/from16 v17, v0

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->h:Ln/Q;

    move-object/from16 v18, v0

    .line 170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bc;->i:Ln/Q;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->j:Ln/Q;

    move-object/from16 v19, v0

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bc;->k:Ln/Q;

    .line 175
    invoke-interface/range {p5 .. p5}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v3

    .line 178
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v12}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 179
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v13}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 184
    invoke-static {v13, v12, v15}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 185
    move/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 186
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Ln/S;->a(Ln/Q;Ln/Q;)V

    .line 191
    invoke-static {v12, v6, v12}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 192
    move-object/from16 v0, v17

    invoke-static {v12, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 193
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 194
    move-object/from16 v0, v17

    invoke-static {v12, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 195
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 196
    invoke-static {v12, v6, v12}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 197
    move-object/from16 v0, v17

    invoke-static {v12, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 198
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 199
    move-object/from16 v0, v17

    invoke-static {v12, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 200
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 201
    sget-object v4, Lcom/google/android/maps/driveabout/vector/bc;->u:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/vector/cO;->a([I)V

    .line 202
    const/4 v9, 0x4

    .line 206
    if-eqz p8, :cond_1e5

    .line 207
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v3, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v4, v7, v8}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 212
    :goto_be
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v7, v3, 0x3

    add-int/lit8 v8, v3, 0x4

    add-int/lit8 v10, v3, 0x5

    move-object/from16 v0, p7

    invoke-interface {v0, v4, v7, v8, v10}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 213
    add-int/lit8 v8, v3, 0x4

    .line 222
    mul-float v20, p2, p2

    .line 223
    const/4 v3, 0x1

    move v10, v3

    :goto_d1
    add-int/lit8 v3, v11, -0x1

    if-ge v10, v3, :cond_206

    .line 225
    add-int/lit8 v3, v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v14}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 226
    move-object/from16 v0, v16

    invoke-static {v14, v13, v0}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 227
    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 228
    invoke-static/range {v15 .. v16}, Ln/S;->c(Ln/Q;Ln/Q;)J

    move-result-wide v3

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-lez v3, :cond_1f4

    const/4 v3, 0x1

    .line 231
    :goto_f7
    const/4 v7, 0x1

    .line 232
    invoke-static/range {v17 .. v19}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 233
    invoke-static/range {v18 .. v19}, Ln/Q;->b(Ln/Q;Ln/Q;)F

    move-result v4

    .line 237
    const/high16 v21, 0x3f80

    cmpl-float v21, v4, v21

    if-lez v21, :cond_269

    invoke-static/range {v15 .. v16}, Ln/Q;->b(Ln/Q;Ln/Q;)F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_269

    .line 238
    div-float v4, v20, v4

    .line 239
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Ln/Q;->a(Ln/Q;FLn/Q;)V

    .line 245
    move-object/from16 v0, v19

    invoke-static {v13, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 246
    move-object/from16 v0, v19

    invoke-static {v13, v0, v6}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 250
    if-eqz v3, :cond_1f7

    move-object v4, v5

    .line 251
    :goto_125
    invoke-static {v13, v12, v4}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v21

    const/high16 v22, 0x3f00

    cmpg-float v21, v21, v22

    if-gez v21, :cond_269

    invoke-static {v13, v14, v4}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v4

    const/high16 v21, 0x3f00

    cmpg-float v4, v4, v21

    if-gez v4, :cond_269

    .line 257
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 258
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v6, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 259
    add-int/lit8 v9, v9, 0x2

    .line 260
    sget-object v4, Lcom/google/android/maps/driveabout/vector/bc;->w:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/vector/cO;->a([I)V

    .line 261
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v7, v8, 0x2

    add-int/lit8 v21, v8, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v21

    invoke-interface {v0, v8, v4, v7, v1}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 262
    add-int/lit8 v7, v8, 0x2

    .line 263
    const/4 v4, 0x0

    move v8, v4

    move v4, v7

    move v7, v9

    .line 266
    :goto_167
    if-eqz v8, :cond_265

    .line 268
    move-object/from16 v0, v17

    invoke-static {v13, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 269
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 270
    move-object/from16 v0, v17

    invoke-static {v13, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 271
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 272
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v13, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 273
    move-object/from16 v0, v18

    invoke-static {v13, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 274
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 275
    move-object/from16 v0, v18

    invoke-static {v13, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 276
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 277
    sget-object v8, Lcom/google/android/maps/driveabout/vector/bc;->x:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v8}, Lcom/google/android/maps/driveabout/vector/cO;->a([I)V

    .line 278
    add-int/lit8 v7, v7, 0x5

    .line 279
    if-eqz v3, :cond_1fa

    .line 280
    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v4, 0x4

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v8, v9}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 284
    :goto_1c0
    add-int/lit8 v3, v4, 0x3

    add-int/lit8 v8, v4, 0x4

    add-int/lit8 v9, v4, 0x5

    add-int/lit8 v21, v4, 0x6

    move-object/from16 v0, p7

    move/from16 v1, v21

    invoke-interface {v0, v3, v8, v9, v1}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 285
    add-int/lit8 v3, v4, 0x5

    move v4, v7

    .line 289
    :goto_1d2
    invoke-virtual/range {v17 .. v18}, Ln/Q;->b(Ln/Q;)V

    .line 290
    invoke-virtual/range {v15 .. v16}, Ln/Q;->b(Ln/Q;)V

    .line 291
    invoke-virtual {v12, v13}, Ln/Q;->b(Ln/Q;)V

    .line 292
    invoke-virtual {v13, v14}, Ln/Q;->b(Ln/Q;)V

    .line 223
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v8, v3

    move v9, v4

    goto/16 :goto_d1

    .line 210
    :cond_1e5
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v3, 0x2

    add-int/lit8 v10, v3, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v4, v7, v8, v10}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    goto/16 :goto_be

    .line 228
    :cond_1f4
    const/4 v3, 0x0

    goto/16 :goto_f7

    :cond_1f7
    move-object v4, v6

    .line 250
    goto/16 :goto_125

    .line 282
    :cond_1fa
    add-int/lit8 v3, v4, 0x0

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v8, v9}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    goto :goto_1c0

    .line 296
    :cond_206
    move-object/from16 v0, v18

    invoke-static {v14, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 297
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 298
    move-object/from16 v0, v18

    invoke-static {v14, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 299
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 300
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ln/S;->a(Ln/Q;Ln/Q;)V

    .line 301
    invoke-static {v14, v6, v14}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 302
    move-object/from16 v0, v18

    invoke-static {v14, v0, v5}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 303
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 304
    move-object/from16 v0, v18

    invoke-static {v14, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 305
    move-object/from16 v0, p5

    move/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;IB)V

    .line 306
    sget-object v3, Lcom/google/android/maps/driveabout/vector/bc;->v:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/cO;->a([I)V

    .line 307
    add-int/lit8 v3, v9, 0x4

    .line 309
    if-eqz p9, :cond_25e

    .line 311
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    add-int/lit8 v6, v8, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v8, v4, v5, v6}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    goto/16 :goto_7

    .line 314
    :cond_25e
    move-object/from16 v0, p7

    invoke-interface {v0, v8, v8, v8, v8}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    goto/16 :goto_7

    :cond_265
    move v3, v4

    move v4, v7

    goto/16 :goto_1d2

    :cond_269
    move v4, v8

    move v8, v7

    move v7, v9

    goto/16 :goto_167
.end method

.method public a(IZI[ILcom/google/android/maps/driveabout/vector/cO;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 742
    add-int/lit8 v3, p1, -0x1

    .line 744
    if-eqz p2, :cond_29

    .line 745
    const/4 v0, 0x5

    .line 749
    :goto_7
    mul-int/2addr v3, v0

    invoke-interface {p5}, Lcom/google/android/maps/driveabout/vector/cO;->g()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p5, v3}, Lcom/google/android/maps/driveabout/vector/cO;->c(I)V

    .line 752
    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/bc;->b(I)[I

    move-result-object v3

    .line 754
    if-eqz p4, :cond_19

    array-length v4, p4

    if-ne v4, v2, :cond_2e

    .line 755
    :cond_19
    if-nez p4, :cond_2b

    .line 756
    :goto_1b
    if-ge v2, p1, :cond_3f

    .line 757
    mul-int/lit8 v4, v1, 0x5

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    invoke-interface {p5, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/cO;->a([III)V

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 747
    :cond_29
    const/4 v0, 0x4

    goto :goto_7

    .line 755
    :cond_2b
    aget v1, p4, v1

    goto :goto_1b

    :cond_2e
    move v1, v2

    .line 762
    :goto_2f
    if-ge v1, p1, :cond_3f

    .line 763
    aget v2, p4, v1

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v0, 0x2

    invoke-interface {p5, v3, v2, v4}, Lcom/google/android/maps/driveabout/vector/cO;->a([III)V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 769
    :cond_3f
    return-void
.end method

.method public a(Ln/U;FFLn/Q;IIILcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cM;)V
    .registers 46
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1009
    invoke-virtual/range {p1 .. p1}, Ln/U;->b()I

    move-result v18

    .line 1013
    const/4 v3, 0x1

    move/from16 v0, v18

    if-gt v0, v3, :cond_a

    .line 1282
    :cond_9
    return-void

    .line 1016
    :cond_a
    add-int/lit8 v3, v18, -0x1

    .line 1017
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v8

    .line 1018
    mul-int/lit8 v4, v18, 0x5

    .line 1019
    invoke-virtual/range {p1 .. p1}, Ln/U;->e()Z

    move-result v19

    .line 1022
    add-int v5, v8, v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(I)V

    .line 1023
    if-eqz p10, :cond_29

    .line 1024
    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/cM;->g()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cM;->c(I)V

    .line 1026
    :cond_29
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/bI;->b()I

    move-result v4

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/bI;->b(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    move-object/from16 v20, v0

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    move-object/from16 v21, v0

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    move-object/from16 v22, v0

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    move-object/from16 v23, v0

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    move-object/from16 v24, v0

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->g:Ln/Q;

    move-object/from16 v25, v0

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->h:Ln/Q;

    move-object/from16 v26, v0

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->l:Ln/aB;

    move-object/from16 v27, v0

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->m:Ln/aB;

    move-object/from16 v28, v0

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->n:Ln/aB;

    move-object/from16 v29, v0

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->o:Ln/aB;

    move-object/from16 v30, v0

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->p:Ln/aB;

    move-object/from16 v31, v0

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bc;->q:Ln/aB;

    move-object/from16 v32, v0

    .line 1055
    const/4 v6, -0x1

    .line 1056
    const/4 v5, -0x1

    .line 1057
    const/4 v7, -0x1

    .line 1058
    const/4 v4, -0x1

    .line 1066
    const/4 v10, -0x1

    .line 1070
    add-float v3, p2, p3

    .line 1071
    move/from16 v0, p6

    int-to-float v9, v0

    mul-float v9, v9, p3

    move/from16 v0, p7

    int-to-float v11, v0

    mul-float v11, v11, p2

    add-float/2addr v9, v11

    div-float v3, v9, v3

    float-to-int v0, v3

    move/from16 v33, v0

    .line 1084
    const/4 v3, 0x0

    move v11, v3

    move v12, v10

    move v13, v4

    move v14, v7

    move v4, v8

    :goto_a2
    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1087
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 1090
    add-int/lit8 v7, v11, -0x1

    .line 1091
    add-int/lit8 v3, v11, 0x1

    .line 1095
    if-eqz v19, :cond_3fe

    .line 1096
    if-gez v7, :cond_b9

    .line 1097
    add-int/lit8 v7, v18, -0x2

    .line 1099
    :cond_b9
    move/from16 v0, v18

    if-lt v3, v0, :cond_3fe

    .line 1100
    const/4 v3, 0x1

    move v8, v3

    move v3, v7

    .line 1104
    :goto_c0
    if-ltz v3, :cond_1da

    .line 1105
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bc;->r:Ln/aB;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ln/aB;->a(Ln/Q;Ln/Q;)Ln/aB;

    move-result-object v3

    move-object v7, v3

    .line 1111
    :goto_d8
    move/from16 v0, v18

    if-ge v8, v0, :cond_1de

    .line 1112
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Ln/U;->a(ILn/Q;Ln/Q;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bc;->s:Ln/aB;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ln/aB;->a(Ln/Q;Ln/Q;)Ln/aB;

    move-result-object v3

    move-object v8, v3

    .line 1120
    :goto_f2
    const/4 v3, 0x1

    .line 1122
    if-eqz v7, :cond_1e7

    if-eqz v8, :cond_1e7

    .line 1124
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->d()Ln/aB;

    .line 1125
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->d()Ln/aB;

    .line 1128
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ln/aB;->b(Ln/aB;)Ln/aB;

    .line 1129
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Ln/aB;->b(FF)Z

    move-result v9

    if-eqz v9, :cond_1e2

    .line 1130
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->e()Ln/aB;

    move/from16 v17, v3

    .line 1144
    :goto_12d
    if-eqz v17, :cond_20f

    .line 1145
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    move/from16 v0, p2

    neg-float v7, v0

    invoke-virtual {v3, v7}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1146
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1148
    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1149
    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1151
    if-eqz p10, :cond_17e

    .line 1152
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1153
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1156
    :cond_17e
    add-int/lit8 v3, v4, 0x1

    .line 1157
    add-int/lit8 v7, v3, 0x1

    move v8, v5

    move v9, v6

    move v10, v7

    move v7, v3

    move v5, v3

    move v6, v4

    move v3, v4

    .line 1255
    :goto_189
    add-int/lit8 v15, v10, 0x1

    .line 1256
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1257
    if-eqz p10, :cond_1a1

    .line 1258
    const/16 v16, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1263
    :cond_1a1
    if-eqz v19, :cond_3fa

    add-int/lit8 v16, v18, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_3fa

    const/16 v16, 0x1

    .line 1264
    :goto_1ab
    if-nez v17, :cond_1b9

    if-nez v16, :cond_1b9

    .line 1266
    move-object/from16 v0, p9

    invoke-virtual {v0, v9, v10, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1267
    move-object/from16 v0, p9

    invoke-virtual {v0, v10, v8, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1269
    :cond_1b9
    if-lez v11, :cond_1cf

    .line 1271
    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v12, v10}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1272
    move-object/from16 v0, p9

    invoke-virtual {v0, v12, v14, v10}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1273
    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v10, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1274
    move-object/from16 v0, p9

    invoke-virtual {v0, v10, v14, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 1084
    :cond_1cf
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v12, v10

    move v13, v4

    move v14, v7

    move v5, v8

    move v6, v9

    move v4, v15

    goto/16 :goto_a2

    .line 1108
    :cond_1da
    const/4 v3, 0x0

    move-object v7, v3

    goto/16 :goto_d8

    .line 1115
    :cond_1de
    const/4 v3, 0x0

    move-object v8, v3

    goto/16 :goto_f2

    .line 1132
    :cond_1e2
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_12d

    .line 1134
    :cond_1e7
    if-eqz v7, :cond_1fa

    .line 1137
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->e()Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->d()Ln/aB;

    move/from16 v17, v3

    goto/16 :goto_12d

    .line 1139
    :cond_1fa
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->e()Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->d()Ln/aB;

    move-result-object v9

    invoke-virtual {v9}, Ln/aB;->a()Ln/aB;

    move/from16 v17, v3

    goto/16 :goto_12d

    .line 1164
    :cond_20f
    invoke-virtual/range {v29 .. v29}, Ln/aB;->d()Ln/aB;

    .line 1167
    invoke-virtual {v7, v8}, Ln/aB;->d(Ln/aB;)Z

    move-result v5

    .line 1170
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->e()Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->d()Ln/aB;

    .line 1173
    invoke-virtual/range {v29 .. v30}, Ln/aB;->c(Ln/aB;)F

    move-result v6

    .line 1175
    if-eqz v5, :cond_33d

    move/from16 v3, p2

    :goto_22b
    neg-float v9, v6

    div-float/2addr v3, v9

    .line 1185
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v9

    invoke-virtual {v9, v3}, Ln/aB;->a(F)Ln/aB;

    .line 1186
    invoke-virtual {v7}, Ln/aB;->c()F

    move-result v9

    .line 1187
    invoke-virtual {v8}, Ln/aB;->c()F

    move-result v10

    .line 1188
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v15

    invoke-virtual {v15}, Ln/aB;->d()Ln/aB;

    move-result-object v15

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ln/aB;->c(Ln/aB;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1189
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ln/aB;->d()Ln/aB;

    move-result-object v16

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ln/aB;->c(Ln/aB;)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1190
    div-float/2addr v9, v15

    div-float v10, v10, v16

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1191
    const/high16 v10, 0x3f80

    cmpg-float v10, v9, v10

    if-gez v10, :cond_280

    .line 1192
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v3, v6

    .line 1198
    :cond_280
    if-eqz v5, :cond_341

    .line 1199
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v5

    move/from16 v0, p3

    neg-float v6, v0

    invoke-virtual {v5, v6}, Ln/aB;->a(F)Ln/aB;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1200
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v5

    neg-float v3, v3

    invoke-virtual {v5, v3}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1201
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->e()Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->d()Ln/aB;

    move-result-object v3

    move/from16 v0, p3

    neg-float v5, v0

    invoke-virtual {v3, v5}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1202
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->e()Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->d()Ln/aB;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1204
    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1205
    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1206
    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1207
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1209
    if-eqz p10, :cond_329

    .line 1210
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1211
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1212
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1213
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1216
    :cond_329
    add-int/lit8 v3, v4, 0x1

    .line 1217
    add-int/lit8 v6, v3, 0x1

    .line 1218
    add-int/lit8 v5, v6, 0x1

    .line 1219
    add-int/lit8 v7, v5, 0x1

    move v8, v5

    move v9, v6

    move v10, v7

    move v7, v6

    move v6, v3

    move/from16 v34, v3

    move v3, v4

    move/from16 v4, v34

    .line 1224
    goto/16 :goto_189

    :cond_33d
    move/from16 v3, p3

    .line 1175
    goto/16 :goto_22b

    .line 1226
    :cond_341
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v5

    invoke-virtual {v5, v3}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1227
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    move/from16 v0, p2

    neg-float v5, v0

    invoke-virtual {v3, v5}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1228
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->e()Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->d()Ln/aB;

    move-result-object v3

    move/from16 v0, p2

    neg-float v5, v0

    invoke-virtual {v3, v5}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1229
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ln/aB;->a(Ln/aB;)Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->e()Ln/aB;

    move-result-object v3

    invoke-virtual {v3}, Ln/aB;->d()Ln/aB;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ln/aB;->a(F)Ln/aB;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Ln/aB;->a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;

    .line 1231
    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1232
    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1233
    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1234
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 1236
    if-eqz p10, :cond_3e7

    .line 1237
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1238
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1239
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1240
    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 1243
    :cond_3e7
    add-int/lit8 v5, v4, 0x1

    .line 1244
    add-int/lit8 v6, v5, 0x1

    .line 1245
    add-int/lit8 v3, v6, 0x1

    .line 1246
    add-int/lit8 v7, v3, 0x1

    move v8, v3

    move v9, v6

    move v10, v7

    move v7, v5

    move/from16 v34, v3

    move v3, v4

    move/from16 v4, v34

    .line 1251
    goto/16 :goto_189

    .line 1263
    :cond_3fa
    const/16 v16, 0x0

    goto/16 :goto_1ab

    :cond_3fe
    move v8, v3

    move v3, v7

    goto/16 :goto_c0
.end method

.method public a(Ln/U;FLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/cO;)V
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-virtual/range {p1 .. p1}, Ln/U;->b()I

    move-result v6

    .line 844
    add-int/lit8 v7, v6, -0x1

    .line 845
    invoke-interface/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v8

    .line 846
    mul-int/lit8 v2, v7, 0x4

    .line 849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    .line 851
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 852
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 853
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    .line 856
    invoke-interface/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/ea;->a(I)V

    .line 857
    if-eqz p8, :cond_42

    .line 858
    invoke-interface/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/cO;->g()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/cO;->c(I)V

    .line 859
    if-eqz p9, :cond_42

    .line 860
    invoke-interface/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/cO;->g()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/cO;->c(I)V

    .line 866
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ln/U;->a(ILn/Q;)V

    .line 867
    move-object/from16 v0, p3

    invoke-static {v5, v0, v5}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 868
    const/4 v3, 0x0

    .line 869
    const/4 v2, 0x1

    move v15, v2

    move v2, v3

    move v3, v15

    :goto_52
    if-ge v3, v6, :cond_e1

    .line 870
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ln/U;->a(ILn/Q;)V

    .line 871
    move-object/from16 v0, p3

    invoke-static {v4, v0, v4}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 874
    invoke-static {v4, v5, v9}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 875
    move/from16 v0, p2

    neg-float v12, v0

    invoke-static {v9, v12, v10}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 878
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v5, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 879
    invoke-static {v5, v10, v11}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 880
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v11, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 883
    invoke-static {v4, v10, v11}, Ln/S;->c(Ln/Q;Ln/Q;Ln/Q;)V

    .line 884
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v11, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 885
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(Ln/Q;I)V

    .line 887
    if-eqz p8, :cond_da

    .line 889
    invoke-virtual {v9}, Ln/Q;->i()F

    move-result v12

    move/from16 v0, p4

    int-to-float v13, v0

    div-float/2addr v12, v13

    mul-float v12, v12, p5

    .line 890
    const/4 v13, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v13, v2}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 891
    const/high16 v13, 0x3f80

    move-object/from16 v0, p8

    invoke-interface {v0, v13, v2}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 892
    if-eqz p9, :cond_b7

    .line 893
    const/4 v13, 0x0

    sget v14, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v14}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 894
    sget v13, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    sget v14, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v14}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 896
    :cond_b7
    add-float/2addr v2, v12

    .line 897
    const/high16 v12, 0x3f80

    move-object/from16 v0, p8

    invoke-interface {v0, v12, v2}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 898
    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v12, v2}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 899
    if-eqz p9, :cond_da

    .line 900
    sget v12, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    sget v13, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v13}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 901
    const/4 v12, 0x0

    sget v13, Lcom/google/android/maps/driveabout/vector/bc;->a:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v13}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 869
    :cond_da
    add-int/lit8 v3, v3, 0x1

    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    goto/16 :goto_52

    .line 912
    :cond_e1
    mul-int/lit8 v2, v7, 0x2

    .line 913
    add-int/lit8 v3, v7, -0x1

    .line 914
    invoke-interface/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/bJ;->b()I

    move-result v6

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v6

    .line 916
    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/bJ;->b(I)V

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 919
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 920
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    .line 924
    const/4 v2, 0x0

    .line 925
    :goto_ff
    mul-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v8

    .line 926
    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_11e

    .line 927
    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 928
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 934
    :goto_119
    add-int/lit8 v11, v7, -0x1

    if-ne v2, v11, :cond_131

    .line 955
    return-void

    .line 930
    :cond_11e
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 931
    add-int/lit8 v11, v10, 0x3

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    goto :goto_119

    .line 940
    :cond_131
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ln/U;->a(ILn/Q;)V

    .line 941
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4}, Ln/U;->a(ILn/Q;)V

    .line 942
    add-int/lit8 v11, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Ln/U;->a(ILn/Q;)V

    .line 943
    invoke-static {v4, v5, v6}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 944
    invoke-static {v3, v4, v9}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 945
    invoke-static {v6, v9}, Ln/S;->c(Ln/Q;Ln/Q;)J

    move-result-wide v11

    .line 946
    long-to-float v11, v11

    mul-float v11, v11, p2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_168

    .line 947
    add-int/lit8 v11, v10, 0x4

    .line 948
    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_16b

    .line 949
    add-int/lit8 v12, v10, 0x3

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v12, v10, v11}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 924
    :cond_168
    :goto_168
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 951
    :cond_16b
    add-int/lit8 v12, v10, 0x2

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v12, v10, v11}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    goto :goto_168
.end method

.method public a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-virtual/range {p1 .. p1}, Ln/U;->b()I

    move-result v11

    .line 569
    add-int/lit8 v12, v11, -0x1

    .line 570
    invoke-interface/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v13

    .line 572
    if-eqz p3, :cond_96

    .line 573
    const/4 v1, 0x5

    move v8, v1

    .line 577
    :goto_e
    mul-int v14, v8, v12

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bc;->b:Ln/Q;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bc;->c:Ln/Q;

    .line 583
    invoke-interface/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/ea;->a(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 589
    if-eqz p9, :cond_32

    .line 590
    invoke-interface/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/cO;->g()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cO;->c(I)V

    .line 594
    :cond_32
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ln/U;->a(ILn/Q;)V

    .line 595
    move-object/from16 v0, p4

    invoke-static {v2, v0, v2}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 596
    const/4 v9, 0x0

    .line 597
    const/4 v1, 0x1

    move v10, v1

    :goto_40
    if-ge v10, v11, :cond_9a

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Ln/U;->a(ILn/Q;)V

    .line 599
    move-object/from16 v0, p4

    invoke-static {v3, v0, v3}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p3

    move-object/from16 v7, p7

    .line 600
    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/Q;Ln/Q;FIZLcom/google/android/maps/driveabout/vector/ea;)V

    .line 603
    if-eqz p9, :cond_1a8

    .line 605
    invoke-static {v3, v2, v15}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 607
    invoke-virtual {v15}, Ln/Q;->i()F

    move-result v1

    move/from16 v0, p5

    int-to-float v4, v0

    div-float/2addr v1, v4

    mul-float v1, v1, p6

    .line 608
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v9}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 609
    const/high16 v4, 0x3f80

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v9}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 610
    add-float/2addr v1, v9

    .line 611
    const/high16 v4, 0x3f80

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 612
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 614
    if-eqz p3, :cond_8c

    .line 615
    const/high16 v4, 0x3f00

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cO;->a(FF)V

    .line 597
    :cond_8c
    :goto_8c
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v9, v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_40

    .line 575
    :cond_96
    const/4 v1, 0x4

    move v8, v1

    goto/16 :goto_e

    .line 640
    :cond_9a
    if-eqz p8, :cond_19b

    .line 641
    add-int v1, v13, v14

    .line 642
    const/16 v4, 0x7fff

    if-le v1, v4, :cond_c1

    .line 643
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required, but we can only store "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x7fff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_c1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Ln/Q;

    .line 647
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Ln/Q;

    .line 648
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Ln/Q;

    .line 649
    mul-int/lit8 v4, v12, 0x2

    .line 650
    invoke-virtual/range {p1 .. p1}, Ln/U;->e()Z

    move-result v1

    if-eqz v1, :cond_102

    const/4 v1, 0x0

    :goto_d6
    sub-int v1, v12, v1

    .line 651
    if-eqz p3, :cond_104

    .line 652
    invoke-interface/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bJ;->b()I

    move-result v9

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v9

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/bJ;->b(I)V

    .line 659
    :goto_e7
    const/4 v1, 0x0

    :goto_e8
    if-ge v1, v12, :cond_111

    .line 660
    mul-int v4, v1, v8

    add-int/2addr v4, v13

    .line 661
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v4, 0x2

    move-object/from16 v0, p8

    invoke-interface {v0, v4, v9, v10}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 662
    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v4, 0x3

    move-object/from16 v0, p8

    invoke-interface {v0, v4, v9, v10}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 650
    :cond_102
    const/4 v1, 0x1

    goto :goto_d6

    .line 655
    :cond_104
    invoke-interface/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bJ;->b()I

    move-result v1

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/bJ;->b(I)V

    goto :goto_e7

    .line 664
    :cond_111
    if-eqz p3, :cond_19b

    .line 669
    const/4 v1, 0x0

    move v4, v1

    :goto_115
    add-int/lit8 v1, v12, -0x1

    if-ge v4, v1, :cond_15f

    .line 673
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Ln/U;->a(ILn/Q;)V

    .line 674
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Ln/U;->a(ILn/Q;)V

    .line 675
    add-int/lit8 v1, v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Ln/U;->a(ILn/Q;)V

    .line 676
    invoke-static {v3, v2, v6}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 677
    invoke-static {v5, v3, v7}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 678
    invoke-static {v6, v7}, Ln/S;->c(Ln/Q;Ln/Q;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_153

    const/4 v1, 0x1

    .line 680
    :goto_13d
    mul-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v13

    .line 681
    add-int/lit8 v9, v8, 0x5

    .line 683
    if-eqz v1, :cond_155

    .line 685
    add-int/lit8 v1, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v1, v9, v8}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 669
    :goto_14f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_115

    .line 678
    :cond_153
    const/4 v1, 0x0

    goto :goto_13d

    .line 688
    :cond_155
    add-int/lit8 v1, v8, 0x3

    add-int/lit8 v8, v8, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v1, v8, v9}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    goto :goto_14f

    .line 691
    :cond_15f
    invoke-virtual/range {p1 .. p1}, Ln/U;->e()Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 692
    add-int/lit8 v1, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ln/U;->a(ILn/Q;)V

    .line 693
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Ln/U;->a(ILn/Q;)V

    .line 694
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Ln/U;->a(ILn/Q;)V

    .line 695
    invoke-static {v3, v2, v6}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 696
    invoke-static {v5, v3, v7}, Ln/S;->d(Ln/Q;Ln/Q;Ln/Q;)V

    .line 697
    invoke-static {v6, v7}, Ln/S;->c(Ln/Q;Ln/Q;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_19c

    const/4 v1, 0x1

    .line 699
    :goto_189
    add-int/lit8 v2, v12, -0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v13

    .line 703
    if-eqz v1, :cond_19e

    .line 705
    add-int/lit8 v1, v2, 0x2

    add-int/lit8 v3, v13, 0x1

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    .line 713
    :cond_19b
    :goto_19b
    return-void

    .line 697
    :cond_19c
    const/4 v1, 0x0

    goto :goto_189

    .line 708
    :cond_19e
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v1, v2, v13}, Lcom/google/android/maps/driveabout/vector/bJ;->a(III)V

    goto :goto_19b

    :cond_1a8
    move v1, v9

    goto/16 :goto_8c
.end method
