.class public Lu/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lat/h;

.field private final b:Lu/r;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/E;->a:Lat/h;

    iput-object v0, p0, Lu/E;->b:Lu/r;

    return-void
.end method

.method constructor <init>(Lat/h;Lu/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/E;->a:Lat/h;

    iput-object p2, p0, Lu/E;->b:Lu/r;

    new-instance v0, Lu/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu/G;-><init>(Lu/E;Lu/F;)V

    invoke-virtual {p1, v0}, Lat/h;->a(Lat/p;)V

    return-void
.end method

.method protected static a(Ls/b;)Lu/P;
    .registers 20

    invoke-virtual/range {p0 .. p0}, Ls/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ls/b;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ls/b;->getSpeed()F

    move-result v0

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4051800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_21

    const/4 v0, 0x0

    goto :goto_d

    :cond_21
    const-wide v2, 0x4072c00000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2f

    const-wide v0, 0x4072c00000000000L

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Ls/b;->h()Lt/X;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ls/b;->e()Z

    move-result v2

    if-eqz v2, :cond_41

    if-eqz v7, :cond_41

    invoke-virtual {v7}, Lt/X;->c()I

    move-result v2

    if-nez v2, :cond_43

    :cond_41
    const/4 v0, 0x0

    goto :goto_d

    :cond_43
    invoke-virtual {v7}, Lt/X;->b()Lt/P;

    move-result-object v9

    invoke-virtual {v9}, Lt/P;->b()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ls/b;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ls/b;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Lt/L;->a(D)D

    move-result-wide v11

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    const/4 v6, 0x0

    :goto_65
    add-int/lit8 v4, v10, -0x1

    if-ge v6, v4, :cond_126

    invoke-virtual {v9, v6}, Lt/P;->a(I)Lt/L;

    move-result-object v8

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v9, v4}, Lt/P;->a(I)Lt/L;

    move-result-object v13

    invoke-static {v8, v13, v2, v3}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v14, 0x4014

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_122

    const-wide/16 v4, 0x0

    invoke-static {v8, v13}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v2

    float-to-double v13, v2

    invoke-virtual/range {p0 .. p0}, Ls/b;->getBearing()F

    move-result v2

    float-to-double v15, v2

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x4056800000000000L

    cmpg-double v2, v13, v15

    if-ltz v2, :cond_a1

    const-wide v15, 0x4070e00000000000L

    cmpl-double v2, v13, v15

    if-lez v2, :cond_b9

    :cond_a1
    const/4 v2, 0x1

    move v8, v2

    move v2, v6

    :goto_a4
    const/4 v6, 0x1

    if-ne v8, v6, :cond_ad

    invoke-virtual {v7}, Lt/X;->m()Z

    move-result v6

    if-nez v6, :cond_b6

    :cond_ad
    const/4 v6, -0x1

    if-ne v8, v6, :cond_bf

    invoke-virtual {v7}, Lt/X;->n()Z

    move-result v6

    if-eqz v6, :cond_bf

    :cond_b6
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_b9
    add-int/lit8 v6, v6, 0x1

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

    :goto_c6
    cmpg-double v13, v5, v0

    if-gez v13, :cond_e6

    if-lez v8, :cond_e4

    add-int/lit8 v13, v10, -0x1

    if-ge v7, v13, :cond_e6

    :cond_d0
    add-int v4, v7, v8

    invoke-virtual {v9, v4}, Lt/P;->a(I)Lt/L;

    move-result-object v4

    invoke-virtual {v2, v4}, Lt/L;->c(Lt/L;)F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v11

    add-double/2addr v5, v13

    add-int/2addr v7, v8

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_c6

    :cond_e4
    if-gtz v7, :cond_d0

    :cond_e6
    cmpl-double v7, v5, v0

    if-lez v7, :cond_129

    invoke-virtual {v4}, Lt/L;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Lt/L;->a(D)D

    move-result-wide v7

    sub-double v0, v5, v0

    mul-double/2addr v0, v7

    double-to-float v0, v0

    invoke-virtual {v2, v4}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v1

    invoke-static {v1, v0, v1}, Lt/L;->b(Lt/L;FLt/L;)V

    invoke-virtual {v2, v1}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v0

    :goto_101
    invoke-virtual {v0, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_10a
    new-instance v1, Lt/o;

    invoke-virtual {v0}, Lt/L;->a()I

    move-result v2

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lt/o;-><init>(II)V

    new-instance v0, Lu/P;

    invoke-direct {v0, v1}, Lu/P;-><init>(Lt/o;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/P;->a(I)V

    goto/16 :goto_d

    :cond_122
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_65

    :cond_126
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_129
    move-object v0, v2

    goto :goto_101
.end method

.method static synthetic a(Lu/E;)Lu/r;
    .registers 2

    iget-object v0, p0, Lu/E;->b:Lu/r;

    return-object v0
.end method

.method private b(Ls/b;)F
    .registers 3

    invoke-virtual {p1}, Ls/b;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ls/b;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ls/b;->getBearing()F

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/high16 v0, -0x4080

    goto :goto_16
.end method

.method private c(Ls/b;)F
    .registers 3

    invoke-virtual {p1}, Ls/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ls/b;->getSpeed()F

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/high16 v0, -0x4080

    goto :goto_a
.end method


# virtual methods
.method public a(Ls/b;Lu/x;I)Lu/g;
    .registers 13

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lu/P;

    invoke-virtual {p1}, Ls/b;->m()Lt/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/P;-><init>(Lt/o;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p2}, Lu/x;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_a1

    invoke-static {p1}, Lu/E;->a(Ls/b;)Lu/P;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object v1, v0

    :goto_26
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ls/b;->j()Lu/B;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lu/B;->a()Lu/x;

    move-result-object v5

    if-ne v5, p2, :cond_3d

    invoke-virtual {p2, v0}, Lu/x;->a(Lu/B;)D

    move-result-wide v2

    invoke-virtual {v0}, Lu/B;->d()D

    move-result-wide v5

    add-double/2addr v2, v5

    :cond_3d
    const-wide/high16 v5, 0x4069

    invoke-virtual {p1}, Ls/b;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lt/L;->a(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    invoke-virtual {p2, v2, v3}, Lu/x;->c(D)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lu/x;->m()Lu/P;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lu/i;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lu/P;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/P;

    invoke-virtual {p2}, Lu/x;->d()I

    move-result v3

    invoke-direct {v2, v0, v3, p3}, Lu/i;-><init>([Lu/P;II)V

    invoke-direct {p0, p1}, Lu/E;->b(Ls/b;)F

    move-result v0

    invoke-direct {p0, p1}, Lu/E;->c(Ls/b;)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lu/i;->a(FF)Lu/i;

    move-result-object v2

    invoke-virtual {p1}, Ls/b;->b()Z

    move-result v0

    if-nez v0, :cond_9f

    const/4 v0, 0x1

    :goto_7f
    invoke-virtual {v2, v0}, Lu/i;->a(Z)Lu/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu/i;->a(Lu/P;)Lu/i;

    move-result-object v0

    invoke-virtual {p2}, Lu/x;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/i;->a(I)Lu/i;

    move-result-object v0

    invoke-virtual {p2}, Lu/x;->D()[Lu/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/i;->a([Lu/b;)Lu/i;

    move-result-object v0

    invoke-virtual {v0}, Lu/i;->a()Lu/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/E;->a(Lu/g;)V

    return-object v0

    :cond_9f
    const/4 v0, 0x0

    goto :goto_7f

    :cond_a1
    move-object v1, v0

    goto :goto_26
.end method

.method public a(Ls/b;[Lu/P;II[Lu/b;)Lu/g;
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    move v0, v1

    :goto_6
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lu/P;

    new-instance v4, Lu/P;

    invoke-virtual {p1}, Ls/b;->m()Lt/o;

    move-result-object v5

    invoke-direct {v4, v5}, Lu/P;-><init>(Lt/o;)V

    aput-object v4, v3, v2

    array-length v4, p2

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lu/i;

    invoke-direct {v4, v3, p3, p4}, Lu/i;-><init>([Lu/P;II)V

    invoke-virtual {p1}, Ls/b;->b()Z

    move-result v3

    if-nez v3, :cond_44

    :goto_25
    invoke-virtual {v4, v1}, Lu/i;->a(Z)Lu/i;

    move-result-object v1

    invoke-virtual {v1, p5}, Lu/i;->a([Lu/b;)Lu/i;

    move-result-object v1

    if-nez v0, :cond_3a

    invoke-direct {p0, p1}, Lu/E;->b(Ls/b;)F

    move-result v0

    invoke-direct {p0, p1}, Lu/E;->c(Ls/b;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lu/i;->a(FF)Lu/i;

    :cond_3a
    invoke-virtual {v1}, Lu/i;->a()Lu/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/E;->a(Lu/g;)V

    return-object v0

    :cond_42
    move v0, v2

    goto :goto_6

    :cond_44
    move v1, v2

    goto :goto_25
.end method

.method public a(Lu/x;I)Lu/g;
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p1}, Lu/x;->v()[Lu/R;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_14

    aget-object v2, v1, v4

    invoke-virtual {v2}, Lu/R;->i()Z

    move-result v2

    if-eqz v2, :cond_14

    aget-object v0, v1, v4

    :cond_14
    new-instance v2, Lu/i;

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v3

    invoke-direct {v2, v1, v3, p2}, Lu/i;-><init>([Lu/P;II)V

    invoke-virtual {p1}, Lu/x;->e()F

    move-result v1

    invoke-virtual {p1}, Lu/x;->f()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lu/i;->a(FF)Lu/i;

    move-result-object v1

    invoke-virtual {p1}, Lu/x;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Lu/i;->a(Z)Lu/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu/i;->a(Lu/P;)Lu/i;

    move-result-object v0

    invoke-virtual {p1}, Lu/x;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/i;->a(I)Lu/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/i;->b(I)Lu/i;

    move-result-object v0

    invoke-virtual {p1}, Lu/x;->D()[Lu/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/i;->a([Lu/b;)Lu/i;

    move-result-object v0

    invoke-virtual {v0}, Lu/i;->a()Lu/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/E;->a(Lu/g;)V

    return-object v0
.end method

.method public a([Lu/P;I[Lu/b;)Lu/g;
    .registers 7

    const/4 v2, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lu/P;

    const/4 v0, 0x2

    new-array v0, v0, [Lu/P;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    new-instance v0, Lu/i;

    const/4 v1, 0x7

    invoke-direct {v0, p1, p2, v1}, Lu/i;-><init>([Lu/P;II)V

    invoke-virtual {v0, p3}, Lu/i;->a([Lu/b;)Lu/i;

    move-result-object v0

    invoke-virtual {v0}, Lu/i;->a()Lu/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/E;->a(Lu/g;)V

    return-object v0
.end method

.method protected a(Lu/g;)V
    .registers 4

    invoke-virtual {p1}, Lu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, LC/g;

    const-string v1, "addRequest"

    invoke-direct {v0, v1, p1}, LC/g;-><init>(Ljava/lang/String;Lat/g;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Lu/E;->a:Lat/h;

    invoke-virtual {v0, p1}, Lat/h;->c(Lat/g;)V

    :goto_15
    return-void

    :cond_16
    const-string v0, "Router"

    const-string v1, "Invalid request"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lu/E;->b:Lu/r;

    invoke-virtual {v0, p1}, Lu/r;->a(Lu/g;)V

    goto :goto_15
.end method
