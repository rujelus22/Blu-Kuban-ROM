.class public Lcom/google/android/maps/driveabout/vector/au;
.super Lcom/google/android/maps/driveabout/vector/ad;
.source "SourceFile"


# instance fields
.field private final A:F

.field private final B:F

.field private C:I

.field private D:I

.field private E:F

.field private final F:I

.field private G:Z

.field private H:I

.field private I:Z

.field private final J:Ljava/lang/String;

.field private final K:F

.field private final L:[F

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/android/maps/driveabout/vector/cT;

.field private final m:Ln/U;

.field private n:Ln/U;

.field private final o:F

.field private p:Ln/T;

.field private q:[Lcom/google/android/maps/driveabout/vector/aw;

.field private final r:Lcom/google/android/maps/driveabout/vector/cR;

.field private s:Lcom/google/android/maps/driveabout/vector/cV;

.field private t:Lcom/google/android/maps/driveabout/vector/cM;

.field private u:Lcom/google/android/maps/driveabout/vector/cM;

.field private v:Z

.field private w:Lcom/google/android/maps/driveabout/vector/cM;

.field private x:Lcom/google/android/maps/driveabout/vector/dY;

.field private y:Lu/e;

.field private final z:F


# direct methods
.method constructor <init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/ag;IIZFFFILn/U;FFLcom/google/android/maps/driveabout/vector/cT;FLcom/google/android/maps/driveabout/vector/cR;Z)V
    .registers 29
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move/from16 v5, p8

    move/from16 v6, p9

    move v7, p5

    move/from16 v8, p7

    move/from16 v9, p18

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/ad;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/ag;FFIZZ)V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/au;->v:Z

    .line 230
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    .line 585
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->J:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    .line 588
    mul-float v1, p16, p10

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    .line 589
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->F:I

    .line 590
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->r:Lcom/google/android/maps/driveabout/vector/cR;

    .line 591
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    .line 592
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    .line 593
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->B:F

    .line 594
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->l:Lcom/google/android/maps/driveabout/vector/cT;

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/au;->I:Z

    .line 599
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->D:I

    .line 601
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    .line 602
    mul-float v1, p16, p13

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/au;->K:F

    .line 603
    return-void
.end method

.method static a(F[FI)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1238
    .line 1239
    aget v0, p1, p2

    sub-float v0, p0, v0

    .line 1240
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_d

    .line 1255
    :cond_9
    :goto_9
    return p2

    .line 1253
    :cond_a
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 1243
    :cond_d
    cmpl-float v1, v0, v3

    if-lez v1, :cond_28

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_28

    .line 1244
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, p0, v1

    .line 1245
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a

    .line 1246
    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 1247
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 1255
    :cond_28
    array-length v0, p1

    add-int/lit8 p2, v0, -0x1

    goto :goto_9
.end method

.method static a(Ln/U;)I
    .registers 4
    .parameter

    .prologue
    .line 1340
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 1341
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 1342
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 1345
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ln/U;->a(ILn/Q;)V

    .line 1346
    invoke-virtual {p0, v0}, Ln/U;->a(Ln/Q;)V

    .line 1347
    invoke-static {v1, v0}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Ln/ag;ZLcom/google/android/maps/driveabout/vector/D;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    if-eqz p1, :cond_2a

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_2a

    invoke-virtual {p0}, Ln/ag;->b()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p0}, Ln/ag;->b()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2a

    .line 886
    invoke-virtual {p0}, Ln/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    .line 887
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/u;->a(I)I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_2a

    .line 891
    :goto_29
    return v0

    :cond_2a
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/vector/ad;->b(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v0

    goto :goto_29
.end method

.method public static a(Ln/H;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;ZFLcom/google/android/maps/driveabout/vector/cT;FLcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;
    .registers 23
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
    .line 418
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;IZFFLcom/google/android/maps/driveabout/vector/cT;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln/ac;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;IZFFLcom/google/android/maps/driveabout/vector/cT;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;
    .registers 13
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
    .line 339
    invoke-static/range {p0 .. p11}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;IZFFLcom/google/android/maps/driveabout/vector/cT;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/E;Ln/U;IZFFLcom/google/android/maps/driveabout/vector/cT;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cR;Z)Lcom/google/android/maps/driveabout/vector/au;
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
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v13

    .line 506
    invoke-virtual/range {p3 .. p3}, Ln/U;->b()I

    move-result v3

    .line 507
    const/4 v4, 0x2

    if-le v3, v4, :cond_9c

    .line 508
    mul-float v3, p6, v13

    .line 509
    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ln/U;->b(F)Ln/U;

    move-result-object v15

    .line 515
    :goto_17
    invoke-interface/range {p0 .. p0}, Ln/l;->e()Ln/ag;

    move-result-object v7

    .line 516
    const/4 v3, 0x0

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Ln/E;->b()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 517
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ln/E;->a(I)Ln/F;

    move-result-object v4

    invoke-virtual {v4}, Ln/F;->a()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 518
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ln/E;->a(I)Ln/F;

    move-result-object v3

    invoke-virtual {v3}, Ln/F;->j()Ln/ag;

    move-result-object v7

    .line 525
    :cond_38
    invoke-virtual/range {p2 .. p2}, Ln/E;->a()Ljava/lang/String;

    move-result-object v6

    .line 526
    if-eqz v7, :cond_64

    invoke-virtual {v7}, Ln/ag;->h()Ln/ak;

    move-result-object v3

    :goto_42
    move-object/from16 v0, p10

    move-object/from16 v1, p8

    move/from16 v2, p6

    invoke-virtual {v0, v6, v1, v3, v2}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;F)F

    move-result v19

    .line 528
    const/high16 v3, 0x3f80

    add-float v3, v3, v19

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v3

    .line 529
    const/4 v4, 0x0

    cmpl-float v4, v19, v4

    if-nez v4, :cond_66

    .line 530
    const/4 v3, 0x0

    .line 561
    :cond_60
    :goto_60
    return-object v3

    .line 516
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 526
    :cond_64
    const/4 v3, 0x0

    goto :goto_42

    .line 532
    :cond_66
    invoke-virtual {v15}, Ln/U;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_70

    .line 535
    const/4 v3, 0x0

    goto :goto_60

    .line 538
    :cond_70
    new-instance v3, Lcom/google/android/maps/driveabout/vector/au;

    invoke-interface/range {p0 .. p0}, Ln/l;->i()I

    move-result v8

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v4

    float-to-int v14, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v20, p10

    move/from16 v21, p11

    invoke-direct/range {v3 .. v21}, Lcom/google/android/maps/driveabout/vector/au;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/ag;IIZFFFILn/U;FFLcom/google/android/maps/driveabout/vector/cT;FLcom/google/android/maps/driveabout/vector/cR;Z)V

    .line 557
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/au;->e()Z

    move-result v4

    if-nez v4, :cond_60

    .line 559
    const/4 v3, 0x0

    goto :goto_60

    :cond_9c
    move-object/from16 v15, p3

    goto/16 :goto_17
.end method

.method static a(Ln/U;FF)Ln/U;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1263
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 1264
    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/cr;->i:Ln/Q;

    .line 1265
    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/cr;->j:Ln/Q;

    .line 1266
    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cr;->k:Ln/Q;

    .line 1267
    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/cr;->l:Ln/Q;

    .line 1268
    const/4 v0, 0x0

    .line 1269
    const/4 v1, 0x0

    .line 1271
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v2

    .line 1272
    add-int/lit8 v10, v2, -0x1

    .line 1277
    const/4 v2, 0x0

    move v3, p2

    :goto_1a
    if-ge v2, v10, :cond_40

    .line 1278
    invoke-virtual {p0, v2}, Ln/U;->b(I)F

    move-result v4

    .line 1279
    sub-float/2addr p1, v4

    .line 1280
    const v5, 0x38d1b717

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_91

    .line 1282
    const v5, -0x472e48e9

    cmpg-float v5, p1, v5

    if-gez v5, :cond_40

    .line 1283
    const/4 v0, 0x1

    .line 1284
    const/high16 v5, 0x3f80

    div-float v4, p1, v4

    add-float/2addr v4, v5

    .line 1285
    invoke-virtual {p0, v2, v9}, Ln/U;->a(ILn/Q;)V

    .line 1286
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v8}, Ln/U;->a(ILn/Q;)V

    .line 1287
    invoke-static {v9, v8, v4, v6}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    :cond_40
    move v4, v2

    .line 1297
    :goto_41
    if-ge v4, v10, :cond_ac

    .line 1298
    invoke-virtual {p0, v4}, Ln/U;->b(I)F

    move-result v11

    .line 1299
    sub-float v5, v3, v11

    .line 1300
    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_95

    .line 1302
    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gez v3, :cond_ac

    .line 1303
    const/4 v1, 0x1

    .line 1304
    const/high16 v3, 0x3f80

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    .line 1305
    invoke-virtual {p0, v4, v9}, Ln/U;->a(ILn/Q;)V

    .line 1306
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5, v8}, Ln/U;->a(ILn/Q;)V

    .line 1307
    invoke-static {v9, v8, v3, v7}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    move v3, v1

    .line 1314
    :goto_68
    add-int/lit8 v2, v2, 0x1

    .line 1316
    sub-int v1, v4, v2

    add-int/lit8 v5, v1, 0x1

    if-eqz v0, :cond_9a

    const/4 v1, 0x1

    :goto_71
    add-int/2addr v5, v1

    if-eqz v3, :cond_9c

    const/4 v1, 0x1

    :goto_75
    add-int/2addr v1, v5

    .line 1320
    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [I

    .line 1321
    const/4 v1, 0x0

    .line 1322
    if-eqz v0, :cond_aa

    .line 1323
    const/4 v0, 0x1

    invoke-virtual {v6, v5, v1}, Ln/Q;->a([II)V

    :goto_81
    move v1, v0

    move v0, v2

    .line 1325
    :goto_83
    if-gt v0, v4, :cond_9e

    .line 1326
    invoke-virtual {p0, v0, v8}, Ln/U;->a(ILn/Q;)V

    .line 1327
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v5, v1}, Ln/Q;->a([II)V

    .line 1325
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_83

    .line 1291
    :cond_91
    sub-float/2addr v3, v4

    .line 1277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1297
    :cond_95
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_41

    .line 1316
    :cond_9a
    const/4 v1, 0x0

    goto :goto_71

    :cond_9c
    const/4 v1, 0x0

    goto :goto_75

    .line 1329
    :cond_9e
    if-eqz v3, :cond_a5

    .line 1330
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v7, v5, v1}, Ln/Q;->a([II)V

    .line 1332
    :cond_a5
    invoke-static {v5}, Ln/U;->a([I)Ln/U;

    move-result-object v0

    return-object v0

    :cond_aa
    move v0, v1

    goto :goto_81

    :cond_ac
    move v3, v1

    goto :goto_68
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aw;F)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 845
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 848
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 849
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 850
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 851
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;)V

    .line 852
    iget-object v3, p3, Lcom/google/android/maps/driveabout/vector/aw;->a:Ln/Q;

    invoke-static {v3, v0, v2}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 853
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->q()F

    move-result v0

    .line 854
    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 855
    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    .line 856
    invoke-virtual {v2}, Ln/Q;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 857
    invoke-interface {v1, v3, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 860
    const/high16 v2, 0x42b4

    iget v3, p3, Lcom/google/android/maps/driveabout/vector/aw;->d:F

    sub-float/2addr v2, v3

    invoke-interface {v1, v2, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 863
    cmpl-float v2, p4, v5

    if-eqz v2, :cond_41

    .line 864
    invoke-interface {v1, p4, v6, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 868
    :cond_41
    iget v2, p3, Lcom/google/android/maps/driveabout/vector/aw;->b:F

    mul-float/2addr v2, v0

    .line 869
    iget v3, p3, Lcom/google/android/maps/driveabout/vector/aw;->c:F

    mul-float/2addr v0, v3

    .line 870
    invoke-interface {v1, v2, v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 871
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 872
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Ln/U;F)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 973
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 974
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 977
    invoke-virtual {p2}, Ln/U;->b()I

    move-result v6

    .line 978
    add-int/lit8 v3, v6, -0x1

    .line 979
    mul-int/lit8 v0, v3, 0x4

    .line 980
    const/4 v4, 0x1

    .line 981
    new-instance v5, Lcom/google/android/maps/driveabout/vector/cP;

    invoke-direct {v5, v0, v4}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(IZ)V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    .line 982
    new-instance v5, Lcom/google/android/maps/driveabout/vector/cP;

    invoke-direct {v5, v0, v4}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(IZ)V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    .line 986
    new-array v0, v3, [Lcom/google/android/maps/driveabout/vector/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    .line 987
    new-array v7, v6, [F

    .line 988
    const/4 v0, 0x0

    const/4 v4, 0x0

    aput v4, v7, v0

    .line 989
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2}, Ln/U;->a(ILn/Q;)V

    .line 990
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v3, :cond_54

    .line 991
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4, v1}, Ln/U;->a(ILn/Q;)V

    .line 992
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aw;

    const/4 v8, 0x0

    invoke-direct {v5, v2, v1, p3, v8}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Ln/Q;Ln/Q;FLcom/google/android/maps/driveabout/vector/av;)V

    aput-object v5, v4, v0

    .line 994
    invoke-virtual {v2, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v4

    .line 995
    add-int/lit8 v5, v0, 0x1

    aget v8, v7, v0

    add-float/2addr v4, v8

    aput v4, v7, v5

    .line 990
    add-int/lit8 v0, v0, 0x1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_32

    .line 1003
    :cond_54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->r:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->l:Lcom/google/android/maps/driveabout/vector/cT;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    invoke-virtual {v3}, Ln/ag;->h()Ln/ak;

    move-result-object v3

    :goto_64
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cR;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v3

    .line 1005
    const/high16 v0, 0x3f80

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    div-float v1, v0, v1

    .line 1006
    const/4 v0, 0x0

    :goto_75
    array-length v2, v3

    if-ge v0, v2, :cond_82

    .line 1007
    aget v2, v3, v0

    mul-float/2addr v2, v1

    aput v2, v3, v0

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 1003
    :cond_80
    const/4 v3, 0x0

    goto :goto_64

    .line 1012
    :cond_82
    const/high16 v0, 0x3f80

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v1, v7, v1

    div-float v1, v0, v1

    .line 1013
    new-array v4, v6, [F

    .line 1014
    const/4 v0, 0x0

    :goto_8e
    if-ge v0, v6, :cond_a2

    .line 1015
    aget v2, v7, v0

    mul-float/2addr v2, v1

    aput v2, v7, v0

    .line 1016
    add-int/lit8 v2, v6, -0x1

    sub-int/2addr v2, v0

    const/high16 v5, 0x3f80

    aget v8, v7, v0

    sub-float/2addr v5, v8

    aput v5, v4, v2

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 1021
    :cond_a2
    const/4 v2, 0x0

    .line 1022
    const/4 v1, 0x0

    .line 1023
    const/4 v0, 0x0

    :goto_a5
    if-ge v0, v6, :cond_be

    .line 1024
    aget v5, v7, v0

    invoke-static {v5, v3, v2}, Lcom/google/android/maps/driveabout/vector/au;->a(F[FI)I

    move-result v2

    .line 1025
    aget v5, v3, v2

    aput v5, v7, v0

    .line 1026
    aget v5, v4, v0

    invoke-static {v5, v3, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(F[FI)I

    move-result v1

    .line 1028
    aget v5, v3, v1

    aput v5, v4, v0

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 1034
    :cond_be
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v1

    .line 1035
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v2

    .line 1036
    const/4 v0, 0x0

    :goto_cb
    if-ge v0, v6, :cond_f0

    .line 1037
    aget v3, v7, v0

    mul-float/2addr v3, v1

    .line 1038
    sub-int v5, v6, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v4, v5

    mul-float/2addr v5, v1

    .line 1039
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 1040
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 1041
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 1042
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    .line 1044
    :cond_f0
    return-void
.end method

.method private b(F)V
    .registers 14
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 1197
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 1198
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 1199
    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 1200
    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cr;->c:Ln/Q;

    .line 1201
    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/cr;->d:Ln/Q;

    .line 1203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v6

    .line 1204
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    mul-float/2addr v0, v7

    mul-float/2addr v0, p1

    const/high16 v7, 0x4000

    div-float v7, v0, v7

    .line 1205
    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [Ln/Q;

    .line 1207
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v0, v11, v5}, Ln/U;->a(ILn/Q;)V

    move v0, v1

    .line 1208
    :goto_2c
    if-ge v0, v6, :cond_62

    .line 1209
    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v9, v0, v4}, Ln/U;->a(ILn/Q;)V

    .line 1215
    invoke-static {v4, v5, v2}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 1216
    invoke-static {v2, v7, v3}, Ln/S;->a(Ln/Q;FLn/Q;)V

    .line 1217
    invoke-virtual {v4, v3}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v9

    aput-object v9, v8, v0

    .line 1218
    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v3}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1220
    if-ne v0, v1, :cond_5c

    .line 1222
    invoke-virtual {v5, v3}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v9

    aput-object v9, v8, v11

    .line 1223
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v3}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1225
    :cond_5c
    invoke-virtual {v5, v4}, Ln/Q;->b(Ln/Q;)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1227
    :cond_62
    new-instance v0, Ln/T;

    invoke-direct {v0, v8}, Ln/T;-><init>([Ln/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->p:Ln/T;

    .line 1228
    return-void
.end method

.method static b(Ln/U;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1355
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 1356
    const/4 v2, 0x2

    if-ge v3, v2, :cond_c

    .line 1369
    :cond_b
    :goto_b
    return v0

    .line 1360
    :cond_c
    invoke-virtual {p0, v0}, Ln/U;->d(I)F

    move-result v4

    move v2, v1

    .line 1361
    :goto_11
    if-ge v2, v3, :cond_b

    .line 1362
    invoke-virtual {p0, v2}, Ln/U;->d(I)F

    move-result v5

    .line 1363
    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1364
    const/high16 v6, 0x4270

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2a

    const/high16 v6, 0x4396

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    move v0, v1

    .line 1366
    goto :goto_b

    .line 1361
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 947
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    div-float v1, v0, v1

    .line 950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_59

    .line 952
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 953
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 954
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 955
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v3, v6, v2}, Ln/U;->a(ILn/Q;)V

    .line 956
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v3, v4, v0}, Ln/U;->a(ILn/Q;)V

    .line 957
    new-array v3, v4, [Lcom/google/android/maps/driveabout/vector/aw;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    .line 958
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/aw;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Ln/Q;Ln/Q;FLcom/google/android/maps/driveabout/vector/av;)V

    aput-object v4, v3, v6

    .line 960
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v0

    .line 961
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 962
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v2, v2, v6

    iput v0, v2, Lcom/google/android/maps/driveabout/vector/aw;->e:F

    .line 963
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v0, v0, v6

    iput v1, v0, Lcom/google/android/maps/driveabout/vector/aw;->f:F

    .line 968
    :goto_58
    return-void

    .line 965
    :cond_59
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Lcom/google/android/maps/driveabout/vector/aU;Ln/U;F)V

    goto :goto_58
.end method

.method private h()Ln/U;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1096
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/au;->i()Ln/U;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Ln/U;->b()I

    move-result v2

    .line 1098
    const/4 v3, 0x2

    if-le v2, v3, :cond_1f

    .line 1100
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_19

    .line 1108
    :cond_18
    :goto_18
    return-object v0

    .line 1104
    :cond_19
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/au;->b(Ln/U;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_1f
    move-object v0, v1

    .line 1108
    goto :goto_18
.end method

.method private i()Ln/U;
    .registers 9

    .prologue
    const/high16 v4, 0x4000

    const/high16 v7, 0x3e80

    .line 1116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    .line 1117
    add-int/lit8 v2, v0, -0x1

    .line 1121
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    if-nez v0, :cond_58

    .line 1122
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_55

    .line 1123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v0, v1}, Ln/U;->b(I)F

    move-result v3

    .line 1124
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_51

    .line 1125
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 1126
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 1127
    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 1128
    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/cr;->c:Ln/Q;

    .line 1129
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->d:Ln/Q;

    .line 1130
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v6, v1, v5}, Ln/U;->a(ILn/Q;)V

    .line 1131
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1, v0}, Ln/U;->a(ILn/Q;)V

    .line 1136
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float v1, v3, v1

    div-float/2addr v1, v3

    .line 1137
    mul-float v3, v1, v7

    invoke-static {v5, v0, v3, v2}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    .line 1138
    const/high16 v3, 0x3f40

    mul-float/2addr v1, v3

    invoke-static {v0, v5, v1, v4}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    .line 1139
    invoke-static {v2, v4}, Ln/U;->a(Ln/Q;Ln/Q;)Ln/U;

    move-result-object v0

    .line 1189
    :goto_50
    return-object v0

    .line 1122
    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 1144
    :cond_55
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    .line 1147
    :cond_58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v0}, Ln/U;->d()F

    move-result v0

    .line 1148
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    packed-switch v1, :pswitch_data_c6

    .line 1189
    const/4 v0, 0x0

    goto :goto_50

    .line 1154
    :pswitch_65
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    .line 1155
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    add-float/2addr v1, v0

    .line 1156
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;FF)Ln/U;

    move-result-object v0

    goto :goto_50

    .line 1162
    :pswitch_73
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1164
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    add-float/2addr v1, v0

    .line 1165
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;FF)Ln/U;

    move-result-object v0

    goto :goto_50

    .line 1171
    :pswitch_8a
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1173
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    add-float/2addr v1, v0

    .line 1174
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;FF)Ln/U;

    move-result-object v0

    goto :goto_50

    .line 1178
    :pswitch_a3
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float/2addr v0, v1

    const v1, 0x3ea8f5c3

    mul-float/2addr v0, v1

    .line 1179
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    add-float/2addr v1, v0

    .line 1180
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;FF)Ln/U;

    move-result-object v0

    goto :goto_50

    .line 1184
    :pswitch_b4
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    sub-float/2addr v0, v1

    const v1, 0x3f2b851f

    mul-float/2addr v0, v1

    .line 1185
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    add-float/2addr v1, v0

    .line 1186
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;FF)Ln/U;

    move-result-object v0

    goto :goto_50

    .line 1148
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_65
        :pswitch_73
        :pswitch_8a
        :pswitch_a3
        :pswitch_b4
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 676
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_11

    .line 678
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 681
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->x:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_1a

    .line 682
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->x:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 684
    :cond_1a
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 723
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->I:Z

    if-nez v0, :cond_16

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/au;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 837
    :cond_15
    :goto_15
    return-void

    .line 726
    :cond_16
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 727
    iget-object v6, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 728
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 729
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v0, v0

    if-ne v0, v3, :cond_128

    .line 732
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->e:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 739
    :goto_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 742
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->y:Lu/e;

    if-eqz v0, :cond_12f

    .line 743
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->y:Lu/e;

    invoke-virtual {v0, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    .line 744
    const/high16 v2, 0x1

    if-ne v0, v2, :cond_46

    .line 745
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->y:Lu/e;

    .line 751
    :cond_46
    :goto_46
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 754
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_5f

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_5f

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_182

    .line 759
    :cond_5f
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/au;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v0, v0, v4

    .line 761
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v7, v2, v3

    .line 762
    mul-float v2, v0, v0

    mul-float v8, v7, v7

    add-float/2addr v2, v8

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    .line 763
    cmpl-float v0, v0, v5

    if-ltz v0, :cond_133

    move v2, v1

    .line 764
    :goto_78
    cmpl-float v0, v7, v5

    if-ltz v0, :cond_138

    move v0, v1

    .line 765
    :goto_7d
    mul-float/2addr v7, v0

    div-float/2addr v7, v8

    sub-float v7, v1, v7

    mul-float/2addr v7, v2

    .line 772
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    if-nez v2, :cond_95

    .line 773
    cmpl-float v2, v0, v5

    if-lez v2, :cond_13c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    :goto_8c
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 774
    cmpl-float v0, v0, v5

    if-lez v0, :cond_140

    move v0, v3

    :goto_93
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->v:Z

    .line 776
    :cond_95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    if-ne v0, v2, :cond_14a

    .line 777
    const v0, 0x3a83126f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_143

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    :goto_a4
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 779
    const v0, 0x3a83126f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_147

    move v0, v3

    :goto_ae
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->v:Z

    .line 791
    :goto_b0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->G:Z

    if-nez v0, :cond_182

    const/high16 v0, 0x3f40

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_c0

    const/high16 v0, -0x40c0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_182

    .line 793
    :cond_c0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    mul-float/2addr v0, v7

    .line 798
    :goto_c5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v2, v2

    if-ge v4, v2, :cond_16e

    .line 799
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v2, v2

    if-ne v2, v3, :cond_166

    .line 800
    const/16 v2, 0x1702

    invoke-interface {v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 801
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 802
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/au;->v:Z

    if-eqz v2, :cond_104

    .line 804
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/aw;->e:F

    div-float/2addr v2, v9

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/aw;->f:F

    div-float/2addr v7, v9

    invoke-interface {v6, v2, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 805
    const/high16 v2, 0x4334

    invoke-interface {v6, v2, v5, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 806
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/aw;->e:F

    neg-float v2, v2

    div-float/2addr v2, v9

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/aw;->f:F

    neg-float v7, v7

    div-float/2addr v7, v9

    invoke-interface {v6, v2, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 809
    :cond_104
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/aw;->e:F

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/aw;->f:F

    invoke-interface {v6, v2, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 810
    const/16 v2, 0x1700

    invoke-interface {v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 814
    :goto_118
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 815
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v2, v2, v4

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/android/maps/driveabout/vector/au;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aw;F)V

    .line 816
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    .line 736
    :cond_128
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto/16 :goto_30

    .line 749
    :cond_12f
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->j:I

    goto/16 :goto_46

    .line 763
    :cond_133
    const/high16 v0, -0x4080

    move v2, v0

    goto/16 :goto_78

    .line 764
    :cond_138
    const/high16 v0, -0x4080

    goto/16 :goto_7d

    .line 773
    :cond_13c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    goto/16 :goto_8c

    :cond_140
    move v0, v4

    .line 774
    goto/16 :goto_93

    .line 777
    :cond_143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    goto/16 :goto_a4

    :cond_147
    move v0, v4

    .line 779
    goto/16 :goto_ae

    .line 781
    :cond_14a
    const v0, -0x457ced91

    cmpg-float v0, v7, v0

    if-gez v0, :cond_161

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    :goto_153
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    .line 783
    const v0, -0x457ced91

    cmpg-float v0, v7, v0

    if-gez v0, :cond_164

    move v0, v3

    :goto_15d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->v:Z

    goto/16 :goto_b0

    .line 781
    :cond_161
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    goto :goto_153

    :cond_164
    move v0, v4

    .line 783
    goto :goto_15d

    .line 812
    :cond_166
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->w:Lcom/google/android/maps/driveabout/vector/cM;

    mul-int/lit8 v7, v4, 0x2

    invoke-virtual {v2, p1, v7}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_118

    .line 819
    :cond_16e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v0, v0

    if-ne v0, v3, :cond_15

    .line 820
    const/16 v0, 0x1702

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 821
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 822
    const/16 v0, 0x1700

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_15

    :cond_182
    move v0, v5

    goto/16 :goto_c5
.end method

.method a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1065
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    .line 1066
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cr;->a:Ln/Q;

    .line 1067
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cr;->b:Ln/Q;

    .line 1068
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v2, v4, v1}, Ln/U;->a(ILn/Q;)V

    .line 1069
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v2, v0}, Ln/U;->a(Ln/Q;)V

    .line 1071
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 1072
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v1, v1, v4

    .line 1073
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v2, v2, v5

    .line 1075
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    invoke-virtual {p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 1076
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v3, v0, v4

    sub-float v1, v3, v1

    aput v1, v0, v4

    .line 1077
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->L:[F

    aget v1, v0, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 1078
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Z
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v6

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->a:Ln/l;

    invoke-interface {v1}, Ln/l;->h()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_59

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p2

    invoke-static {v2, v1, v0}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/ag;ZLcom/google/android/maps/driveabout/vector/D;)I

    move-result v7

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    if-eqz v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->b:Ln/ag;

    invoke-virtual {v1}, Ln/ag;->h()Ln/ak;

    move-result-object v4

    .line 904
    :goto_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->r:Lcom/google/android/maps/driveabout/vector/cR;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/au;->l:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    .line 906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v1, :cond_7c

    .line 908
    const/16 v1, 0x2710

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(I)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 909
    const/4 v1, 0x0

    .line 938
    :goto_58
    return v1

    .line 901
    :cond_59
    const/4 v1, 0x0

    goto :goto_1a

    .line 903
    :cond_5b
    const/4 v4, 0x0

    goto :goto_2e

    .line 911
    :cond_5d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/au;->r:Lcom/google/android/maps/driveabout/vector/cR;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/vector/au;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/vector/au;->l:Lcom/google/android/maps/driveabout/vector/cT;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/maps/driveabout/vector/au;->A:F

    const/16 v16, 0x0

    move-object/from16 v9, p1

    move-object v12, v4

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    .line 914
    :cond_7c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/maps/driveabout/vector/au;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b6

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/aw;->d:F

    .line 923
    const/4 v1, 0x1

    :goto_91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    array-length v3, v3

    if-ge v1, v3, :cond_b6

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/au;->q:[Lcom/google/android/maps/driveabout/vector/aw;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/google/android/maps/driveabout/vector/aw;->d:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 925
    const/high16 v4, 0x41f0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_d0

    const/high16 v4, 0x43a5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d0

    .line 927
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/au;->G:Z

    .line 933
    :cond_b6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/au;->h:Z

    if-eqz v1, :cond_c9

    .line 934
    new-instance v1, Lu/e;

    const-wide/16 v2, 0x1f4

    sget-object v4, Lu/g;->a:Lu/g;

    invoke-direct {v1, v2, v3, v4}, Lu/e;-><init>(JLu/g;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/au;->y:Lu/e;

    .line 937
    :cond_c9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/au;->I:Z

    .line 938
    const/4 v1, 0x1

    goto :goto_58

    .line 923
    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_91
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 692
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->z:F

    div-float v3, v0, v3

    .line 694
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/au;->o()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/au;->i:Z

    if-eqz v0, :cond_39

    .line 695
    const/high16 v0, 0x3e80

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_37

    const/high16 v0, 0x4000

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_37

    move v0, v1

    .line 697
    :goto_21
    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/au;->a(F)I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/au;->j:I

    .line 705
    :goto_27
    if-eqz v0, :cond_4e

    .line 706
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->D:I

    .line 707
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->E:F

    .line 710
    :goto_36
    return v1

    :cond_37
    move v0, v2

    .line 695
    goto :goto_21

    .line 700
    :cond_39
    const v0, 0x3f666666

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4c

    const/high16 v0, 0x3fa0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_4c

    move v0, v1

    .line 702
    :goto_47
    const/high16 v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/au;->j:I

    goto :goto_27

    :cond_4c
    move v0, v2

    .line 700
    goto :goto_47

    :cond_4e
    move v1, v2

    .line 710
    goto :goto_36
.end method

.method public a(Ln/aM;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1377
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v1, v0}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/aM;->a(Ln/Q;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-virtual {v1}, Ln/U;->c()Ln/Q;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/aM;->a(Ln/Q;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 661
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_f

    .line 662
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->s:Lcom/google/android/maps/driveabout/vector/cV;

    .line 665
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_1d

    .line 666
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->t:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->u:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 669
    :cond_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->x:Lcom/google/android/maps/driveabout/vector/dY;

    if-eqz v0, :cond_26

    .line 670
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->x:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 672
    :cond_26
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 617
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    .line 618
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/au;->e()Z

    move-result v0

    return v0
.end method

.method e()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 630
    :goto_2
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1a

    .line 631
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    if-le v2, v1, :cond_1b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v2}, Ln/U;->d()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 650
    :cond_1a
    :goto_1a
    return v0

    .line 637
    :cond_1b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->m:Ln/U;

    invoke-virtual {v2}, Ln/U;->d()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->o:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1a

    .line 643
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/au;->h()Ln/U;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    .line 644
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    if-eqz v2, :cond_48

    .line 645
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->B:F

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/au;->b(F)V

    .line 646
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->n:Ln/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/au;->a(Ln/U;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->C:I

    move v0, v1

    .line 647
    goto :goto_1a

    .line 630
    :cond_48
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    goto :goto_2
.end method

.method f()I
    .registers 4

    .prologue
    .line 1085
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->D:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->C:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1086
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->F:I

    int-to-float v1, v1

    int-to-float v0, v0

    const v2, 0x3c8efa35

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public p()F
    .registers 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->K:F

    return v0
.end method

.method public q()Ln/ab;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->p:Ln/T;

    return-object v0
.end method

.method public v()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 715
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->f:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->H:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_8
    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->E:F

    const/high16 v3, 0x41f0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15

    :goto_11
    add-int/2addr v0, v1

    return v0

    :cond_13
    move v0, v1

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/au;->f()I

    move-result v1

    goto :goto_11
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->J:Ljava/lang/String;

    return-object v0
.end method
