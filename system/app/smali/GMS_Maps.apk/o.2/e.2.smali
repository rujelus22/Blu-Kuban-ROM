.class public Lo/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lac/p;

.field private final b:Lo/r;

.field private final c:Lo/G;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lo/E;->a:Lac/p;

    .line 76
    iput-object v1, p0, Lo/E;->b:Lo/r;

    .line 77
    new-instance v0, Lo/G;

    invoke-direct {v0, p0, v1}, Lo/G;-><init>(Lo/E;Lo/F;)V

    iput-object v0, p0, Lo/E;->c:Lo/G;

    .line 78
    return-void
.end method

.method constructor <init>(Lac/p;Lo/r;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lo/E;->a:Lac/p;

    .line 82
    iput-object p2, p0, Lo/E;->b:Lo/r;

    .line 83
    new-instance v0, Lo/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/G;-><init>(Lo/E;Lo/F;)V

    iput-object v0, p0, Lo/E;->c:Lo/G;

    .line 84
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lo/E;->c:Lo/G;

    invoke-virtual {v0, v1}, Lac/h;->a(Lac/q;)V

    .line 85
    return-void
.end method

.method protected static a(Lm/b;)Lo/P;
    .registers 20
    .parameter

    .prologue
    .line 295
    invoke-virtual/range {p0 .. p0}, Lm/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lm/b;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 296
    :cond_c
    const/4 v0, 0x0

    .line 384
    :goto_d
    return-object v0

    .line 298
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lm/b;->getSpeed()F

    move-result v0

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 299
    const-wide v2, 0x4051800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_21

    .line 300
    const/4 v0, 0x0

    goto :goto_d

    .line 301
    :cond_21
    const-wide v2, 0x4072c00000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2f

    .line 302
    const-wide v0, 0x4072c00000000000L

    .line 305
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lm/b;->h()Ln/ac;

    move-result-object v7

    .line 306
    invoke-virtual/range {p0 .. p0}, Lm/b;->e()Z

    move-result v2

    if-eqz v2, :cond_41

    if-eqz v7, :cond_41

    invoke-virtual {v7}, Ln/ac;->c()I

    move-result v2

    if-nez v2, :cond_43

    .line 307
    :cond_41
    const/4 v0, 0x0

    goto :goto_d

    .line 309
    :cond_43
    invoke-virtual {v7}, Ln/ac;->b()Ln/U;

    move-result-object v9

    .line 310
    invoke-virtual {v9}, Ln/U;->b()I

    move-result v10

    .line 311
    invoke-virtual/range {p0 .. p0}, Lm/b;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lm/b;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v2

    .line 314
    invoke-virtual {v2}, Ln/Q;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Ln/Q;->a(D)D

    move-result-wide v11

    .line 315
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 316
    const/4 v6, 0x0

    :goto_65
    add-int/lit8 v4, v10, -0x1

    if-ge v6, v4, :cond_126

    .line 317
    invoke-virtual {v9, v6}, Ln/U;->a(I)Ln/Q;

    move-result-object v8

    .line 318
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v9, v4}, Ln/U;->a(I)Ln/Q;

    move-result-object v13

    .line 320
    invoke-static {v8, v13, v2, v3}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v4

    float-to-double v4, v4

    .line 325
    const-wide/high16 v14, 0x4014

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_122

    .line 326
    const-wide/16 v4, 0x0

    .line 330
    invoke-static {v8, v13}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v2

    float-to-double v13, v2

    .line 331
    invoke-virtual/range {p0 .. p0}, Lm/b;->getBearing()F

    move-result v2

    float-to-double v15, v2

    .line 332
    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 334
    const-wide v15, 0x4056800000000000L

    cmpg-double v2, v13, v15

    if-ltz v2, :cond_a1

    const-wide v15, 0x4070e00000000000L

    cmpl-double v2, v13, v15

    if-lez v2, :cond_b9

    .line 335
    :cond_a1
    const/4 v2, 0x1

    move v8, v2

    move v2, v6

    .line 345
    :goto_a4
    const/4 v6, 0x1

    if-ne v8, v6, :cond_ad

    invoke-virtual {v7}, Ln/ac;->k()Z

    move-result v6

    if-nez v6, :cond_b6

    :cond_ad
    const/4 v6, -0x1

    if-ne v8, v6, :cond_bf

    invoke-virtual {v7}, Ln/ac;->n()Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 347
    :cond_b6
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 339
    :cond_b9
    add-int/lit8 v6, v6, 0x1

    .line 340
    const/4 v2, -0x1

    move v8, v2

    move v2, v6

    goto :goto_a4

    :cond_bf
    move v7, v2

    move-object v2, v3

    move-wide/from16 v17, v4

    move-wide/from16 v5, v17

    move-object v4, v3

    .line 353
    :goto_c6
    cmpg-double v13, v5, v0

    if-gez v13, :cond_e6

    if-lez v8, :cond_e4

    add-int/lit8 v13, v10, -0x1

    if-ge v7, v13, :cond_e6

    .line 355
    :cond_d0
    add-int v4, v7, v8

    invoke-virtual {v9, v4}, Ln/U;->a(I)Ln/Q;

    move-result-object v4

    .line 356
    invoke-virtual {v2, v4}, Ln/Q;->c(Ln/Q;)F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v11

    .line 358
    add-double/2addr v5, v13

    .line 360
    add-int/2addr v7, v8

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 361
    goto :goto_c6

    .line 353
    :cond_e4
    if-gtz v7, :cond_d0

    .line 363
    :cond_e6
    cmpl-double v7, v5, v0

    if-lez v7, :cond_129

    .line 364
    invoke-virtual {v4}, Ln/Q;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Ln/Q;->a(D)D

    move-result-wide v7

    sub-double v0, v5, v0

    mul-double/2addr v0, v7

    double-to-float v0, v0

    .line 366
    invoke-virtual {v2, v4}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 367
    invoke-static {v1, v0, v1}, Ln/Q;->b(Ln/Q;FLn/Q;)V

    .line 368
    invoke-virtual {v2, v1}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 370
    :goto_101
    invoke-virtual {v0, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 374
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 376
    :cond_10a
    new-instance v1, Ln/s;

    invoke-virtual {v0}, Ln/Q;->a()I

    move-result v2

    invoke-virtual {v0}, Ln/Q;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ln/s;-><init>(II)V

    .line 378
    new-instance v0, Lo/P;

    invoke-direct {v0, v1}, Lo/P;-><init>(Ln/s;)V

    .line 379
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/P;->a(I)V

    goto/16 :goto_d

    .line 316
    :cond_122
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_65

    .line 384
    :cond_126
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_129
    move-object v0, v2

    goto :goto_101
.end method

.method static synthetic a(Lo/E;)Lo/r;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lo/E;->b:Lo/r;

    return-object v0
.end method

.method private b(Lm/b;)F
    .registers 3
    .parameter

    .prologue
    .line 392
    invoke-virtual {p1}, Lm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lm/b;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 394
    invoke-virtual {p1}, Lm/b;->getBearing()F

    move-result v0

    .line 396
    :goto_16
    return v0

    :cond_17
    const/high16 v0, -0x4080

    goto :goto_16
.end method

.method private c(Lm/b;)F
    .registers 3
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, Lm/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 406
    invoke-virtual {p1}, Lm/b;->getSpeed()F

    move-result v0

    .line 408
    :goto_a
    return v0

    :cond_b
    const/high16 v0, -0x4080

    goto :goto_a
.end method


# virtual methods
.method public a(Lm/b;Lo/x;I)Lo/g;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v0, Lo/P;

    invoke-virtual {p1}, Lm/b;->m()Ln/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/P;-><init>(Ln/s;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p2}, Lo/x;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_a1

    .line 210
    invoke-static {p1}, Lo/E;->a(Lm/b;)Lo/P;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_25

    .line 212
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object v1, v0

    .line 216
    :goto_26
    const-wide/16 v2, 0x0

    .line 217
    invoke-virtual {p1}, Lm/b;->j()Lo/B;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lo/B;->a()Lo/x;

    move-result-object v5

    if-ne v5, p2, :cond_3d

    .line 219
    invoke-virtual {p2, v0}, Lo/x;->a(Lo/B;)D

    move-result-wide v2

    invoke-virtual {v0}, Lo/B;->d()D

    move-result-wide v5

    add-double/2addr v2, v5

    .line 222
    :cond_3d
    const-wide/high16 v5, 0x4069

    invoke-virtual {p1}, Lm/b;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ln/Q;->a(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    invoke-virtual {p2, v2, v3}, Lo/x;->c(D)Ljava/util/Collection;

    move-result-object v0

    .line 225
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-virtual {p2}, Lo/x;->m()Lo/P;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Lo/i;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/P;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/P;

    invoke-virtual {p2}, Lo/x;->d()I

    move-result v3

    invoke-direct {v2, v0, v3, p3}, Lo/i;-><init>([Lo/P;II)V

    invoke-direct {p0, p1}, Lo/E;->b(Lm/b;)F

    move-result v0

    invoke-direct {p0, p1}, Lo/E;->c(Lm/b;)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lo/i;->a(FF)Lo/i;

    move-result-object v2

    invoke-virtual {p1}, Lm/b;->b()Z

    move-result v0

    if-nez v0, :cond_9f

    const/4 v0, 0x1

    :goto_7f
    invoke-virtual {v2, v0}, Lo/i;->a(Z)Lo/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/i;->a(Lo/P;)Lo/i;

    move-result-object v0

    invoke-virtual {p2}, Lo/x;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/i;->a(I)Lo/i;

    move-result-object v0

    invoke-virtual {p2}, Lo/x;->D()[Lo/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a([Lo/b;)Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->a()Lo/g;

    move-result-object v0

    .line 236
    invoke-virtual {p0, v0}, Lo/E;->a(Lo/g;)V

    .line 237
    return-object v0

    .line 228
    :cond_9f
    const/4 v0, 0x0

    goto :goto_7f

    :cond_a1
    move-object v1, v0

    goto :goto_26
.end method

.method public a(Lm/b;[Lo/P;II[Lo/b;)Lo/g;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    move v0, v1

    .line 135
    :goto_6
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lo/P;

    .line 137
    new-instance v4, Lo/P;

    invoke-virtual {p1}, Lm/b;->m()Ln/s;

    move-result-object v5

    invoke-direct {v4, v5}, Lo/P;-><init>(Ln/s;)V

    aput-object v4, v3, v2

    .line 138
    array-length v4, p2

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance v4, Lo/i;

    invoke-direct {v4, v3, p3, p4}, Lo/i;-><init>([Lo/P;II)V

    invoke-virtual {p1}, Lm/b;->b()Z

    move-result v3

    if-nez v3, :cond_44

    :goto_25
    invoke-virtual {v4, v1}, Lo/i;->a(Z)Lo/i;

    move-result-object v1

    invoke-virtual {v1, p5}, Lo/i;->a([Lo/b;)Lo/i;

    move-result-object v1

    .line 145
    if-nez v0, :cond_3a

    .line 146
    invoke-direct {p0, p1}, Lo/E;->b(Lm/b;)F

    move-result v0

    invoke-direct {p0, p1}, Lo/E;->c(Lm/b;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lo/i;->a(FF)Lo/i;

    .line 148
    :cond_3a
    invoke-virtual {v1}, Lo/i;->a()Lo/g;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lo/E;->a(Lo/g;)V

    .line 150
    return-object v0

    :cond_42
    move v0, v2

    .line 133
    goto :goto_6

    :cond_44
    move v1, v2

    .line 141
    goto :goto_25
.end method

.method public a(Lo/x;I)Lo/g;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-virtual {p1}, Lo/x;->v()[Lo/R;

    move-result-object v1

    .line 252
    const/4 v0, 0x0

    .line 253
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_14

    aget-object v2, v1, v4

    invoke-virtual {v2}, Lo/R;->i()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 254
    aget-object v0, v1, v4

    .line 257
    :cond_14
    new-instance v2, Lo/i;

    invoke-virtual {p1}, Lo/x;->d()I

    move-result v3

    invoke-direct {v2, v1, v3, p2}, Lo/i;-><init>([Lo/P;II)V

    invoke-virtual {p1}, Lo/x;->e()F

    move-result v1

    invoke-virtual {p1}, Lo/x;->f()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lo/i;->a(FF)Lo/i;

    move-result-object v1

    invoke-virtual {p1}, Lo/x;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/i;->a(Z)Lo/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/i;->a(Lo/P;)Lo/i;

    move-result-object v0

    invoke-virtual {p1}, Lo/x;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/i;->a(I)Lo/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/i;->b(I)Lo/i;

    move-result-object v0

    invoke-virtual {p1}, Lo/x;->D()[Lo/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a([Lo/b;)Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->a()Lo/g;

    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Lo/E;->a(Lo/g;)V

    .line 266
    return-object v0
.end method

.method public a([Lo/P;I[Lo/b;)Lo/g;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Lo/i;

    const/4 v1, 0x7

    invoke-direct {v0, p1, p2, v1}, Lo/i;-><init>([Lo/P;II)V

    invoke-virtual {v0, p3}, Lo/i;->a([Lo/b;)Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->a()Lo/g;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lo/E;->a(Lo/g;)V

    .line 189
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 413
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lo/E;->c:Lo/G;

    invoke-virtual {v0, v1}, Lac/h;->b(Lac/q;)V

    .line 414
    return-void
.end method

.method protected a(Lo/g;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Lo/g;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 272
    new-instance v0, LA/g;

    const-string v1, "addRequest"

    invoke-direct {v0, v1, p1}, LA/g;-><init>(Ljava/lang/String;Lac/g;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 274
    iget-object v0, p0, Lo/E;->a:Lac/p;

    invoke-interface {v0, p1}, Lac/p;->c(Lac/g;)V

    .line 280
    :goto_15
    return-void

    .line 276
    :cond_16
    const-string v0, "Router"

    const-string v1, "Invalid request"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lo/E;->b:Lo/r;

    invoke-virtual {v0, p1}, Lo/r;->a(Lo/g;)V

    goto :goto_15
.end method
