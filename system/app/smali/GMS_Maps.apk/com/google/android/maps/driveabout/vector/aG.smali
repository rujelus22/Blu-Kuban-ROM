.class public Lcom/google/android/maps/driveabout/vector/aG;
.super Lcom/google/android/maps/driveabout/vector/ad;
.source "SourceFile"


# static fields
.field private static final J:[Lcom/google/android/maps/driveabout/vector/aJ;

.field private static final K:[Lcom/google/android/maps/driveabout/vector/aJ;


# instance fields
.field private A:Z

.field private final B:[Lcom/google/android/maps/driveabout/vector/aJ;

.field private C:I

.field private D:Lu/e;

.field private E:Z

.field private F:F

.field private final G:F

.field private final H:[F

.field private I:Ljava/lang/String;

.field protected k:Ln/a;

.field protected l:Lcom/google/android/maps/driveabout/vector/af;

.field protected m:Lcom/google/android/maps/driveabout/vector/af;

.field protected n:Lcom/google/android/maps/driveabout/vector/aJ;

.field protected o:F

.field protected p:F

.field protected q:F

.field protected r:F

.field private s:Ln/a;

.field private t:Ln/r;

.field private u:Ln/r;

.field private v:Lcom/google/android/maps/driveabout/vector/dY;

.field private final w:Ljava/lang/String;

.field private final x:Z

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 167
    new-array v0, v4, [Lcom/google/android/maps/driveabout/vector/aJ;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aG;->J:[Lcom/google/android/maps/driveabout/vector/aJ;

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aJ;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aI;->d:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aI;->b:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aI;->e:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aI;->c:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aG;->K:[Lcom/google/android/maps/driveabout/vector/aJ;

    return-void
.end method

.method constructor <init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V
    .registers 24
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-interface {p1}, Ln/l;->e()Ln/ag;

    move-result-object v4

    invoke-interface {p1}, Ln/l;->i()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    move/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/ad;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/ag;FFIZZ)V

    .line 84
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->z:F

    .line 114
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    .line 445
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aG;->w:Ljava/lang/String;

    .line 446
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    .line 447
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/aG;->s:Ln/a;

    .line 448
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    .line 449
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    .line 450
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->x:Z

    .line 453
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-nez v1, :cond_38

    sget-object p12, Lcom/google/android/maps/driveabout/vector/aG;->J:[Lcom/google/android/maps/driveabout/vector/aJ;

    :cond_38
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    .line 455
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    .line 456
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v1, :cond_54

    .line 457
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    .line 458
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    .line 461
    :cond_54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->A:Z

    .line 463
    const/4 v1, 0x0

    .line 464
    if-eqz p10, :cond_64

    .line 465
    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v2

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 467
    :cond_64
    if-eqz p11, :cond_70

    .line 468
    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v2

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 470
    :cond_70
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->G:F

    .line 471
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)F
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 678
    const/4 v0, 0x1

    .line 679
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->x:Z

    if-eqz v1, :cond_16

    .line 680
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v1}, Ln/a;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    .line 683
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    goto :goto_15
.end method

.method static a(Ln/ag;Lcom/google/android/maps/driveabout/vector/bZ;F)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/bZ;->e:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bZ;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bZ;->g:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/ag;FIIF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/aV;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/aG;
    .registers 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aV;->c()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v7

    .line 379
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/dg;->i()Z

    move-result v1

    if-nez v1, :cond_c

    .line 380
    const/4 v1, 0x0

    .line 426
    :goto_b
    return-object v1

    .line 383
    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v8

    .line 384
    invoke-virtual {v8}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Ln/aa;)Ln/Q;

    move-result-object v9

    .line 385
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/dg;->j()Lcom/google/android/maps/driveabout/vector/aJ;

    move-result-object v10

    .line 386
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/dg;->k()Ln/ag;

    move-result-object v5

    .line 388
    const/4 v1, 0x1

    new-array v14, v1, [Lcom/google/android/maps/driveabout/vector/aJ;

    const/4 v1, 0x0

    aput-object v10, v14, v1

    .line 389
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v15, Lcom/google/android/maps/driveabout/vector/bZ;->t:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 394
    new-instance v13, Lcom/google/android/maps/driveabout/vector/ai;

    const/high16 v1, 0x4080

    invoke-direct {v13, v1}, Lcom/google/android/maps/driveabout/vector/ai;-><init>(F)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    invoke-static {v5, v15, v1}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/bZ;F)I

    move-result v4

    .line 397
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v8}, Ln/am;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v15, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v8}, Ln/am;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v15, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v8}, Ln/am;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v15, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/dg;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v15, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aV;->d()I

    move-result v1

    if-lez v1, :cond_c0

    .line 412
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ak;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aV;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v15, Lcom/google/android/maps/driveabout/vector/bZ;->d:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_c0
    new-instance v13, Lcom/google/android/maps/driveabout/vector/af;

    iget-object v1, v10, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/am;->c:Lcom/google/android/maps/driveabout/vector/am;

    invoke-direct {v13, v11, v1, v2}, Lcom/google/android/maps/driveabout/vector/af;-><init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/aj;Lcom/google/android/maps/driveabout/vector/am;)V

    .line 419
    const/4 v3, 0x1

    .line 420
    const/4 v4, 0x0

    .line 421
    new-instance v16, Lcom/google/android/maps/driveabout/vector/aG;

    new-instance v17, Ln/j;

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ln/j;-><init>(Ln/ag;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v1, Ln/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Ln/a;-><init>(Ln/Q;IFLn/Q;FFF)V

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v15, v15, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v6, v1

    invoke-direct/range {v2 .. v15}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V

    .line 425
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aG;->c(Z)V

    move-object/from16 v1, v16

    .line 426
    goto/16 :goto_b
.end method

.method public static a(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;ZLcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/aG;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/af;->a(Ln/E;Ln/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v11

    .line 206
    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/af;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 207
    :cond_19
    const/4 v1, 0x0

    .line 267
    :cond_1a
    :goto_1a
    return-object v1

    .line 209
    :cond_1b
    const/4 v12, 0x0

    .line 210
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 211
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/af;->a(Ln/E;Ln/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v12

    .line 213
    if-nez v12, :cond_37

    .line 214
    const/4 v1, 0x0

    goto :goto_1a

    .line 216
    :cond_37
    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/vector/af;->c()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 217
    const/4 v12, 0x0

    .line 221
    :cond_3e
    invoke-virtual {p0}, Ln/R;->r()[Ln/c;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_cc

    if-eqz v12, :cond_cc

    .line 223
    sget-object v13, Lcom/google/android/maps/driveabout/vector/aG;->K:[Lcom/google/android/maps/driveabout/vector/aJ;

    .line 234
    :cond_49
    if-eqz v12, :cond_4f

    array-length v1, v13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_fd

    :cond_4f
    const/4 v10, 0x1

    .line 238
    :goto_50
    invoke-virtual {p0}, Ln/R;->o()[Ln/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v5, v1, v2

    .line 240
    invoke-virtual {v5}, Ln/a;->b()Ln/Q;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ln/R;Ln/Q;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Ln/R;->t()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-virtual {p0}, Ln/R;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_100

    move-object/from16 v0, p6

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bZ;->p:Z

    if-eqz v1, :cond_100

    .line 243
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ac;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ln/R;->k()F

    move-result v7

    invoke-virtual {p0}, Ln/R;->n()F

    move-result v8

    move-object/from16 v0, p6

    iget-boolean v14, v0, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/maps/driveabout/vector/ac;-><init>(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V

    .line 255
    :goto_8c
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 256
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v2

    invoke-virtual {v2}, Ln/E;->a()Ljava/lang/String;

    move-result-object v3

    .line 257
    if-eqz v12, :cond_11f

    .line 258
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v2

    invoke-virtual {v2}, Ln/E;->a()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_119

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_119

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_c7
    :goto_c7
    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/aG;->a(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 225
    :cond_cc
    invoke-virtual {p0}, Ln/R;->r()[Ln/c;

    move-result-object v1

    array-length v1, v1

    new-array v13, v1, [Lcom/google/android/maps/driveabout/vector/aJ;

    .line 226
    const/4 v1, 0x0

    :goto_d4
    array-length v2, v13

    if-ge v1, v2, :cond_49

    .line 227
    new-instance v2, Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-virtual {p0}, Ln/R;->r()[Ln/c;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ln/c;->d()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/aI;->a(I)Lcom/google/android/maps/driveabout/vector/aI;

    move-result-object v3

    invoke-virtual {p0}, Ln/R;->r()[Ln/c;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ln/c;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/aj;->a(I)Lcom/google/android/maps/driveabout/vector/aj;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    aput-object v2, v13, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    .line 234
    :cond_fd
    const/4 v10, 0x0

    goto/16 :goto_50

    .line 248
    :cond_100
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aG;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ln/R;->k()F

    move-result v7

    invoke-virtual {p0}, Ln/R;->n()F

    move-result v8

    move-object/from16 v0, p6

    iget-boolean v14, v0, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V

    goto/16 :goto_8c

    .line 261
    :cond_119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c7

    :cond_11f
    move-object v2, v3

    goto :goto_c7
.end method

.method public static a(Ln/ac;ILcom/google/android/maps/driveabout/vector/bY;Ln/Q;Ln/Q;ZLcom/google/android/maps/driveabout/vector/bZ;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;)Lcom/google/android/maps/driveabout/vector/aG;
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
    .line 334
    invoke-virtual/range {p0 .. p1}, Ln/ac;->c(I)Ln/E;

    move-result-object v1

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v1}, Ln/E;->b()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 337
    invoke-virtual {v1, v2}, Ln/E;->a(I)Ln/F;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Ln/F;->a()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 339
    const/4 v1, 0x0

    .line 353
    :goto_1b
    return-object v1

    .line 341
    :cond_1c
    invoke-virtual {v3}, Ln/F;->b()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 342
    invoke-virtual {v3}, Ln/F;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 345
    :cond_2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_34

    .line 346
    const/4 v1, 0x0

    goto :goto_1b

    .line 348
    :cond_34
    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/af;->a(Ln/E;Ln/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cW;Lcom/google/android/maps/driveabout/vector/cR;Lcom/google/android/maps/driveabout/vector/bZ;)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v12

    .line 350
    if-nez v12, :cond_45

    .line 351
    const/4 v1, 0x0

    goto :goto_1b

    .line 353
    :cond_45
    new-instance v16, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ln/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v8}, Ln/a;-><init>(Ln/Q;IFLn/Q;FFF)V

    if-nez p4, :cond_77

    const/4 v7, 0x0

    :goto_5b
    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/4 v11, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/maps/driveabout/vector/aG;->J:[Lcom/google/android/maps/driveabout/vector/aJ;

    move-object/from16 v0, p6

    iget-boolean v15, v0, Lcom/google/android/maps/driveabout/vector/bZ;->q:Z

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v10

    move-object v6, v1

    move/from16 v10, p5

    invoke-direct/range {v2 .. v15}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V

    move-object/from16 v1, v16

    goto :goto_1b

    :cond_77
    new-instance v2, Ln/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v9}, Ln/a;-><init>(Ln/Q;IFLn/Q;FFF)V

    move-object v7, v2

    goto :goto_5b
.end method

.method private static a(Ln/R;Ln/Q;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 280
    :goto_7
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v3

    invoke-virtual {v3}, Ln/E;->b()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 281
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v3

    invoke-virtual {v3, v0}, Ln/E;->a(I)Ln/F;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Ln/F;->b()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 283
    invoke-virtual {v3}, Ln/F;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 286
    :cond_29
    :goto_29
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v0

    invoke-virtual {v0}, Ln/E;->b()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 287
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln/E;->a(I)Ln/F;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ln/F;->b()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 289
    invoke-virtual {v0}, Ln/F;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 295
    :cond_4b
    invoke-virtual {p0}, Ln/R;->a()Ln/m;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 296
    invoke-virtual {p0}, Ln/R;->a()Ln/m;

    move-result-object v0

    invoke-virtual {v0}, Ln/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_5c
    invoke-virtual {p0}, Ln/R;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    .line 302
    invoke-virtual {p0}, Ln/R;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_6d
    :goto_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_72
    invoke-virtual {p0}, Ln/R;->b()Ln/am;

    move-result-object v0

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_6d

    .line 304
    invoke-virtual {p1}, Ln/Q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d
.end method

.method private a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aG;->I:Ljava/lang/String;

    .line 1039
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)Ln/r;
    .registers 10
    .parameter

    .prologue
    const/high16 v4, 0x42b4

    const/high16 v3, 0x4387

    .line 949
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 950
    const/4 v0, 0x0

    .line 983
    :goto_d
    return-object v0

    .line 955
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->c()F

    move-result v0

    .line 956
    cmpg-float v1, v0, v3

    if-gez v1, :cond_8b

    add-float/2addr v0, v4

    move v2, v0

    .line 957
    :goto_1a
    cmpg-float v0, v2, v3

    if-gez v0, :cond_8e

    add-float v0, v2, v4

    move v1, v0

    .line 959
    :goto_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v3

    .line 960
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 961
    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 962
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    invoke-virtual {p1, v5, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v5

    invoke-virtual {v4, v2, v5}, Ln/Q;->b(FF)V

    .line 964
    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 965
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    invoke-virtual {p1, v6, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v6

    invoke-virtual {v5, v2, v6}, Ln/Q;->b(FF)V

    .line 967
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->c:Ln/Q;

    .line 968
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    invoke-virtual {p1, v6, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v6

    invoke-virtual {v2, v1, v6}, Ln/Q;->b(FF)V

    .line 970
    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/cr;->d:Ln/Q;

    .line 971
    iget v7, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    invoke-virtual {p1, v7, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v3

    invoke-virtual {v6, v1, v3}, Ln/Q;->b(FF)V

    .line 974
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cr;->e:Ln/Q;

    .line 975
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v3}, Ln/a;->b()Ln/Q;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 976
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ln/Q;

    .line 977
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v2}, Ln/a;->b()Ln/Q;

    move-result-object v2

    invoke-static {v2, v6, v0}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 978
    invoke-virtual {v1, v4}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v2

    .line 979
    invoke-virtual {v1, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 980
    invoke-virtual {v0, v4}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v3

    .line 981
    invoke-virtual {v0, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 983
    invoke-static {v3, v0, v2, v1}, Ln/r;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/r;

    move-result-object v0

    goto :goto_d

    .line 956
    :cond_8b
    sub-float/2addr v0, v3

    move v2, v0

    goto :goto_1a

    .line 957
    :cond_8e
    sub-float v0, v2, v3

    move v1, v0

    goto :goto_21
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x43b4

    const/high16 v8, 0x4000

    const/4 v1, 0x0

    .line 739
    iget-object v6, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 740
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    .line 744
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->d()Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v2}, Ln/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v2}, Ln/a;->c()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v1

    if-nez v2, :cond_55

    :cond_2a
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_55

    .line 747
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 748
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    .line 751
    :cond_55
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->z:F

    invoke-static {p1, p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 762
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->D:Lu/e;

    if-eqz v0, :cond_118

    .line 763
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->D:Lu/e;

    invoke-virtual {v0, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    .line 764
    const/high16 v2, 0x1

    if-ne v0, v2, :cond_6b

    .line 765
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->D:Lu/e;

    .line 771
    :cond_6b
    :goto_6b
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 773
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 778
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v2

    sub-float/2addr v0, v2

    .line 779
    cmpg-float v2, v0, v1

    if-gez v2, :cond_88

    .line 780
    add-float/2addr v0, v4

    .line 782
    :cond_88
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v2}, Ln/a;->c()F

    move-result v2

    .line 786
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->y:Z

    if-nez v3, :cond_1a0

    const/high16 v3, 0x42b4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1a0

    const/high16 v3, 0x4387

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1a0

    .line 787
    const/high16 v0, 0x4334

    add-float/2addr v0, v2

    .line 789
    :goto_a1
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_a6

    .line 790
    sub-float/2addr v0, v4

    .line 797
    :cond_a6
    const/high16 v2, -0x4080

    invoke-interface {v6, v0, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 801
    const/high16 v0, -0x3d4c

    const/high16 v2, 0x3f80

    invoke-interface {v6, v0, v2, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 810
    :goto_b2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_19a

    .line 812
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v4

    .line 813
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    .line 814
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    div-float v2, v0, v8

    .line 815
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    div-float/2addr v0, v8

    .line 816
    neg-float v5, v2

    neg-float v7, v0

    invoke-interface {v6, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 817
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v5, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 820
    :goto_db
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v5, :cond_117

    .line 824
    sget-object v5, Lcom/google/android/maps/driveabout/vector/aH;->a:[I

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/aI;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1a4

    move v3, v1

    move v0, v1

    .line 869
    :goto_f0
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/aI;->d:Lcom/google/android/maps/driveabout/vector/aI;

    if-eq v5, v7, :cond_100

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/aI;->b:Lcom/google/android/maps/driveabout/vector/aI;

    if-ne v5, v7, :cond_10f

    .line 874
    :cond_100
    sget-object v5, Lcom/google/android/maps/driveabout/vector/aH;->b:[I

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/aj;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1ba

    .line 889
    :cond_10f
    :goto_10f
    invoke-interface {v6, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 890
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 892
    :cond_117
    return-void

    .line 769
    :cond_118
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->j:I

    goto/16 :goto_6b

    .line 803
    :cond_11c
    invoke-static {v6, p2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/k;)V

    goto :goto_b2

    .line 828
    :pswitch_120
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v5, v2, v3

    .line 829
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v5

    .line 830
    goto :goto_f0

    .line 834
    :pswitch_134
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v4

    .line 835
    goto :goto_f0

    .line 840
    :pswitch_13f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v3

    neg-float v5, v3

    .line 841
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v5

    .line 842
    goto :goto_f0

    .line 845
    :pswitch_151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    neg-float v3, v0

    move v0, v1

    .line 847
    goto :goto_f0

    :pswitch_15a
    move v0, v1

    .line 851
    goto :goto_f0

    .line 854
    :pswitch_15c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    neg-float v3, v0

    move v0, v4

    .line 855
    goto :goto_f0

    .line 857
    :pswitch_165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    neg-float v0, v0

    .line 858
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v3

    neg-float v3, v3

    .line 859
    goto/16 :goto_f0

    :pswitch_175
    move v0, v4

    .line 863
    goto/16 :goto_f0

    .line 865
    :pswitch_178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    neg-float v0, v0

    .line 866
    goto/16 :goto_f0

    .line 877
    :pswitch_181
    const/high16 v0, -0x3ee0

    .line 878
    goto :goto_10f

    .line 881
    :pswitch_184
    const/high16 v0, 0x4120

    add-float/2addr v0, v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v2

    sub-float/2addr v0, v2

    .line 883
    goto :goto_10f

    .line 885
    :pswitch_18f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    div-float/2addr v0, v8

    sub-float v0, v2, v0

    goto/16 :goto_10f

    :cond_19a
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_db

    :cond_1a0
    move v0, v2

    goto/16 :goto_a1

    .line 824
    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_134
        :pswitch_151
        :pswitch_13f
        :pswitch_15c
        :pswitch_165
        :pswitch_175
        :pswitch_178
        :pswitch_120
    .end packed-switch

    .line 874
    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_181
        :pswitch_184
        :pswitch_18f
    .end packed-switch
.end method

.method private c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aG;->y:Z

    .line 736
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    if-nez v0, :cond_6

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->a()Z

    move-result v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 703
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_c

    .line 705
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 707
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_15

    .line 708
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 710
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_1e

    .line 711
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 713
    :cond_1e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->A:Z

    if-nez v0, :cond_f

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 728
    :goto_e
    return-void

    .line 724
    :cond_f
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 725
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 726
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aG;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 727
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_e
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 895
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->h:Z

    if-eqz v0, :cond_10

    .line 896
    new-instance v0, Lu/e;

    const-wide/16 v1, 0x1f4

    sget-object v3, Lu/g;->a:Lu/g;

    invoke-direct {v0, v1, v2, v3}, Lu/e;-><init>(JLu/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->D:Lu/e;

    .line 898
    :cond_10
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->A:Z

    .line 899
    return v4
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aG;->o()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->i:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->z:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_31

    .line 490
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/k;)F

    move-result v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->z:F

    div-float/2addr v0, v3

    .line 491
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aG;->a(F)I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->j:I

    .line 492
    const/high16 v3, 0x3e80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2f

    const/high16 v3, 0x4000

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2f

    move v0, v1

    :goto_2d
    move v1, v0

    .line 663
    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    move v0, v2

    .line 492
    goto :goto_2d

    .line 495
    :cond_31
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->j:I

    .line 500
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_71

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_71

    move v0, v1

    .line 502
    :goto_46
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v3

    .line 503
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    if-eqz v4, :cond_5a

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->E:Z

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_5a

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->F:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2e

    .line 510
    :cond_5a
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v4}, Ln/a;->a()Z

    move-result v4

    if-eqz v4, :cond_73

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->F:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_73

    .line 511
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->u:Ln/r;

    goto :goto_2e

    :cond_71
    move v0, v2

    .line 500
    goto :goto_46

    .line 515
    :cond_73
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->E:Z

    .line 516
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->F:F

    .line 522
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_27a

    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v3, v0, 0x1

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    .line 526
    :goto_8d
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-nez v4, :cond_134

    .line 528
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 529
    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 530
    neg-int v3, v0

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 531
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    .line 620
    :cond_9f
    :goto_9f
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 621
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v4}, Ln/a;->b()Ln/Q;

    move-result-object v4

    invoke-static {v3, v4, v0}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 623
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/k;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->z:F

    .line 624
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->x:Z

    if-nez v0, :cond_e3

    .line 625
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    .line 628
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v3}, Ln/a;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v3

    div-float/2addr v0, v3

    .line 629
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 630
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 631
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 632
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    .line 638
    :cond_e3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->c:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->c:Lcom/google/android/maps/driveabout/vector/bY;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/bW;

    if-eqz v0, :cond_11b

    .line 639
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->c:Lcom/google/android/maps/driveabout/vector/bY;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bW;->a()Ljava/lang/Object;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_11b

    instance-of v3, v0, Ln/p;

    if-eqz v3, :cond_11b

    .line 641
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v3

    check-cast v0, Ln/p;

    invoke-virtual {v3, v0}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_11b

    .line 644
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v3}, Ln/a;->b()Ln/Q;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v4}, Ln/a;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Ln/Q;->b(I)V

    .line 650
    :cond_11b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->u:Ln/r;

    .line 651
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_253

    .line 653
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aG;->b(Lcom/google/android/maps/driveabout/vector/k;)Ln/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    .line 663
    :goto_12d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    if-nez v0, :cond_2e

    move v1, v2

    goto/16 :goto_2e

    .line 534
    :cond_134
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/af;->a()F

    move-result v4

    float-to-int v4, v4

    shr-int/lit8 v7, v4, 0x1

    .line 535
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v4

    float-to-int v4, v4

    shr-int/lit8 v5, v4, 0x1

    .line 536
    if-le v3, v7, :cond_19f

    move v6, v3

    .line 537
    :goto_149
    if-le v0, v5, :cond_1a1

    move v4, v0

    .line 538
    :goto_14c
    sget-object v8, Lcom/google/android/maps/driveabout/vector/aH;->a:[I

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v9, v9, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/aI;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_27e

    .line 587
    neg-int v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 588
    int-to-float v0, v6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 589
    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 590
    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    .line 593
    :goto_169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aI;->d:Lcom/google/android/maps/driveabout/vector/aI;

    if-eq v0, v4, :cond_179

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aI;->b:Lcom/google/android/maps/driveabout/vector/aI;

    if-ne v0, v4, :cond_9f

    .line 598
    :cond_179
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aH;->b:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aj;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_292

    goto/16 :goto_9f

    .line 601
    :pswitch_18a
    neg-int v0, v3

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 602
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    mul-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    goto/16 :goto_9f

    :cond_19f
    move v6, v7

    .line 536
    goto :goto_149

    :cond_1a1
    move v4, v5

    .line 537
    goto :goto_14c

    .line 541
    :pswitch_1a3
    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 542
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto :goto_169

    .line 545
    :pswitch_1ae
    neg-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 546
    mul-int/lit8 v0, v7, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 547
    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 548
    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto :goto_169

    .line 552
    :pswitch_1c0
    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 553
    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto :goto_169

    .line 556
    :pswitch_1cb
    neg-int v0, v3

    mul-int/lit8 v5, v7, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 557
    int-to-float v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 558
    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 559
    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto :goto_169

    .line 562
    :pswitch_1dd
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 563
    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 564
    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 565
    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto/16 :goto_169

    .line 568
    :pswitch_1f3
    neg-int v4, v3

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 569
    int-to-float v4, v3

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 570
    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 571
    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto/16 :goto_169

    .line 574
    :pswitch_209
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 575
    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 576
    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 577
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto/16 :goto_169

    .line 580
    :pswitch_21f
    neg-int v4, v3

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 581
    int-to-float v4, v3

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 582
    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    .line 583
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    goto/16 :goto_169

    .line 607
    :pswitch_235
    add-int/lit8 v0, v3, 0xa

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    .line 608
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    mul-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    goto/16 :goto_9f

    .line 612
    :pswitch_24a
    neg-int v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    .line 613
    int-to-float v0, v6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    goto/16 :goto_9f

    .line 657
    :cond_253
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    invoke-virtual {p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 658
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    aget v0, v0, v2

    .line 659
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->H:[F

    aget v3, v3, v1

    .line 660
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->o:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->p:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aG;->q:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aG;->r:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v4, v0, v5, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(FFFF)Ln/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    goto/16 :goto_12d

    :cond_27a
    move v0, v2

    move v3, v2

    goto/16 :goto_8d

    .line 538
    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_1ae
        :pswitch_1c0
        :pswitch_1cb
        :pswitch_1dd
        :pswitch_1f3
        :pswitch_209
        :pswitch_21f
    .end packed-switch

    .line 598
    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_235
        :pswitch_24a
    .end packed-switch
.end method

.method public a(Ln/aM;)Z
    .registers 3
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln/aM;->a(Ln/Q;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 689
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_c

    .line 691
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 693
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_15

    .line 694
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 696
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->v:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_1e

    .line 697
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->v:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 699
    :cond_1e
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    .line 923
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    .line 924
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    .line 925
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 940
    :goto_26
    return v0

    .line 928
    :cond_27
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->s:Ln/a;

    if-eqz v2, :cond_4d

    .line 929
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->s:Ln/a;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->k:Ln/a;

    .line 930
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->s:Ln/a;

    .line 931
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    array-length v2, v2

    if-le v2, v0, :cond_47

    .line 932
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->C:I

    .line 933
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->B:[Lcom/google/android/maps/driveabout/vector/aJ;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    .line 934
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->m:Lcom/google/android/maps/driveabout/vector/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aG;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    .line 936
    :cond_47
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aG;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    goto :goto_26

    :cond_4d
    move v0, v1

    .line 940
    goto :goto_26
.end method

.method public p()F
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->G:F

    return v0
.end method

.method public q()Ln/ab;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->t:Ln/r;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->w:Ljava/lang/String;

    return-object v0
.end method
