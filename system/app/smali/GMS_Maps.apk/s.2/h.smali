.class public Ls/h;
.super Ls/f;

# interfaces
.implements Ls/d;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field c:Ljava/util/ArrayList;

.field private final e:Lx/ap;

.field private final f:Ljava/util/ArrayList;

.field private g:Ls/j;

.field private h:Lu/x;

.field private i:I

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    sput-object v0, Ls/h;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ls/c;)V
    .registers 4

    new-instance v0, Lx/ap;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v1}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v1

    invoke-direct {v0, v1}, Lx/ap;-><init>(Lx/ay;)V

    invoke-direct {p0, p1, v0}, Ls/h;-><init>(Ls/c;Lx/ap;)V

    return-void
.end method

.method constructor <init>(Ls/c;Lx/ap;)V
    .registers 5

    const-string v0, "driveabout_hmm"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    const/4 v0, 0x0

    iput v0, p0, Ls/h;->i:I

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->b()D

    move-result-wide v0

    iput-wide v0, p0, Ls/h;->j:D

    iput-object p2, p0, Ls/h;->e:Lx/ap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static a(D)D
    .registers 4

    const-wide v0, 0x3fb015bf9217271aL

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private a(Landroid/location/Location;Ls/j;)Ls/b;
    .registers 6

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p2, Ls/j;->f:Z

    if-eqz v0, :cond_16

    new-instance v0, Ls/b;

    invoke-direct {v0, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    iget-wide v1, p2, Ls/j;->g:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ls/b;->setBearing(F)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Landroid/location/Location;Ls/j;Lz/l;)Ls/b;
    .registers 16

    instance-of v0, p1, Ls/b;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ls/b;

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iput-object p2, p0, Ls/h;->g:Ls/j;

    move-object v0, p1

    check-cast v0, Ls/b;

    iget v1, p0, Ls/h;->i:I

    invoke-virtual {v0, v1}, Ls/b;->b(I)V

    iget-wide v0, p2, Ls/j;->a:D

    invoke-virtual {p0, p1, p3, v0, v1}, Ls/h;->a(Landroid/location/Location;Lz/l;D)Lx/ao;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1, p2}, Ls/h;->a(Landroid/location/Location;Ls/j;)Ls/b;

    move-result-object v0

    goto :goto_e

    :cond_26
    new-instance v2, Lx/aj;

    invoke-virtual {p3}, Lz/l;->e()I

    move-result v1

    iget v3, p0, Ls/h;->i:I

    invoke-direct {v2, v0, v1, v3}, Lx/aj;-><init>(Lx/ao;II)V

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lx/aj;->a()I

    move-result v7

    if-nez v7, :cond_41

    invoke-direct {p0, p1, p2}, Ls/h;->a(Landroid/location/Location;Ls/j;)Ls/b;

    move-result-object v0

    goto :goto_e

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v7, :cond_5c

    new-instance v1, Ls/i;

    invoke-virtual {v2, v0}, Lx/aj;->a(I)Lx/al;

    move-result-object v3

    invoke-direct {v1, v0, v3, p2, p3}, Ls/i;-><init>(ILx/al;Ls/j;Lz/l;)V

    invoke-virtual {v2, v0}, Lx/aj;->a(I)Lx/al;

    move-result-object v3

    invoke-virtual {v3, v1}, Lx/al;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_5c
    iget-boolean v0, p2, Ls/j;->i:Z

    if-eqz v0, :cond_8e

    iget-wide v0, p2, Ls/j;->c:D

    const-wide/high16 v3, 0x4024

    cmpg-double v0, v0, v3

    if-gez v0, :cond_8e

    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8e

    iget v0, p0, Ls/h;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8e

    const/4 v0, 0x0

    move v1, v0

    :goto_77
    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a1

    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-direct {p0, v0, v2, p2}, Ls/h;->a(Ls/i;Lx/aj;Ls/j;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    :cond_8e
    const/4 v0, 0x0

    move v1, v0

    :goto_90
    if-ge v1, v7, :cond_a1

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-virtual {v0}, Ls/i;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    :cond_a1
    const/4 v0, 0x0

    move v1, v0

    :goto_a3
    if-ge v1, v7, :cond_b5

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ls/i;->a(Z)D

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3

    :cond_b5
    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v5, v3

    move-wide v3, v1

    move v2, v0

    :goto_c2
    if-ge v2, v7, :cond_e4

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-virtual {p3}, Lz/l;->c()I

    move-result v1

    sub-int v1, v7, v1

    if-lt v2, v1, :cond_e2

    const/4 v1, 0x1

    :goto_d5
    invoke-virtual {v0, v1}, Ls/i;->a(Z)D

    move-result-wide v8

    add-double/2addr v5, v8

    iget-wide v0, v0, Ls/i;->b:D

    mul-double/2addr v0, v8

    add-double/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c2

    :cond_e2
    const/4 v1, 0x0

    goto :goto_d5

    :cond_e4
    const-wide/16 v0, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v5

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v8, 0x3fe999999999999aL

    iget-wide v10, p0, Ls/h;->j:D

    mul-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    iput-wide v0, p0, Ls/h;->j:D

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Lz/l;->c()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_112
    if-ge v1, v2, :cond_12f

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    sub-int v8, v7, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-virtual {v0, v5, v6}, Ls/i;->a(D)V

    invoke-virtual {v0}, Ls/i;->a()D

    move-result-wide v8

    invoke-virtual {p3}, Lz/l;->a()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_180

    :cond_12f
    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    new-instance v1, Ls/b;

    invoke-direct {v1, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    iget-wide v7, p0, Ls/h;->j:D

    invoke-virtual {p3}, Lz/l;->b()D

    move-result-wide v9

    cmpl-double v2, v7, v9

    if-lez v2, :cond_189

    iget-object v2, v0, Ls/i;->f:Lx/al;

    invoke-virtual {v2}, Lx/al;->b()Lt/X;

    move-result-object v2

    iget-object v3, v0, Ls/i;->j:Lt/L;

    invoke-virtual {v1, v2, v3}, Ls/b;->a(Lt/X;Lt/L;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-nez v2, :cond_163

    iget-boolean v2, p2, Ls/j;->f:Z

    if-eqz v2, :cond_163

    iget-wide v2, p2, Ls/j;->g:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ls/b;->setBearing(F)V

    :cond_163
    iget-object v2, v0, Ls/i;->h:Lu/B;

    if-eqz v2, :cond_17d

    iget-object v2, p2, Ls/j;->d:Lt/L;

    iget-object v3, v0, Ls/i;->h:Lu/B;

    invoke-virtual {v3}, Lu/B;->b()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v2, v2

    iget-object v0, v0, Ls/i;->h:Lu/B;

    invoke-virtual {v0, v2, v3}, Lu/B;->a(D)Lu/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls/b;->a(Lu/B;)V

    :cond_17d
    :goto_17d
    move-object v0, v1

    goto/16 :goto_e

    :cond_180
    iget-object v8, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_112

    :cond_189
    iget v2, p0, Ls/h;->i:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1a0

    iget-object v2, v0, Ls/i;->j:Lt/L;

    invoke-virtual {v2}, Lt/L;->b()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ls/b;->setLatitude(D)V

    iget-object v2, v0, Ls/i;->j:Lt/L;

    invoke-virtual {v2}, Lt/L;->d()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ls/b;->setLongitude(D)V

    :cond_1a0
    iget-boolean v2, p2, Ls/j;->f:Z

    if-eqz v2, :cond_1ad

    iget-object v2, v0, Ls/i;->f:Lx/al;

    invoke-virtual {v2}, Lx/al;->e()F

    move-result v2

    invoke-virtual {v1, v2}, Ls/b;->setBearing(F)V

    :cond_1ad
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ls/b;->c(Z)V

    iget-object v2, v0, Ls/i;->f:Lx/al;

    invoke-virtual {v2}, Lx/al;->b()Lt/X;

    move-result-object v2

    iget-object v7, v0, Ls/i;->j:Lt/L;

    invoke-virtual {v1, v2, v7}, Ls/b;->a(Lt/X;Lt/L;)V

    iget-object v0, v0, Ls/i;->h:Lu/B;

    invoke-virtual {v1, v0}, Ls/b;->a(Lu/B;)V

    iget-object v0, p0, Ls/h;->h:Lu/x;

    if-eqz v0, :cond_17d

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_17d

    div-double v2, v3, v5

    invoke-virtual {v1, v2, v3}, Ls/b;->a(D)V

    goto :goto_17d
.end method

.method private a(Ls/b;Ls/j;)V
    .registers 8

    iget-object v0, p0, Ls/h;->h:Lu/x;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Ls/b;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    const-wide v1, 0x40f86a0000000000L

    invoke-virtual {p2}, Ls/j;->a()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ls/h;->h:Lu/x;

    invoke-virtual {v3, v0, v1, v2}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls/b;->a(Lu/B;)V

    :cond_23
    return-void
.end method

.method private a(Ls/i;Lx/aj;Ls/j;)V
    .registers 15

    const/4 v9, 0x0

    iget-object v0, p1, Ls/i;->f:Lx/al;

    invoke-virtual {p2, v0}, Lx/aj;->a(Lx/al;)Lx/al;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v1}, Lx/al;->c()Lt/L;

    move-result-object v0

    invoke-virtual {v1}, Lx/al;->d()Lt/L;

    move-result-object v2

    iget-object v3, p1, Ls/i;->j:Lt/L;

    invoke-static {v0, v2, v3}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v0

    float-to-double v2, v0

    const/4 v0, 0x7

    new-array v10, v0, [Lx/al;

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ls/i;->a()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Ls/h;->a(Lx/al;DDDLs/j;I[Lx/al;)V

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2d
    if-ge v9, v1, :cond_9

    iget-object v0, p0, Ls/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-virtual {v0}, Ls/i;->b()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d
.end method

.method private a(Lx/al;DDDLs/j;I[Lx/al;)V
    .registers 30

    aput-object p1, p10, p9

    invoke-virtual/range {p1 .. p1}, Lx/al;->c()Lt/L;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lx/al;->d()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v2, v0, Ls/j;->e:D

    move-object/from16 v0, p8

    iget-wide v4, v0, Ls/j;->a:D

    mul-double/2addr v2, v4

    div-double v2, v2, v16

    sub-double v3, p2, v2

    invoke-virtual/range {p1 .. p1}, Lx/al;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/i;

    iget-wide v5, v2, Ls/i;->i:D

    cmpl-double v5, v5, v3

    if-ltz v5, :cond_46

    iget-wide v5, v2, Ls/i;->i:D

    sub-double v5, v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v16

    move-object/from16 v0, p8

    iget-wide v7, v0, Ls/j;->a:D

    div-double/2addr v5, v7

    add-double v5, v5, p4

    move-object/from16 v0, p8

    invoke-virtual {v0, v5, v6}, Ls/j;->a(D)D

    move-result-wide v5

    mul-double v5, v5, p6

    invoke-virtual {v2, v5, v6}, Ls/i;->b(D)V

    :cond_46
    if-nez p9, :cond_bc

    move-wide v13, v3

    :goto_49
    invoke-virtual/range {p1 .. p1}, Lx/al;->a()Ljava/util/ArrayList;

    move-result-object v18

    const/4 v2, 0x0

    move v15, v2

    :goto_4f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_bf

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/ak;

    invoke-virtual {v2}, Lx/ak;->b()F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v13

    if-lez v3, :cond_b8

    invoke-virtual {v2}, Lx/ak;->a()Lx/al;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lx/al;->e()F

    move-result v6

    invoke-virtual {v3}, Lx/al;->e()F

    move-result v7

    invoke-static {v6, v7}, Lt/N;->a(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ls/h;->a(D)D

    move-result-wide v6

    sub-double v4, v4, p2

    mul-double v4, v4, v16

    move-object/from16 v0, p8

    iget-wide v8, v0, Ls/j;->a:D

    div-double/2addr v4, v8

    add-double v4, v4, p4

    add-double/2addr v6, v4

    move-object/from16 v0, p8

    iget-wide v4, v0, Ls/j;->j:D

    const-wide/high16 v8, 0x4010

    move-object/from16 v0, p8

    iget-wide v10, v0, Ls/j;->k:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    const/4 v8, 0x6

    move/from16 v0, p9

    if-ge v0, v8, :cond_b8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_b8

    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-static {v3, v0, v1}, Ls/h;->a(Lx/al;[Lx/al;I)Z

    move-result v4

    if-nez v4, :cond_b8

    invoke-virtual {v2}, Lx/ak;->c()F

    move-result v2

    float-to-double v4, v2

    add-int/lit8 v11, p9, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Ls/h;->a(Lx/al;DDDLs/j;I[Lx/al;)V

    :cond_b8
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_4f

    :cond_bc
    move-wide/from16 v13, p2

    goto :goto_49

    :cond_bf
    return-void
.end method

.method private static a(Lx/al;[Lx/al;I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_9

    aget-object v2, p1, v1

    if-ne v2, p0, :cond_a

    const/4 v0, 0x1

    :cond_9
    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "driveabout_hmm"

    return-object v0
.end method

.method a(Landroid/location/Location;Lz/l;D)Lx/ao;
    .registers 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lt/L;->a(DD)Lt/L;

    move-result-object v4

    const-wide/high16 v0, 0x4049

    mul-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v4, v0}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v1

    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6c

    new-array v6, v5, [Lt/L;

    move v3, v2

    :goto_20
    if-ge v3, v5, :cond_32

    iget-object v0, p0, Ls/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    iget-object v0, v0, Ls/i;->j:Lt/L;

    aput-object v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_20

    :cond_32
    invoke-static {v6}, Lt/V;->a([Lt/L;)Lt/V;

    move-result-object v0

    const-wide/high16 v5, 0x4014

    mul-double/2addr v5, p3

    double-to-int v3, v5

    invoke-virtual {v0, v3}, Lt/V;->b(I)Lt/V;

    move-result-object v0

    invoke-virtual {v1, v0}, Lt/V;->a(Lt/V;)Lt/V;

    move-result-object v0

    :goto_42
    invoke-virtual {p2}, Lz/l;->d()I

    move-result v1

    int-to-double v5, v1

    mul-double/2addr v5, p3

    double-to-int v1, v5

    invoke-static {v4, v1}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v3

    :try_start_4d
    iget v1, p0, Ls/h;->i:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_60

    const/4 v1, 0x1

    :goto_53
    iget-object v2, p0, Ls/h;->e:Lx/ap;

    invoke-virtual {v3, v0}, Lt/V;->c(Lt/V;)Lt/V;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v1, v3, v4}, Lx/ap;->a(Lt/V;ZJ)Lx/ao;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_5e} :catch_62

    move-result-object v0

    :goto_5f
    return-object v0

    :cond_60
    move v1, v2

    goto :goto_53

    :catch_62
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_5f

    :cond_6c
    move-object v0, v1

    goto :goto_42
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Ls/h;->i:I

    return-void
.end method

.method public a(Lu/x;)V
    .registers 2

    iput-object p1, p0, Ls/h;->h:Lu/x;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    new-instance v5, Ls/j;

    iget-object v6, p0, Ls/h;->g:Ls/j;

    iget-object v7, p0, Ls/h;->h:Lu/x;

    invoke-direct {v5, p1, v6, v0, v7}, Ls/j;-><init>(Landroid/location/Location;Ls/j;Lz/l;Lu/x;)V

    invoke-direct {p0, p1, v5, v0}, Ls/h;->a(Landroid/location/Location;Ls/j;Lz/l;)Ls/b;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ls/b;

    invoke-direct {v0, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    :cond_20
    invoke-virtual {v0}, Ls/b;->j()Lu/B;

    move-result-object v6

    if-nez v6, :cond_29

    invoke-direct {p0, v0, v5}, Ls/h;->a(Ls/b;Ls/j;)V

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    const-wide/16 v5, 0xc8

    cmp-long v1, v1, v5

    if-lez v1, :cond_3a

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    :cond_3a
    invoke-super {p0, v0}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
