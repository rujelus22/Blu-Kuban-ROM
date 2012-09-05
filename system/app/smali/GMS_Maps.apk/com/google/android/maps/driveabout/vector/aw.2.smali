.class public Lcom/google/android/maps/driveabout/vector/aw;
.super Lcom/google/android/maps/driveabout/vector/af;


# instance fields
.field private A:I

.field private B:F

.field private final C:I

.field private D:Z

.field private E:I

.field private F:Z

.field private final G:Ljava/lang/String;

.field private final H:F

.field private final I:[F

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/maps/driveabout/vector/cu;

.field private final k:Lt/P;

.field private l:Lt/P;

.field private final m:F

.field private n:Lt/O;

.field private o:[Lcom/google/android/maps/driveabout/vector/ay;

.field private final p:Lcom/google/android/maps/driveabout/vector/cs;

.field private q:Lcom/google/android/maps/driveabout/vector/cw;

.field private final r:Lcom/google/android/maps/driveabout/vector/cp;

.field private final s:Lcom/google/android/maps/driveabout/vector/cp;

.field private t:Lcom/google/android/maps/driveabout/vector/cp;

.field private u:Lcom/google/android/maps/driveabout/vector/di;

.field private v:Lcom/google/android/maps/driveabout/vector/f;

.field private final w:F

.field private final x:F

.field private final y:F

.field private z:I


# direct methods
.method constructor <init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/Z;IIZFFFILt/P;FFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/cs;)V
    .registers 27

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move/from16 v5, p8

    move/from16 v6, p9

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/maps/driveabout/vector/af;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/Z;FFIZ)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->G:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    mul-float v1, p16, p10

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/aw;->C:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->p:Lcom/google/android/maps/driveabout/vector/cs;

    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->y:F

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->j:Lcom/google/android/maps/driveabout/vector/cu;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cp;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cp;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->F:Z

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->A:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    mul-float v1, p16, p13

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->H:F

    return-void
.end method

.method static a(F[FI)I
    .registers 7

    const/4 v3, 0x0

    aget v0, p1, p2

    sub-float v0, p0, v0

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_d

    :cond_9
    :goto_9
    return p2

    :cond_a
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    :cond_d
    cmpl-float v1, v0, v3

    if-lez v1, :cond_28

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_28

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, p0, v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a

    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_28
    array-length v0, p1

    add-int/lit8 p2, v0, -0x1

    goto :goto_9
.end method

.method static a(Lt/P;)I
    .registers 4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lt/P;->a(ILt/L;)V

    invoke-virtual {p0, v1}, Lt/P;->a(Lt/L;)V

    invoke-static {v0, v1}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Lt/Z;ZLcom/google/android/maps/driveabout/vector/I;)I
    .registers 4

    if-eqz p1, :cond_17

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_17

    invoke-virtual {p0}, Lt/Z;->c()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lt/Z;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lt/Z;->a(I)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/vector/af;->b(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v0

    goto :goto_16
.end method

.method public static a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/P;ZFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;
    .registers 21

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;ZFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;
    .registers 21

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lt/X;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;
    .registers 12

    invoke-static/range {p0 .. p10}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;
    .registers 33

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lt/P;->b()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_75

    mul-float v4, p6, v14

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lt/P;->b(F)Lt/P;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lt/P;->b()I

    :goto_1a
    move-object/from16 v0, p10

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;F)F

    move-result v20

    const/high16 v4, 0x3f80

    add-float v4, v4, v20

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v5

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v20, v5

    if-nez v5, :cond_3b

    const/4 v4, 0x0

    :cond_3a
    :goto_3a
    return-object v4

    :cond_3b
    invoke-virtual/range {v16 .. v16}, Lt/P;->d()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    const/4 v4, 0x0

    goto :goto_3a

    :cond_45
    new-instance v4, Lcom/google/android/maps/driveabout/vector/aw;

    invoke-interface/range {p0 .. p0}, Lt/l;->e()Lt/Z;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lt/l;->i()I

    move-result v9

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v5

    float-to-int v15, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v21, p10

    invoke-direct/range {v4 .. v21}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/Z;IIZFFFILt/P;FFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/cs;)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aw;->e()Z

    move-result v5

    if-nez v5, :cond_3a

    const/4 v4, 0x0

    goto :goto_3a

    :cond_75
    move-object/from16 v16, p3

    goto :goto_1a
.end method

.method private static a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;
    .registers 32

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lt/P;->b()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_95

    mul-float v3, p6, v13

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lt/P;->b(F)Lt/P;

    move-result-object v15

    invoke-virtual {v15}, Lt/P;->b()I

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Lt/A;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p10

    move-object/from16 v1, p8

    move/from16 v2, p6

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;F)F

    move-result v19

    const/high16 v3, 0x3f80

    add-float v3, v3, v19

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v19, v4

    if-nez v4, :cond_3d

    const/4 v3, 0x0

    :cond_3c
    :goto_3c
    return-object v3

    :cond_3d
    invoke-virtual {v15}, Lt/P;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    const/4 v3, 0x0

    goto :goto_3c

    :cond_47
    invoke-interface/range {p0 .. p0}, Lt/l;->e()Lt/Z;

    move-result-object v7

    const/4 v3, 0x0

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Lt/A;->b()I

    move-result v4

    if-ge v3, v4, :cond_68

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lt/A;->a(I)Lt/B;

    move-result-object v4

    invoke-virtual {v4}, Lt/B;->a()Z

    move-result v4

    if-eqz v4, :cond_92

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lt/A;->a(I)Lt/B;

    move-result-object v3

    invoke-virtual {v3}, Lt/B;->j()Lt/Z;

    move-result-object v7

    :cond_68
    new-instance v3, Lcom/google/android/maps/driveabout/vector/aw;

    invoke-interface/range {p0 .. p0}, Lt/l;->i()I

    move-result v8

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/t;->i()F

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

    invoke-direct/range {v3 .. v20}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/Z;IIZFFFILt/P;FFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/cs;)V

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aw;->e()Z

    move-result v4

    if-nez v4, :cond_3c

    const/4 v3, 0x0

    goto :goto_3c

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_95
    move-object/from16 v15, p3

    goto :goto_1a
.end method

.method static a(Lt/P;FF)Lt/P;
    .registers 15

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bX;->i:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/bX;->j:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/bX;->k:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bX;->l:Lt/L;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    const/4 v2, 0x0

    move v3, p2

    :goto_1a
    if-ge v2, v10, :cond_40

    invoke-virtual {p0, v2}, Lt/P;->b(I)F

    move-result v4

    sub-float/2addr p1, v4

    const v5, 0x38d1b717

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_91

    const v5, -0x472e48e9

    cmpg-float v5, p1, v5

    if-gez v5, :cond_40

    const/4 v0, 0x1

    const/high16 v5, 0x3f80

    div-float v4, p1, v4

    add-float/2addr v4, v5

    invoke-virtual {p0, v2, v9}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v8}, Lt/P;->a(ILt/L;)V

    invoke-static {v9, v8, v4, v6}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    :cond_40
    move v4, v2

    :goto_41
    if-ge v4, v10, :cond_ac

    invoke-virtual {p0, v4}, Lt/P;->b(I)F

    move-result v11

    sub-float v5, v3, v11

    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_95

    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gez v3, :cond_ac

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    invoke-virtual {p0, v4, v9}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5, v8}, Lt/P;->a(ILt/L;)V

    invoke-static {v9, v8, v3, v7}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    move v3, v1

    :goto_68
    add-int/lit8 v2, v2, 0x1

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

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    const/4 v0, 0x1

    invoke-virtual {v6, v5, v1}, Lt/L;->a([II)V

    :goto_81
    move v1, v0

    move v0, v2

    :goto_83
    if-gt v0, v4, :cond_9e

    invoke-virtual {p0, v0, v8}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v5, v1}, Lt/L;->a([II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_83

    :cond_91
    sub-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_95
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_41

    :cond_9a
    const/4 v1, 0x0

    goto :goto_71

    :cond_9c
    const/4 v1, 0x0

    goto :goto_75

    :cond_9e
    if-eqz v3, :cond_a5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v7, v5, v1}, Lt/L;->a([II)V

    :cond_a5
    invoke-static {v5}, Lt/P;->a([I)Lt/P;

    move-result-object v0

    return-object v0

    :cond_aa
    move v0, v1

    goto :goto_81

    :cond_ac
    move v3, v1

    goto :goto_68
.end method

.method private a(F)V
    .registers 14

    const/4 v1, 0x1

    const/4 v11, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bX;->d:Lt/L;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v6

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    mul-float/2addr v0, v7

    mul-float/2addr v0, p1

    const/high16 v7, 0x4000

    div-float v7, v0, v7

    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [Lt/L;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v0, v11, v5}, Lt/P;->a(ILt/L;)V

    move v0, v1

    :goto_2c
    if-ge v0, v6, :cond_62

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v9, v0, v4}, Lt/P;->a(ILt/L;)V

    invoke-static {v4, v5, v2}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v2, v7, v3}, Lt/N;->a(Lt/L;FLt/L;)V

    invoke-virtual {v4, v3}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v9

    aput-object v9, v8, v0

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v3}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v10

    aput-object v10, v8, v9

    if-ne v0, v1, :cond_5c

    invoke-virtual {v5, v3}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v9

    aput-object v9, v8, v11

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v3}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v10

    aput-object v10, v8, v9

    :cond_5c
    invoke-virtual {v5, v4}, Lt/L;->b(Lt/L;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_62
    new-instance v0, Lt/O;

    invoke-direct {v0, v8}, Lt/O;-><init>([Lt/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->n:Lt/O;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/ay;F)V
    .registers 12

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    invoke-virtual {p2, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;)V

    iget-object v3, p3, Lcom/google/android/maps/driveabout/vector/ay;->a:Lt/L;

    invoke-static {v3, v2, v1}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->p()F

    move-result v2

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v1}, Lt/L;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-interface {v0, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v1, 0x42b4

    iget v3, p3, Lcom/google/android/maps/driveabout/vector/ay;->d:F

    sub-float/2addr v1, v3

    invoke-interface {v0, v1, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    cmpl-float v1, p4, v5

    if-eqz v1, :cond_3d

    invoke-interface {v0, p4, v6, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_3d
    iget v1, p3, Lcom/google/android/maps/driveabout/vector/ay;->b:F

    mul-float/2addr v1, v2

    iget v3, p3, Lcom/google/android/maps/driveabout/vector/ay;->c:F

    mul-float/2addr v2, v3

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lt/P;F)V
    .registers 15

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    invoke-virtual {p2}, Lt/P;->b()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v0, v4, 0x4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    new-array v0, v4, [Lcom/google/android/maps/driveabout/vector/ay;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    new-array v5, v3, [F

    const/4 v0, 0x0

    const/4 v6, 0x0

    aput v6, v5, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2}, Lt/P;->a(ILt/L;)V

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v4, :cond_4b

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6, v1}, Lt/P;->a(ILt/L;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/ay;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v1, p3, v8}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Lt/L;Lt/L;FLcom/google/android/maps/driveabout/vector/ax;)V

    aput-object v7, v6, v0

    invoke-virtual {v2, v1}, Lt/L;->c(Lt/L;)F

    move-result v6

    add-int/lit8 v7, v0, 0x1

    aget v8, v5, v0

    add-float/2addr v6, v8

    aput v6, v5, v7

    add-int/lit8 v0, v0, 0x1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_29

    :cond_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->p:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->j:Lcom/google/android/maps/driveabout/vector/cu;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/google/android/maps/driveabout/vector/cs;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F

    move-result-object v4

    const/high16 v0, 0x3f80

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget v1, v4, v1

    div-float v1, v0, v1

    const/4 v0, 0x0

    :goto_62
    array-length v2, v4

    if-ge v0, v2, :cond_6d

    aget v2, v4, v0

    mul-float/2addr v2, v1

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_6d
    const/high16 v0, 0x3f80

    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    aget v1, v5, v1

    div-float v1, v0, v1

    new-array v6, v3, [F

    const/4 v0, 0x0

    :goto_79
    if-ge v0, v3, :cond_8d

    aget v2, v5, v0

    mul-float/2addr v2, v1

    aput v2, v5, v0

    add-int/lit8 v2, v3, -0x1

    sub-int/2addr v2, v0

    const/high16 v7, 0x3f80

    aget v8, v5, v0

    sub-float/2addr v7, v8

    aput v7, v6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_8d
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_90
    if-ge v0, v3, :cond_a9

    aget v7, v5, v0

    invoke-static {v7, v4, v2}, Lcom/google/android/maps/driveabout/vector/aw;->a(F[FI)I

    move-result v2

    aget v7, v4, v2

    aput v7, v5, v0

    aget v7, v6, v0

    invoke-static {v7, v4, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(F[FI)I

    move-result v1

    aget v7, v4, v1

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_a9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v2

    const/4 v0, 0x0

    :goto_b6
    if-ge v0, v3, :cond_db

    aget v4, v5, v0

    mul-float/2addr v4, v1

    sub-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, v6, v7

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v8, v4, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v4, v7, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_db
    return-void
.end method

.method static b(Lt/P;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    const/4 v2, 0x2

    if-ge v3, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, v0}, Lt/P;->c(I)F

    move-result v4

    move v2, v1

    :goto_11
    if-ge v2, v3, :cond_b

    invoke-virtual {p0, v2}, Lt/P;->c(I)F

    move-result v5

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x4270

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2a

    const/high16 v6, 0x4396

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    move v0, v1

    goto :goto_b

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 11

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7c

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v3, v7, v1}, Lt/P;->a(ILt/L;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v3, v4, v2}, Lt/P;->a(ILt/L;)V

    new-array v3, v4, [Lcom/google/android/maps/driveabout/vector/ay;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/ay;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v0, v5}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Lt/L;Lt/L;FLcom/google/android/maps/driveabout/vector/ax;)V

    aput-object v4, v3, v7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v6, v6}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :goto_7b
    return-void

    :cond_7c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lcom/google/android/maps/driveabout/vector/aT;Lt/P;F)V

    goto :goto_7b
.end method

.method private h()Lt/P;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aw;->i()Lt/P;

    move-result-object v1

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1f

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_19

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aw;->b(Lt/P;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_1f
    move-object v0, v1

    goto :goto_18
.end method

.method private i()Lt/P;
    .registers 9

    const/high16 v4, 0x4000

    const/high16 v7, 0x3e80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    if-nez v0, :cond_56

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_53

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v2, v0}, Lt/P;->b(I)F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_50

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/bX;->c:Lt/L;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/bX;->d:Lt/L;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v6, v0, v4}, Lt/P;->a(ILt/L;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0, v5}, Lt/P;->a(ILt/L;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    mul-float v2, v0, v7

    invoke-static {v4, v5, v2, v1}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    const/high16 v2, 0x3f40

    mul-float/2addr v0, v2

    invoke-static {v5, v4, v0, v3}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    invoke-static {v1, v3}, Lt/P;->a(Lt/L;Lt/L;)Lt/P;

    move-result-object v0

    :goto_4f
    return-object v0

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_53
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    :cond_56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v0}, Lt/P;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    packed-switch v1, :pswitch_data_c4

    const/4 v0, 0x0

    goto :goto_4f

    :pswitch_63
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;FF)Lt/P;

    move-result-object v0

    goto :goto_4f

    :pswitch_71
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;FF)Lt/P;

    move-result-object v0

    goto :goto_4f

    :pswitch_88
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;FF)Lt/P;

    move-result-object v0

    goto :goto_4f

    :pswitch_a1
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float/2addr v0, v1

    const v1, 0x3ea8f5c3

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;FF)Lt/P;

    move-result-object v0

    goto :goto_4f

    :pswitch_b2
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    sub-float/2addr v0, v1

    const v1, 0x3f2b851f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;FF)Lt/P;

    move-result-object v0

    goto :goto_4f

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_63
        :pswitch_71
        :pswitch_88
        :pswitch_a1
        :pswitch_b2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 13

    const/high16 v1, 0x1

    const/4 v5, 0x0

    const/high16 v3, -0x4080

    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->F:Z

    if-nez v0, :cond_17

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    array-length v0, v0

    if-lez v0, :cond_16

    iget-object v6, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->v:Lcom/google/android/maps/driveabout/vector/f;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->v:Lcom/google/android/maps/driveabout/vector/f;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/f;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    if-ne v0, v1, :cond_40

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->v:Lcom/google/android/maps/driveabout/vector/f;

    :cond_40
    :goto_40
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    if-eqz v0, :cond_59

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_59

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e8

    :cond_59
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/aw;->b(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    const/4 v7, 0x1

    aget v7, v1, v7

    mul-float v1, v0, v0

    mul-float v8, v7, v7

    add-float/2addr v1, v8

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_cf

    move v1, v2

    :goto_73
    cmpl-float v0, v7, v4

    if-ltz v0, :cond_d1

    move v0, v2

    :goto_78
    mul-float v3, v0, v7

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    if-nez v2, :cond_89

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    :goto_87
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    :cond_89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    if-ne v0, v2, :cond_d9

    const v0, 0x3a83126f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_d6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    :goto_98
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    :goto_9a
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->D:Z

    if-nez v0, :cond_e8

    const/high16 v0, 0x3f40

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_aa

    const/high16 v0, -0x40c0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_e8

    :cond_aa
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    mul-float/2addr v0, v1

    :goto_af
    move v1, v5

    :goto_b0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    aget-object v2, v2, v1

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/ay;F)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_cc
    move v0, v1

    goto/16 :goto_40

    :cond_cf
    move v1, v3

    goto :goto_73

    :cond_d1
    move v0, v3

    goto :goto_78

    :cond_d3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    goto :goto_87

    :cond_d6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    goto :goto_98

    :cond_d9
    const v0, -0x457ced91

    cmpg-float v0, v1, v0

    if-gez v0, :cond_e5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    :goto_e2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->t:Lcom/google/android/maps/driveabout/vector/cp;

    goto :goto_9a

    :cond_e5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    goto :goto_e2

    :cond_e8
    move v0, v4

    goto :goto_af
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z
    .registers 18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->b:Lt/Z;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->b:Lt/Z;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->a:Lt/l;

    invoke-interface {v1}, Lt/l;->h()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_39

    const/4 v1, 0x1

    :goto_14
    move-object/from16 v0, p2

    invoke-static {v2, v1, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/Z;ZLcom/google/android/maps/driveabout/vector/I;)I

    move-result v6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->p:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->j:Lcom/google/android/maps/driveabout/vector/cu;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v1, :cond_4e

    const/16 v1, 0x2710

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(I)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_14

    :cond_3b
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aw;->p:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/aw;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/aw;->j:Lcom/google/android/maps/driveabout/vector/cu;

    iget v11, p0, Lcom/google/android/maps/driveabout/vector/aw;->x:F

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_4e
    invoke-direct/range {p0 .. p1}, Lcom/google/android/maps/driveabout/vector/aw;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/ay;->d:F

    const/4 v1, 0x1

    :goto_5f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    array-length v3, v3

    if-ge v1, v3, :cond_7e

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->o:[Lcom/google/android/maps/driveabout/vector/ay;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/google/android/maps/driveabout/vector/ay;->d:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41f0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_8e

    const/high16 v4, 0x43a5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->D:Z

    :cond_7e
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->h:Z

    if-eqz v1, :cond_89

    new-instance v1, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/f;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->v:Lcom/google/android/maps/driveabout/vector/f;

    :cond_89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->F:Z

    const/4 v1, 0x1

    goto :goto_38

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f
.end method

.method public a(Lt/av;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v1, v0}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt/av;->a(Lt/L;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v1}, Lt/P;->c()Lt/L;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt/av;->a(Lt/L;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->q:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->u:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->u:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_22
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->w:F

    div-float/2addr v0, v1

    const v1, 0x3f666666

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_23

    const/high16 v1, 0x3fa0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_23

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->A:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->B:F

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->s:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->u:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->u:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_16
    return-void
.end method

.method b(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v2, v4, v0}, Lt/P;->a(ILt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-virtual {v2, v1}, Lt/P;->a(Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    invoke-virtual {p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    aget v0, v0, v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    invoke-virtual {p1, v1, v3}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    aget v3, v1, v4

    sub-float v0, v3, v0

    aput v0, v1, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->I:[F

    aget v1, v0, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aw;->e()Z

    move-result v0

    return v0
.end method

.method e()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1a

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    if-le v2, v1, :cond_1b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v2}, Lt/P;->d()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->k:Lt/P;

    invoke-virtual {v2}, Lt/P;->d()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aw;->m:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1a

    :cond_2f
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aw;->h()Lt/P;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    if-eqz v2, :cond_48

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->y:F

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->l:Lt/P;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/P;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->z:I

    move v0, v1

    goto :goto_1a

    :cond_48
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    goto :goto_2
.end method

.method f()I
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->A:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->z:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aw;->C:I

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

.method public n()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->H:F

    return v0
.end method

.method public o()Lt/W;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->n:Lt/O;

    return-object v0
.end method

.method public t()I
    .registers 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->f:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->E:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_8
    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aw;->B:F

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
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aw;->f()I

    move-result v1

    goto :goto_11
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->G:Ljava/lang/String;

    return-object v0
.end method
