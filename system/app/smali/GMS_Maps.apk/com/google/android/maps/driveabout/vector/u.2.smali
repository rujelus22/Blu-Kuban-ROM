.class public Lcom/google/android/maps/driveabout/vector/U;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static final b:Ln/Q;

.field private static final c:Ljava/util/Comparator;


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/dY;

.field private final e:Lcom/google/android/maps/driveabout/vector/p;

.field private f:Lu/p;

.field private final g:Lcom/google/android/maps/driveabout/vector/bI;

.field private final h:Lcom/google/android/maps/driveabout/vector/bI;

.field private final i:Lcom/google/android/maps/driveabout/vector/bJ;

.field private final j:Ln/Q;

.field private final k:Ln/Q;

.field private final l:Ln/Q;

.field private final m:Ln/Q;

.field private final n:Ln/Q;

.field private final o:Ln/Q;

.field private final p:Ln/Q;

.field private final q:Ln/Q;

.field private final r:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const v2, 0xb504

    .line 52
    new-instance v0, Ln/Q;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Ln/Q;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/U;->b:Ln/Q;

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/vector/V;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/V;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/U;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/W;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 107
    new-instance v0, Lu/p;

    invoke-direct {v0}, Lu/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Lu/p;

    .line 245
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/W;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    .line 246
    new-instance v0, Lcom/google/android/maps/driveabout/vector/v;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/W;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    .line 247
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/W;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/W;->b:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    .line 248
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/W;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    .line 249
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/W;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    .line 251
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    .line 252
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    .line 253
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    .line 254
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->m:Ln/Q;

    .line 255
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->n:Ln/Q;

    .line 256
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->o:Ln/Q;

    .line 257
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->p:Ln/Q;

    .line 258
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->q:Ln/Q;

    .line 259
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->r:Ln/Q;

    .line 260
    return-void
.end method

.method private static final a(I)I
    .registers 5
    .parameter

    .prologue
    .line 533
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 534
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 535
    and-int/lit16 v2, p0, 0xff

    .line 536
    add-int/lit16 v0, v0, 0x2fd

    shr-int/lit8 v0, v0, 0x2

    .line 537
    add-int/lit16 v1, v1, 0x2fd

    shr-int/lit8 v1, v1, 0x2

    .line 538
    add-int/lit16 v2, v2, 0x2fd

    shr-int/lit8 v2, v2, 0x2

    .line 539
    const/high16 v3, -0x100

    and-int/2addr v3, p0

    .line 540
    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 612
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 613
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 614
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(ILn/Q;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 592
    const/high16 v0, -0x100

    and-int v1, p0, v0

    .line 593
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v2, v0, 0xff

    .line 594
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 595
    and-int/lit16 v4, p0, 0xff

    .line 596
    sget-object v0, Lcom/google/android/maps/driveabout/vector/U;->b:Ln/Q;

    invoke-static {p1, v0}, Ln/Q;->b(Ln/Q;Ln/Q;)F

    move-result v0

    invoke-virtual {p1}, Ln/Q;->i()F

    move-result v5

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 597
    if-gez v0, :cond_1d

    .line 602
    neg-int v0, v0

    .line 604
    :cond_1d
    mul-int/lit16 v0, v0, 0x4ccc

    shr-int/lit8 v0, v0, 0x10

    const v5, 0xb333

    add-int/2addr v0, v5

    .line 605
    mul-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    .line 606
    mul-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x10

    .line 607
    mul-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x10

    .line 608
    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;)Lcom/google/android/maps/driveabout/vector/U;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 145
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    invoke-virtual {v0}, Ll/q;->j()Ll/e;

    move-result-object v0

    move-object v2, v0

    .line 149
    :goto_11
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    new-instance v5, Lcom/google/android/maps/driveabout/vector/W;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/vector/W;-><init>()V

    .line 151
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 152
    :goto_22
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 153
    invoke-interface {p2}, Ln/aI;->b()Ln/l;

    move-result-object v1

    .line 154
    instance-of v0, v1, Ln/e;

    if-eqz v0, :cond_39

    move-object v0, v1

    .line 155
    check-cast v0, Ln/e;

    .line 156
    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/e;Lcom/google/android/maps/driveabout/vector/W;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 184
    :cond_39
    sget-object v0, Lcom/google/android/maps/driveabout/vector/U;->c:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ln/Q;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 189
    new-instance v3, Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v3, v5, v6}, Lcom/google/android/maps/driveabout/vector/U;-><init>(Lcom/google/android/maps/driveabout/vector/W;Ljava/util/Set;)V

    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/e;

    .line 191
    invoke-direct {v3, p0, v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/am;Ln/aa;Ln/e;F)V

    goto :goto_58

    .line 159
    :cond_68
    invoke-interface {v1}, Ln/l;->l()[I

    move-result-object v7

    array-length v8, v7

    move v1, v3

    :goto_6e
    if-ge v1, v8, :cond_7f

    aget v9, v7, v1

    .line 160
    if-ltz v9, :cond_7c

    array-length v10, p1

    if-ge v9, v10, :cond_7c

    .line 161
    aget-object v9, p1, v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 168
    :cond_7f
    invoke-virtual {v0}, Ln/e;->d()Z

    move-result v1

    if-nez v1, :cond_91

    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Ln/e;->a()Ln/m;

    move-result-object v1

    invoke-interface {v2, v1}, Ll/e;->a(Ln/m;)Z

    move-result v1

    if-eqz v1, :cond_9b

    :cond_91
    const/4 v1, 0x1

    .line 172
    :goto_92
    if-nez v1, :cond_97

    .line 173
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_97
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto :goto_22

    :cond_9b
    move v1, v3

    .line 168
    goto :goto_92

    .line 193
    :cond_9d
    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/U;->c()V

    .line 194
    invoke-virtual {v3, p0}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/am;)V

    .line 195
    return-object v3

    :cond_a4
    move-object v2, v0

    goto/16 :goto_11
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x1

    .line 311
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 313
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->t()V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->u()V

    .line 315
    invoke-interface {v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 317
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1c

    .line 320
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 321
    const/16 v1, 0x201

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 330
    :cond_1b
    :goto_1b
    return-void

    .line 322
    :cond_1c
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1b

    .line 325
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 326
    const/16 v1, 0x203

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 327
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 328
    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    goto :goto_1b
.end method

.method private a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1, p5}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 516
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p3, p5}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 517
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p2, p5}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 518
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p4, p5}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 519
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v4, v0, 0x2

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/bJ;->a(IIII)V

    .line 520
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->r:Ln/Q;

    invoke-static {p2, p1, v0}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->r:Ln/Q;

    invoke-static {p6, v1}, Lcom/google/android/maps/driveabout/vector/U;->a(ILn/Q;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 526
    return-void
.end method

.method private a(Ln/am;Ln/aa;Ln/e;F)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-virtual/range {p3 .. p3}, Ln/e;->e()Ln/ag;

    move-result-object v1

    .line 386
    invoke-virtual/range {p3 .. p3}, Ln/e;->b()Ln/az;

    move-result-object v10

    .line 387
    invoke-virtual {v10}, Ln/az;->a()I

    move-result v11

    .line 388
    invoke-virtual {v1}, Ln/ag;->c()I

    move-result v2

    .line 389
    if-eqz v11, :cond_14

    if-nez v2, :cond_15

    .line 467
    :cond_14
    return-void

    .line 396
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ln/aa;->d()Ln/Q;

    move-result-object v12

    .line 397
    invoke-virtual/range {p2 .. p2}, Ln/aa;->g()I

    move-result v6

    .line 400
    invoke-virtual/range {p3 .. p3}, Ln/e;->f()I

    move-result v3

    .line 401
    invoke-virtual/range {p3 .. p3}, Ln/e;->g()I

    move-result v13

    .line 402
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->p:Ln/Q;

    const/4 v5, 0x0

    const/4 v7, 0x0

    int-to-float v3, v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-virtual {v4, v5, v7, v3}, Ln/Q;->a(III)V

    .line 404
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ln/ag;->a(I)I

    move-result v3

    const/16 v4, 0xa0

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/U;->a(II)I

    move-result v7

    .line 405
    const/4 v3, 0x1

    if-le v2, v3, :cond_120

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ln/ag;->a(I)I

    move-result v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/U;->a(II)I

    move-result v1

    move v8, v1

    .line 408
    :goto_4a
    const/4 v1, 0x0

    move v9, v1

    :goto_4c
    if-ge v9, v11, :cond_14

    .line 409
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    .line 414
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    invoke-virtual {v10, v9, v2, v3, v4}, Ln/az;->a(ILn/Q;Ln/Q;Ln/Q;)V

    .line 415
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    invoke-static {v2, v12, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 416
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    invoke-static {v2, v12, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 417
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    invoke-static {v2, v12, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 418
    if-eqz v13, :cond_9a

    .line 420
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->q:Ln/Q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v13

    mul-float v5, v5, p4

    float-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ln/Q;->a(III)V

    .line 421
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->q:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 422
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->q:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 423
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->q:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 427
    :cond_9a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->p:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->m:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 428
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->p:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->n:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 429
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->p:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->o:Ln/Q;

    invoke-static {v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;)V

    .line 441
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->m:Ln/Q;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 442
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->n:Ln/Q;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 443
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->o:Ln/Q;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 444
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    const/4 v3, 0x3

    invoke-virtual {v2, v8, v3}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 445
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    int-to-short v3, v1

    add-int/lit8 v4, v1, 0x1

    int-to-short v4, v4

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(SSS)V

    .line 454
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Ln/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 455
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->m:Ln/Q;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/U;->n:Ln/Q;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;II)V

    .line 458
    :cond_f1
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Ln/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 459
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->k:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->n:Ln/Q;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/U;->o:Ln/Q;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;II)V

    .line 462
    :cond_106
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Ln/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 463
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->l:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->j:Ln/Q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->o:Ln/Q;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/U;->m:Ln/Q;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/U;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;II)V

    .line 408
    :cond_11b
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_4c

    .line 405
    :cond_120
    invoke-static {v7}, Lcom/google/android/maps/driveabout/vector/U;->a(I)I

    move-result v1

    move v8, v1

    goto/16 :goto_4a
.end method

.method static a(Ln/e;Lcom/google/android/maps/driveabout/vector/W;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0}, Ln/e;->b()Ln/az;

    move-result-object v0

    invoke-virtual {v0}, Ln/az;->a()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Ln/e;->c()I

    move-result v1

    .line 218
    mul-int/lit8 v0, v0, 0x3

    .line 219
    mul-int/lit8 v2, v1, 0x4

    .line 220
    iget v3, p1, Lcom/google/android/maps/driveabout/vector/W;->a:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 221
    const/16 v3, 0x4000

    if-le v2, v3, :cond_1e

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/W;->a:I

    if-lez v3, :cond_1e

    .line 222
    const/4 v0, 0x0

    .line 228
    :goto_1d
    return v0

    .line 224
    :cond_1e
    iput v2, p1, Lcom/google/android/maps/driveabout/vector/W;->a:I

    .line 225
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/W;->b:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/W;->b:I

    .line 226
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/W;->c:I

    mul-int/lit8 v2, v1, 0x6

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/W;->c:I

    .line 227
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/W;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/W;->d:I

    .line 228
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private c()V
    .registers 5

    .prologue
    .line 269
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/bJ;->b()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bI;II)V

    .line 272
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 275
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 304
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/high16 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-nez v0, :cond_c

    .line 377
    :cond_b
    :goto_b
    return-void

    .line 353
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Lu/p;

    if-eqz v0, :cond_39

    .line 359
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Lu/p;

    invoke-virtual {v0, p1}, Lu/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    .line 360
    if-ne v0, v1, :cond_33

    .line 361
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Lu/p;

    .line 369
    :goto_25
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3b

    .line 370
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_b

    .line 363
    :cond_33
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    goto :goto_25

    :cond_39
    move v0, v1

    .line 366
    goto :goto_25

    .line 371
    :cond_3b
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 372
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 373
    if-ne v0, v1, :cond_b

    .line 374
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    goto :goto_b
.end method

.method a(Ln/am;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x160

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 290
    return-void
.end method
