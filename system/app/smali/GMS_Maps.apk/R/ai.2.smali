.class public Lr/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lr/ak;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lr/an;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p2, p0, Lr/ai;->b:I

    .line 208
    iput p3, p0, Lr/ai;->c:I

    .line 209
    invoke-direct {p0, p1}, Lr/ai;->a(Lr/an;)V

    .line 210
    return-void
.end method

.method private a(Lr/ak;Lr/ak;Ln/Q;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v0

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {v0, v1, p3}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v0

    .line 412
    invoke-static {p2}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {p2}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v2

    invoke-static {v1, v2, p3}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    .line 413
    invoke-static {p1}, Lr/ak;->h(Lr/ak;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lr/aj;

    invoke-direct {v3, p2, v0, v1}, Lr/aj;-><init>(Lr/ak;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-static {p2}, Lr/ak;->h(Lr/ak;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lr/aj;

    invoke-direct {v3, p1, v1, v0}, Lr/aj;-><init>(Lr/ak;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method private a(Lr/an;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lr/ai;->b(Lr/an;)[Lr/ak;

    move-result-object v0

    iput-object v0, p0, Lr/ai;->a:[Lr/ak;

    .line 265
    invoke-direct {p0}, Lr/ai;->b()V

    .line 266
    return-void
.end method

.method static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-static {p0, p1, p2, p3, p4}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 368
    invoke-static {p0, p1, p4}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    float-to-double v1, v1

    .line 369
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_19

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_19

    const/4 v0, 0x1

    .line 371
    :cond_19
    return v0
.end method

.method static a(Ln/ac;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    .line 280
    invoke-virtual {p0}, Ln/ac;->f()I

    move-result v2

    const/16 v3, 0x70

    if-gt v2, v3, :cond_14

    invoke-virtual {p0}, Ln/ac;->j()Z

    move-result v2

    if-nez v2, :cond_14

    .line 287
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 280
    goto :goto_13

    .line 282
    :cond_16
    if-nez p1, :cond_13

    .line 284
    invoke-virtual {p0}, Ln/ac;->f()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_13

    move v0, v1

    goto :goto_13
.end method

.method static a(Lr/ak;Lr/ak;ILn/Q;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-static {p0}, Lr/ak;->f(Lr/ak;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v2

    invoke-static {p0}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    .line 404
    :cond_1c
    :goto_1c
    return v0

    .line 389
    :cond_1d
    invoke-static {p0}, Lr/ak;->g(Lr/ak;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v2

    invoke-static {p0}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    .line 394
    :cond_38
    invoke-static {p1}, Lr/ak;->f(Lr/ak;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {p0}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {p0}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v2

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    .line 399
    :cond_53
    invoke-static {p1}, Lr/ak;->g(Lr/ak;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {p0}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v1

    invoke-static {p0}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v2

    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    .line 404
    :cond_6e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private b()V
    .registers 12

    .prologue
    .line 335
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    array-length v2, v0

    .line 336
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 337
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_54

    .line 338
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    aget-object v4, v0, v1

    .line 339
    invoke-static {v4}, Lr/ak;->e(Lr/ak;)Ln/aa;

    move-result-object v5

    .line 340
    add-int/lit8 v0, v1, 0x1

    :goto_16
    if-ge v0, v2, :cond_50

    .line 341
    iget-object v6, p0, Lr/ai;->a:[Lr/ak;

    aget-object v6, v6, v0

    .line 342
    invoke-static {v6}, Lr/ak;->e(Lr/ak;)Ln/aa;

    move-result-object v7

    .line 343
    invoke-virtual {v5, v7}, Ln/aa;->a(Ln/ab;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v4, v6}, Lr/ak;->a(Lr/ak;Lr/ak;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v4}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v7

    invoke-static {v4}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v8

    invoke-static {v6}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v9

    invoke-static {v6}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v3}, Lr/ai;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v7

    if-nez v7, :cond_4a

    iget v7, p0, Lr/ai;->b:I

    invoke-static {v4, v6, v7, v3}, Lr/ai;->a(Lr/ak;Lr/ak;ILn/Q;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 350
    :cond_4a
    invoke-direct {p0, v4, v6, v3}, Lr/ai;->a(Lr/ak;Lr/ak;Ln/Q;)V

    .line 340
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 337
    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 354
    :cond_54
    return-void
.end method

.method private b(Lr/an;)[Lr/ak;
    .registers 22
    .parameter

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Lr/an;->a()I

    move-result v16

    .line 296
    new-instance v17, Ljava/util/ArrayList;

    mul-int/lit8 v1, v16, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    const/4 v1, 0x0

    move v15, v1

    :goto_f
    move/from16 v0, v16

    if-ge v15, v0, :cond_8f

    .line 298
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lr/an;->a(I)Ln/ac;

    move-result-object v2

    .line 300
    move-object/from16 v0, p0

    iget v1, v0, Lr/ai;->c:I

    invoke-static {v2, v1}, Lr/ai;->a(Ln/ac;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 297
    :cond_23
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_f

    .line 306
    :cond_27
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lr/an;->b(I)Ln/U;

    move-result-object v18

    .line 307
    invoke-virtual/range {v18 .. v18}, Ln/U;->b()I

    move-result v19

    .line 308
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v3

    .line 309
    const/4 v1, 0x1

    move v14, v1

    :goto_3a
    move/from16 v0, v19

    if-ge v14, v0, :cond_23

    .line 310
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ln/U;->a(I)Ln/Q;

    move-result-object v4

    .line 311
    const/4 v1, 0x1

    if-ne v14, v1, :cond_8b

    const/4 v5, 0x1

    .line 312
    :goto_48
    add-int/lit8 v1, v19, -0x1

    if-ne v14, v1, :cond_8d

    const/4 v6, 0x1

    .line 315
    :goto_4d
    invoke-direct/range {p0 .. p0}, Lr/ai;->c()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v2}, Ln/ac;->k()Z

    move-result v1

    if-nez v1, :cond_67

    .line 316
    :cond_59
    new-instance v1, Lr/ak;

    move-object/from16 v0, p0

    iget v7, v0, Lr/ai;->b:I

    invoke-direct/range {v1 .. v7}, Lr/ak;-><init>(Ln/ac;Ln/Q;Ln/Q;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_67
    invoke-direct/range {p0 .. p0}, Lr/ai;->c()Z

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {v2}, Ln/ac;->n()Z

    move-result v1

    if-nez v1, :cond_86

    .line 320
    :cond_73
    new-instance v7, Lr/ak;

    move-object/from16 v0, p0

    iget v13, v0, Lr/ai;->b:I

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lr/ak;-><init>(Ln/ac;Ln/Q;Ln/Q;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_86
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move-object v3, v4

    goto :goto_3a

    .line 311
    :cond_8b
    const/4 v5, 0x0

    goto :goto_48

    .line 312
    :cond_8d
    const/4 v6, 0x0

    goto :goto_4d

    .line 326
    :cond_8f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lr/ak;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lr/ak;

    return-object v1
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 357
    iget v0, p0, Lr/ai;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lr/ak;
    .registers 3
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lr/ak;)Lr/ak;
    .registers 10
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    array-length v2, v0

    .line 218
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 220
    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v0

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v1

    const v4, 0x3dcccccd

    invoke-virtual {v0, v1, v4}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v4

    .line 222
    invoke-static {p1}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v0

    invoke-static {p1}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v1

    const v5, 0x3f666666

    invoke-virtual {v0, v1, v5}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v5

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_28
    if-ge v1, v2, :cond_89

    .line 226
    iget-object v0, p0, Lr/ai;->a:[Lr/ak;

    aget-object v0, v0, v1

    .line 227
    invoke-static {p1}, Lr/ak;->c(Lr/ak;)Ln/ac;

    move-result-object v6

    invoke-static {v0}, Lr/ak;->c(Lr/ak;)Ln/ac;

    move-result-object v7

    if-ne v6, v7, :cond_85

    invoke-static {p1}, Lr/ak;->d(Lr/ak;)F

    move-result v6

    invoke-static {v0}, Lr/ak;->d(Lr/ak;)F

    move-result v7

    invoke-static {v6, v7}, Ln/S;->a(FF)F

    move-result v6

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_85

    .line 231
    invoke-static {v0}, Lr/ak;->e(Lr/ak;)Ln/aa;

    move-result-object v6

    invoke-virtual {v6, v4}, Ln/aa;->a(Ln/Q;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-static {v0}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v6

    invoke-static {v0}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v7

    invoke-static {v6, v7, v4, v3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v6

    iget v7, p0, Lr/ai;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_68

    .line 249
    :cond_67
    :goto_67
    return-object v0

    .line 239
    :cond_68
    invoke-static {v0}, Lr/ak;->e(Lr/ak;)Ln/aa;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln/aa;->a(Ln/Q;)Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-static {v0}, Lr/ak;->b(Lr/ak;)Ln/Q;

    move-result-object v6

    invoke-static {v0}, Lr/ak;->a(Lr/ak;)Ln/Q;

    move-result-object v7

    invoke-static {v6, v7, v5, v3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v6

    iget v7, p0, Lr/ai;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_67

    .line 225
    :cond_85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 249
    :cond_89
    const/4 v0, 0x0

    goto :goto_67
.end method
