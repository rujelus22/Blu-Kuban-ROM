.class public Lm/h;
.super Lm/f;
.source "SourceFile"

# interfaces
.implements Lm/d;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field c:Ljava/util/ArrayList;

.field private final e:Lr/ao;

.field private final f:Ljava/util/ArrayList;

.field private g:Lm/j;

.field private h:Lo/x;

.field private i:I

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "            "

    aput-object v2, v0, v1

    sput-object v0, Lm/h;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm/c;)V
    .registers 4
    .parameter

    .prologue
    .line 138
    new-instance v0, Lr/ao;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v1}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/ao;-><init>(Lr/aH;)V

    invoke-direct {p0, p1, v0}, Lm/h;-><init>(Lm/c;Lr/ao;)V

    .line 140
    return-void
.end method

.method constructor <init>(Lm/c;Lr/ao;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 147
    const-string v0, "driveabout_hmm"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lm/h;->i:I

    .line 130
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lm/h;->j:D

    .line 148
    iput-object p2, p0, Lm/h;->e:Lr/ao;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    .line 154
    return-void
.end method

.method static a(D)D
    .registers 4
    .parameter

    .prologue
    .line 1028
    const-wide v0, 0x3fb015bf9217271aL

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private a(Landroid/location/Location;Lm/j;)Lm/b;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p2, Lm/j;->f:Z

    if-eqz v0, :cond_16

    .line 222
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 223
    iget-wide v1, p2, Lm/j;->g:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lm/b;->setBearing(F)V

    .line 226
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Landroid/location/Location;Lm/j;Lt/k;)Lm/b;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    instance-of v0, p1, Lm/b;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 246
    :cond_d
    const/4 v0, 0x0

    .line 394
    :goto_e
    return-object v0

    .line 248
    :cond_f
    iput-object p2, p0, Lm/h;->g:Lm/j;

    move-object v0, p1

    .line 251
    check-cast v0, Lm/b;

    iget v1, p0, Lm/h;->i:I

    invoke-virtual {v0, v1}, Lm/b;->b(I)V

    .line 254
    iget-wide v0, p2, Lm/j;->a:D

    invoke-virtual {p0, p1, p3, v0, v1}, Lm/h;->a(Landroid/location/Location;Lt/k;D)Lr/an;

    move-result-object v0

    .line 255
    if-nez v0, :cond_26

    .line 256
    invoke-direct {p0, p1, p2}, Lm/h;->a(Landroid/location/Location;Lm/j;)Lm/b;

    move-result-object v0

    goto :goto_e

    .line 258
    :cond_26
    new-instance v2, Lr/ai;

    invoke-virtual {p3}, Lt/k;->e()I

    move-result v1

    iget v3, p0, Lm/h;->i:I

    invoke-direct {v2, v0, v1, v3}, Lr/ai;-><init>(Lr/an;II)V

    .line 262
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    invoke-virtual {v2}, Lr/ai;->a()I

    move-result v7

    .line 264
    if-nez v7, :cond_41

    .line 265
    invoke-direct {p0, p1, p2}, Lm/h;->a(Landroid/location/Location;Lm/j;)Lm/b;

    move-result-object v0

    goto :goto_e

    .line 267
    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v7, :cond_5c

    .line 268
    new-instance v1, Lm/i;

    invoke-virtual {v2, v0}, Lr/ai;->a(I)Lr/ak;

    move-result-object v3

    invoke-direct {v1, v0, v3, p2, p3}, Lm/i;-><init>(ILr/ak;Lm/j;Lt/k;)V

    .line 270
    invoke-virtual {v2, v0}, Lr/ai;->a(I)Lr/ak;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr/ak;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v3, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 279
    :cond_5c
    iget-boolean v0, p2, Lm/j;->i:Z

    if-eqz v0, :cond_8e

    iget-wide v0, p2, Lm/j;->c:D

    const-wide/high16 v3, 0x4024

    cmpg-double v0, v0, v3

    if-gez v0, :cond_8e

    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8e

    iget v0, p0, Lm/h;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8e

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_77
    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a1

    .line 282
    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    invoke-direct {p0, v0, v2, p2}, Lm/h;->a(Lm/i;Lr/ai;Lm/j;)V

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    .line 286
    :cond_8e
    const/4 v0, 0x0

    move v1, v0

    :goto_90
    if-ge v1, v7, :cond_a1

    .line 287
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    invoke-virtual {v0}, Lm/i;->c()V

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    .line 292
    :cond_a1
    const/4 v0, 0x0

    move v1, v0

    :goto_a3
    if-ge v1, v7, :cond_b5

    .line 293
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/i;->a(Z)D

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3

    .line 295
    :cond_b5
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 298
    const-wide/16 v3, 0x0

    .line 299
    const-wide/16 v1, 0x0

    .line 300
    const/4 v0, 0x0

    move-wide v5, v3

    move-wide v3, v1

    move v2, v0

    :goto_c2
    if-ge v2, v7, :cond_e4

    .line 301
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    .line 305
    invoke-virtual {p3}, Lt/k;->c()I

    move-result v1

    sub-int v1, v7, v1

    if-lt v2, v1, :cond_e2

    const/4 v1, 0x1

    .line 307
    :goto_d5
    invoke-virtual {v0, v1}, Lm/i;->a(Z)D

    move-result-wide v8

    .line 308
    add-double/2addr v5, v8

    .line 309
    iget-wide v0, v0, Lm/i;->b:D

    mul-double/2addr v0, v8

    add-double/2addr v3, v0

    .line 300
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c2

    .line 305
    :cond_e2
    const/4 v1, 0x0

    goto :goto_d5

    .line 314
    :cond_e4
    const-wide/16 v0, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v5

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 315
    const-wide v8, 0x3fe999999999999aL

    iget-wide v10, p0, Lm/h;->j:D

    mul-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    iput-wide v0, p0, Lm/h;->j:D

    .line 321
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-virtual {p3}, Lt/k;->c()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 325
    const/4 v0, 0x0

    move v1, v0

    :goto_112
    if-ge v1, v2, :cond_12f

    .line 326
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    sub-int v8, v7, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    .line 327
    invoke-virtual {v0, v5, v6}, Lm/i;->a(D)V

    .line 332
    invoke-virtual {v0}, Lm/i;->a()D

    move-result-wide v8

    invoke-virtual {p3}, Lt/k;->a()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_180

    .line 344
    :cond_12f
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    .line 346
    new-instance v1, Lm/b;

    invoke-direct {v1, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 347
    iget-wide v7, p0, Lm/h;->j:D

    invoke-virtual {p3}, Lt/k;->b()D

    move-result-wide v9

    cmpl-double v2, v7, v9

    if-lez v2, :cond_189

    .line 349
    iget-object v2, v0, Lm/i;->f:Lr/ak;

    invoke-virtual {v2}, Lr/ak;->b()Ln/ac;

    move-result-object v2

    iget-object v3, v0, Lm/i;->j:Ln/Q;

    invoke-virtual {v1, v2, v3}, Lm/b;->a(Ln/ac;Ln/Q;)V

    .line 351
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-nez v2, :cond_163

    iget-boolean v2, p2, Lm/j;->f:Z

    if-eqz v2, :cond_163

    .line 352
    iget-wide v2, p2, Lm/j;->g:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lm/b;->setBearing(F)V

    .line 354
    :cond_163
    iget-object v2, v0, Lm/i;->h:Lo/B;

    if-eqz v2, :cond_17d

    .line 357
    iget-object v2, p2, Lm/j;->d:Ln/Q;

    iget-object v3, v0, Lm/i;->h:Lo/B;

    invoke-virtual {v3}, Lo/B;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v2, v2

    .line 359
    iget-object v0, v0, Lm/i;->h:Lo/B;

    invoke-virtual {v0, v2, v3}, Lo/B;->a(D)Lo/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lm/b;->a(Lo/B;)V

    :cond_17d
    :goto_17d
    move-object v0, v1

    .line 394
    goto/16 :goto_e

    .line 336
    :cond_180
    iget-object v8, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_112

    .line 368
    :cond_189
    iget v2, p0, Lm/h;->i:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1a0

    .line 369
    iget-object v2, v0, Lm/i;->j:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->b()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lm/b;->setLatitude(D)V

    .line 370
    iget-object v2, v0, Lm/i;->j:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->d()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lm/b;->setLongitude(D)V

    .line 372
    :cond_1a0
    iget-boolean v2, p2, Lm/j;->f:Z

    if-eqz v2, :cond_1ad

    .line 373
    iget-object v2, v0, Lm/i;->f:Lr/ak;

    invoke-virtual {v2}, Lr/ak;->e()F

    move-result v2

    invoke-virtual {v1, v2}, Lm/b;->setBearing(F)V

    .line 375
    :cond_1ad
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lm/b;->c(Z)V

    .line 376
    iget-object v2, v0, Lm/i;->f:Lr/ak;

    invoke-virtual {v2}, Lr/ak;->b()Ln/ac;

    move-result-object v2

    iget-object v7, v0, Lm/i;->j:Ln/Q;

    invoke-virtual {v1, v2, v7}, Lm/b;->a(Ln/ac;Ln/Q;)V

    .line 378
    iget-object v0, v0, Lm/i;->h:Lo/B;

    invoke-virtual {v1, v0}, Lm/b;->a(Lo/B;)V

    .line 380
    iget-object v0, p0, Lm/h;->h:Lo/x;

    if-eqz v0, :cond_17d

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_17d

    .line 381
    div-double v2, v3, v5

    invoke-virtual {v1, v2, v3}, Lm/b;->a(D)V

    goto :goto_17d
.end method

.method private a(Lm/b;Lm/j;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lm/h;->h:Lo/x;

    if-eqz v0, :cond_23

    .line 211
    invoke-virtual {p1}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lm/b;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 213
    const-wide v1, 0x40f86a0000000000L

    invoke-virtual {p2}, Lm/j;->a()D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 215
    iget-object v3, p0, Lm/h;->h:Lo/x;

    invoke-virtual {v3, v0, v1, v2}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/b;->a(Lo/B;)V

    .line 217
    :cond_23
    return-void
.end method

.method private a(Lm/i;Lr/ai;Lm/j;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 413
    iget-object v0, p1, Lm/i;->f:Lr/ak;

    invoke-virtual {p2, v0}, Lr/ai;->a(Lr/ak;)Lr/ak;

    move-result-object v1

    .line 415
    if-nez v1, :cond_a

    .line 436
    :cond_9
    return-void

    .line 421
    :cond_a
    invoke-virtual {v1}, Lr/ak;->c()Ln/Q;

    move-result-object v0

    invoke-virtual {v1}, Lr/ak;->d()Ln/Q;

    move-result-object v2

    iget-object v3, p1, Lm/i;->j:Ln/Q;

    invoke-static {v0, v2, v3}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v0

    float-to-double v2, v0

    .line 426
    const/4 v0, 0x7

    new-array v10, v0, [Lr/ak;

    .line 427
    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lm/i;->a()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lm/h;->a(Lr/ak;DDDLm/j;I[Lr/ak;)V

    .line 432
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 433
    :goto_2d
    if-ge v9, v1, :cond_9

    .line 434
    iget-object v0, p0, Lm/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    invoke-virtual {v0}, Lm/i;->b()V

    .line 433
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d
.end method

.method private a(Lr/ak;DDDLm/j;I[Lr/ak;)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    aput-object p1, p10, p9

    .line 463
    invoke-virtual/range {p1 .. p1}, Lr/ak;->c()Ln/Q;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lr/ak;->d()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 469
    move-object/from16 v0, p8

    iget-wide v2, v0, Lm/j;->e:D

    move-object/from16 v0, p8

    iget-wide v4, v0, Lm/j;->a:D

    mul-double/2addr v2, v4

    div-double v2, v2, v16

    .line 471
    sub-double v3, p2, v2

    .line 473
    invoke-virtual/range {p1 .. p1}, Lr/ak;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/i;

    .line 481
    iget-wide v5, v2, Lm/i;->i:D

    cmpl-double v5, v5, v3

    if-ltz v5, :cond_46

    .line 482
    iget-wide v5, v2, Lm/i;->i:D

    sub-double v5, v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v16

    move-object/from16 v0, p8

    iget-wide v7, v0, Lm/j;->a:D

    div-double/2addr v5, v7

    .line 485
    add-double v5, v5, p4

    .line 486
    move-object/from16 v0, p8

    invoke-virtual {v0, v5, v6}, Lm/j;->a(D)D

    move-result-wide v5

    mul-double v5, v5, p6

    .line 488
    invoke-virtual {v2, v5, v6}, Lm/i;->b(D)V

    .line 502
    :cond_46
    if-nez p9, :cond_bc

    move-wide v13, v3

    .line 506
    :goto_49
    invoke-virtual/range {p1 .. p1}, Lr/ak;->a()Ljava/util/ArrayList;

    move-result-object v18

    .line 507
    const/4 v2, 0x0

    move v15, v2

    :goto_4f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_bf

    .line 508
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/aj;

    .line 509
    invoke-virtual {v2}, Lr/aj;->b()F

    move-result v3

    float-to-double v4, v3

    .line 511
    cmpl-double v3, v4, v13

    if-lez v3, :cond_b8

    .line 512
    invoke-virtual {v2}, Lr/aj;->a()Lr/ak;

    move-result-object v3

    .line 515
    invoke-virtual/range {p1 .. p1}, Lr/ak;->e()F

    move-result v6

    invoke-virtual {v3}, Lr/ak;->e()F

    move-result v7

    invoke-static {v6, v7}, Ln/S;->a(FF)F

    move-result v6

    float-to-double v6, v6

    .line 517
    invoke-static {v6, v7}, Lm/h;->a(D)D

    move-result-wide v6

    .line 518
    sub-double v4, v4, p2

    mul-double v4, v4, v16

    move-object/from16 v0, p8

    iget-wide v8, v0, Lm/j;->a:D

    div-double/2addr v4, v8

    .line 521
    add-double v4, v4, p4

    add-double/2addr v6, v4

    .line 527
    move-object/from16 v0, p8

    iget-wide v4, v0, Lm/j;->j:D

    const-wide/high16 v8, 0x4010

    move-object/from16 v0, p8

    iget-wide v10, v0, Lm/j;->k:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 529
    const/4 v8, 0x6

    move/from16 v0, p9

    if-ge v0, v8, :cond_b8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_b8

    .line 531
    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-static {v3, v0, v1}, Lm/h;->a(Lr/ak;[Lr/ak;I)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 532
    invoke-virtual {v2}, Lr/aj;->c()F

    move-result v2

    float-to-double v4, v2

    add-int/lit8 v11, p9, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lm/h;->a(Lr/ak;DDDLm/j;I[Lr/ak;)V

    .line 507
    :cond_b8
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_4f

    :cond_bc
    move-wide/from16 v13, p2

    .line 502
    goto :goto_49

    .line 544
    :cond_bf
    return-void
.end method

.method private static a(Lr/ak;[Lr/ak;I)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1037
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_9

    .line 1038
    aget-object v2, p1, v1

    if-ne v2, p0, :cond_a

    .line 1039
    const/4 v0, 0x1

    .line 1042
    :cond_9
    return v0

    .line 1037
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1170
    const-string v0, "driveabout_hmm"

    return-object v0
.end method

.method a(Landroid/location/Location;Lt/k;D)Lr/an;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1057
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v4

    .line 1058
    const-wide/high16 v0, 0x4049

    mul-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v4, v0}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v1

    .line 1061
    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1062
    if-lez v5, :cond_6c

    .line 1063
    new-array v6, v5, [Ln/Q;

    move v3, v2

    .line 1064
    :goto_20
    if-ge v3, v5, :cond_32

    .line 1065
    iget-object v0, p0, Lm/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i;

    iget-object v0, v0, Lm/i;->j:Ln/Q;

    aput-object v0, v6, v3

    .line 1064
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_20

    .line 1067
    :cond_32
    invoke-static {v6}, Ln/aa;->a([Ln/Q;)Ln/aa;

    move-result-object v0

    const-wide/high16 v5, 0x4014

    mul-double/2addr v5, p3

    double-to-int v3, v5

    invoke-virtual {v0, v3}, Ln/aa;->b(I)Ln/aa;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln/aa;->a(Ln/aa;)Ln/aa;

    move-result-object v0

    .line 1070
    :goto_42
    invoke-virtual {p2}, Lt/k;->d()I

    move-result v1

    int-to-double v5, v1

    mul-double/2addr v5, p3

    double-to-int v1, v5

    .line 1072
    invoke-static {v4, v1}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v3

    .line 1075
    :try_start_4d
    iget v1, p0, Lm/h;->i:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_60

    const/4 v1, 0x1

    .line 1076
    :goto_53
    iget-object v2, p0, Lm/h;->e:Lr/ao;

    invoke-virtual {v3, v0}, Ln/aa;->c(Ln/aa;)Ln/aa;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v1, v3, v4}, Lr/ao;->a(Ln/aa;ZJ)Lr/an;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_5e} :catch_62

    move-result-object v0

    .line 1080
    :goto_5f
    return-object v0

    :cond_60
    move v1, v2

    .line 1075
    goto :goto_53

    .line 1078
    :catch_62
    move-exception v0

    .line 1079
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1080
    const/4 v0, 0x0

    goto :goto_5f

    :cond_6c
    move-object v0, v1

    goto :goto_42
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput p1, p0, Lm/h;->i:I

    .line 172
    return-void
.end method

.method public a(Lo/x;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lm/h;->h:Lo/x;

    .line 163
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 10
    .parameter

    .prologue
    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 188
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    .line 189
    new-instance v5, Lm/j;

    iget-object v6, p0, Lm/h;->g:Lm/j;

    iget-object v7, p0, Lm/h;->h:Lo/x;

    invoke-direct {v5, p1, v6, v0, v7}, Lm/j;-><init>(Landroid/location/Location;Lm/j;Lt/k;Lo/x;)V

    .line 192
    invoke-direct {p0, p1, v5, v0}, Lm/h;->a(Landroid/location/Location;Lm/j;Lt/k;)Lm/b;

    move-result-object v0

    .line 193
    if-nez v0, :cond_20

    .line 194
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 196
    :cond_20
    invoke-virtual {v0}, Lm/b;->j()Lo/B;

    move-result-object v6

    if-nez v6, :cond_29

    .line 197
    invoke-direct {p0, v0, v5}, Lm/h;->a(Lm/b;Lm/j;)V

    .line 199
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    .line 200
    const-wide/16 v5, 0xc8

    cmp-long v1, v1, v5

    if-lez v1, :cond_3a

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 205
    :cond_3a
    invoke-super {p0, v0}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    .line 206
    return-void
.end method
