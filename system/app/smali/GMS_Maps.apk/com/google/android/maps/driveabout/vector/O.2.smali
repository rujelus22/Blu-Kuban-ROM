.class public Lcom/google/android/maps/driveabout/vector/O;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static final b:[I

.field private static c:I

.field private static final k:Ln/ag;

.field private static final l:Ln/ag;

.field private static final m:Ljava/lang/ThreadLocal;


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/dY;

.field private final e:Lcom/google/android/maps/driveabout/vector/dY;

.field private final f:Lcom/google/android/maps/driveabout/vector/t;

.field private final g:Lcom/google/android/maps/driveabout/vector/t;

.field private h:Lz/r;

.field private i:Lz/r;

.field private final j:Lcom/google/android/maps/driveabout/vector/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x1

    const v9, -0x45749f

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/O;->b:[I

    .line 61
    const/16 v0, 0x4000

    sput v0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    .line 106
    new-instance v0, Ln/ag;

    new-array v3, v1, [I

    new-array v4, v10, [Ln/af;

    new-instance v6, Ln/af;

    const/high16 v7, 0x4000

    new-array v8, v1, [I

    invoke-direct {v6, v9, v7, v8, v1}, Ln/af;-><init>(IF[II)V

    aput-object v6, v4, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/O;->k:Ln/ag;

    .line 109
    new-instance v0, Ln/ag;

    new-array v3, v1, [I

    new-array v4, v10, [Ln/af;

    new-instance v6, Ln/af;

    const/high16 v7, 0x3fc0

    new-array v8, v1, [I

    invoke-direct {v6, v9, v7, v8, v1}, Ln/af;-><init>(IF[II)V

    aput-object v6, v4, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ln/ag;-><init>(II[I[Ln/af;Ln/ak;Ln/aj;Ln/af;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/O;->l:Ln/ag;

    .line 124
    new-instance v0, Lcom/google/android/maps/driveabout/vector/P;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/P;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/O;->m:Ljava/lang/ThreadLocal;

    return-void

    .line 55
    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/Q;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 350
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->i:Lz/r;

    .line 351
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->h:Lz/r;

    .line 352
    const/4 v0, 0x1

    .line 353
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ec;

    invoke-direct {v1, p1, v0}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    .line 354
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ec;

    invoke-direct {v1, p2, v0}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    .line 357
    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/vector/aU;->D()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/t;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    .line 359
    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/vector/aU;->D()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/maps/driveabout/vector/t;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    .line 362
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    .line 363
    return-void
.end method

.method static a(Ln/d;)I
    .registers 2
    .parameter

    .prologue
    .line 465
    invoke-virtual {p0}, Ln/d;->e()Ln/ag;

    move-result-object v0

    invoke-virtual {v0}, Ln/ag;->c()I

    move-result v0

    if-nez v0, :cond_c

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Ln/d;->b()Ln/az;

    move-result-object v0

    invoke-virtual {v0}, Ln/az;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_b
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;Lcom/google/android/maps/driveabout/vector/ap;Lcom/google/android/maps/driveabout/vector/R;ILcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/O;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v7

    .line 203
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 205
    const/4 v1, 0x0

    .line 206
    if-eqz p4, :cond_107

    .line 207
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    move-object v6, v1

    .line 212
    :goto_16
    const/4 v2, 0x0

    .line 213
    const/4 v3, 0x0

    .line 215
    :goto_18
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 216
    invoke-interface {p2}, Ln/aI;->b()Ln/l;

    move-result-object v5

    .line 217
    instance-of v1, v5, Ln/d;

    if-eqz v1, :cond_49

    move-object v1, v5

    .line 218
    check-cast v1, Ln/d;

    .line 219
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/O;->a(Ln/d;)I

    move-result v9

    .line 220
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/O;->b(Ln/d;)I

    move-result v10

    .line 221
    sget v11, Lcom/google/android/maps/driveabout/vector/O;->c:I

    if-gt v9, v11, :cond_39

    sget v11, Lcom/google/android/maps/driveabout/vector/O;->c:I

    if-le v10, v11, :cond_3d

    .line 228
    :cond_39
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto :goto_18

    .line 231
    :cond_3d
    add-int v11, v2, v9

    sget v12, Lcom/google/android/maps/driveabout/vector/O;->c:I

    if-gt v11, v12, :cond_49

    add-int v11, v3, v10

    sget v12, Lcom/google/android/maps/driveabout/vector/O;->c:I

    if-le v11, v12, :cond_70

    .line 273
    :cond_49
    const/4 v5, 0x0

    .line 274
    if-eqz v6, :cond_e6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 275
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 276
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5a
    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d;

    .line 277
    invoke-virtual {v1}, Ln/d;->j()Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 278
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 235
    :cond_70
    add-int/2addr v2, v9

    .line 236
    add-int/2addr v3, v10

    .line 237
    invoke-interface {v5}, Ln/l;->l()[I

    move-result-object v9

    array-length v10, v9

    const/4 v5, 0x0

    :goto_78
    if-ge v5, v10, :cond_89

    aget v11, v9, v5

    .line 238
    if-ltz v11, :cond_86

    array-length v12, p1

    if-ge v11, v12, :cond_86

    .line 239
    aget-object v11, p1, v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 242
    :cond_89
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    if-eqz p4, :cond_dd

    invoke-virtual {v1}, Ln/d;->j()Z

    move-result v5

    if-eqz v5, :cond_dd

    const/4 v5, 0x1

    .line 249
    :goto_95
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/O;->c(Ln/d;)Z

    move-result v9

    .line 250
    if-nez v5, :cond_9d

    if-nez v9, :cond_d8

    :cond_9d
    invoke-virtual {v1}, Ln/d;->c()Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 251
    invoke-virtual {v1}, Ln/d;->j()Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 252
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/google/android/maps/driveabout/vector/O;->a(Ln/d;Ln/aa;)V

    .line 254
    :cond_b0
    invoke-virtual {v1}, Ln/d;->b()Ln/az;

    move-result-object v10

    invoke-virtual {v1}, Ln/d;->d()[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/maps/driveabout/vector/dA;->a(Ln/az;[B)Ljava/util/List;

    move-result-object v10

    .line 257
    if-eqz p3, :cond_c6

    if-nez v9, :cond_c6

    .line 258
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v9}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/ap;Ln/d;Ljava/util/List;Ln/am;)V

    .line 260
    :cond_c6
    if-eqz p3, :cond_d3

    invoke-virtual {v1}, Ln/d;->j()Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 261
    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, p0}, Lcom/google/android/maps/driveabout/vector/O;->a(Lcom/google/android/maps/driveabout/vector/ap;Ln/d;Ljava/util/List;Ln/am;)V

    .line 263
    :cond_d3
    if-eqz v5, :cond_d8

    .line 264
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_d8
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto/16 :goto_18

    .line 248
    :cond_dd
    const/4 v5, 0x0

    goto :goto_95

    .line 281
    :cond_df
    new-instance v5, Lcom/google/android/maps/driveabout/vector/Q;

    move-object/from16 v0, p4

    invoke-direct {v5, v7, v6, v9, v0}, Lcom/google/android/maps/driveabout/vector/Q;-><init>(Ln/aa;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/vector/R;)V

    .line 285
    :cond_e6
    new-instance v1, Lcom/google/android/maps/driveabout/vector/O;

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/O;-><init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/Q;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 287
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/d;

    .line 288
    invoke-direct {v1, v7, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(Ln/aa;Ln/d;)V

    goto :goto_f1

    .line 290
    :cond_101
    move/from16 v0, p5

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Ln/am;I)V

    .line 291
    return-object v1

    :cond_107
    move-object v6, v1

    goto/16 :goto_16
.end method

.method private static a(F)Ln/ag;
    .registers 2
    .parameter

    .prologue
    .line 120
    const/high16 v0, 0x4190

    cmpl-float v0, p0, v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/google/android/maps/driveabout/vector/O;->k:Ln/ag;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/maps/driveabout/vector/O;->l:Ln/ag;

    goto :goto_8
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1

    .line 406
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->e()Z

    move-result v0

    if-nez v0, :cond_f

    .line 408
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 410
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 411
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 414
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 415
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 417
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/ap;Ln/d;Ljava/util/List;Ln/am;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    if-eqz p3, :cond_30

    .line 153
    sget-object v1, Ln/aq;->c:Ln/aq;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ln/am;->a(Ln/aq;)Ln/ao;

    move-result-object v1

    check-cast v1, Ln/C;

    .line 154
    invoke-virtual {v1}, Ln/C;->b()Ln/p;

    move-result-object v2

    .line 155
    invoke-virtual/range {p3 .. p3}, Ln/am;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/O;->a(F)Ln/ag;

    move-result-object v5

    .line 161
    :goto_19
    invoke-virtual {p1}, Ln/d;->b()Ln/az;

    move-result-object v1

    invoke-virtual {v1}, Ln/az;->a()I

    move-result v1

    .line 162
    if-eqz v1, :cond_2f

    invoke-virtual {v5}, Ln/ag;->b()I

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Ln/d;->c()Z

    move-result v1

    if-nez v1, :cond_39

    .line 179
    :cond_2f
    return-void

    .line 157
    :cond_30
    invoke-virtual {p1}, Ln/d;->a()Ln/m;

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Ln/d;->e()Ln/ag;

    move-result-object v5

    goto :goto_19

    .line 167
    :cond_39
    invoke-virtual {p1}, Ln/d;->i()I

    move-result v8

    .line 170
    invoke-virtual {p1}, Ln/d;->f()I

    move-result v6

    .line 171
    invoke-virtual {p1}, Ln/d;->g()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {p1}, Ln/d;->l()[I

    move-result-object v11

    .line 174
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/U;

    .line 175
    new-instance v1, Ln/H;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_68

    const/4 v12, 0x1

    :goto_61
    invoke-direct/range {v1 .. v12}, Ln/H;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[IZ)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/ap;->a(Ln/l;)V

    goto :goto_4d

    .line 175
    :cond_68
    const/4 v12, 0x0

    goto :goto_61
.end method

.method private a(Ln/aa;Ln/d;)V
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-virtual/range {p2 .. p2}, Ln/d;->e()Ln/ag;

    move-result-object v4

    .line 522
    invoke-virtual/range {p2 .. p2}, Ln/d;->b()Ln/az;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Ln/az;->a()I

    move-result v12

    .line 524
    if-nez v12, :cond_f

    .line 616
    :cond_e
    :goto_e
    return-void

    .line 527
    :cond_f
    invoke-virtual {v4}, Ln/ag;->c()I

    move-result v2

    if-lez v2, :cond_ed

    const/4 v2, 0x1

    move v7, v2

    .line 528
    :goto_17
    invoke-static/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/O;->c(Ln/d;)Z

    move-result v13

    .line 529
    if-nez v7, :cond_1f

    if-eqz v13, :cond_e

    .line 536
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    .line 537
    invoke-virtual/range {p1 .. p1}, Ln/aa;->g()I

    move-result v14

    .line 538
    if-eqz v7, :cond_f1

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ln/ag;->a(I)I

    move-result v2

    move v11, v2

    .line 539
    :goto_2f
    if-eqz v13, :cond_f5

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->b()I

    move-result v2

    move v8, v2

    .line 540
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Ln/d;->d()[B

    move-result-object v15

    .line 542
    const/4 v10, 0x0

    .line 543
    const/4 v9, 0x0

    .line 544
    sget-object v2, Lcom/google/android/maps/driveabout/vector/O;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln/Q;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 545
    sget-object v2, Lcom/google/android/maps/driveabout/vector/O;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln/Q;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    .line 546
    sget-object v2, Lcom/google/android/maps/driveabout/vector/O;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln/Q;

    const/4 v6, 0x2

    aget-object v6, v2, v6

    .line 547
    const/4 v2, 0x0

    :goto_63
    if-ge v2, v12, :cond_f9

    .line 549
    invoke-virtual/range {v1 .. v6}, Ln/az;->a(ILn/Q;Ln/Q;Ln/Q;Ln/Q;)V

    .line 551
    if-eqz v7, :cond_8d

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 565
    add-int/lit8 v10, v10, 0x3

    .line 567
    :cond_8d
    if-eqz v13, :cond_e9

    .line 568
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_ad

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 579
    add-int/lit8 v9, v9, 0x2

    .line 581
    :cond_ad
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_cb

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 592
    add-int/lit8 v9, v9, 0x2

    .line 594
    :cond_cb
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_e9

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 605
    add-int/lit8 v9, v9, 0x2

    .line 547
    :cond_e9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_63

    .line 527
    :cond_ed
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_17

    .line 538
    :cond_f1
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_2f

    .line 539
    :cond_f5
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3b

    .line 613
    :cond_f9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, v11, v10}, Lcom/google/android/maps/driveabout/vector/t;->a(II)V

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/maps/driveabout/vector/t;->a(II)V

    goto/16 :goto_e
.end method

.method private a(Ln/am;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 620
    return-void
.end method

.method private static a(Ln/d;Ln/aa;)V
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 306
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 307
    new-instance v5, Ln/Q;

    invoke-direct {v5}, Ln/Q;-><init>()V

    .line 308
    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    .line 309
    invoke-virtual/range {p1 .. p1}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v7

    .line 310
    invoke-virtual/range {p1 .. p1}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v8

    .line 311
    invoke-virtual/range {p1 .. p1}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v9

    .line 312
    invoke-virtual/range {p1 .. p1}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v10

    .line 313
    invoke-virtual {p0}, Ln/d;->b()Ln/az;

    move-result-object v11

    .line 314
    invoke-virtual {v11}, Ln/az;->a()I

    move-result v12

    .line 315
    invoke-virtual {p0}, Ln/d;->d()[B

    move-result-object v13

    .line 316
    const/4 v0, 0x0

    move v3, v0

    :goto_3d
    if-ge v3, v12, :cond_ef

    .line 317
    invoke-virtual {v11, v3, v4, v5, v6}, Ln/az;->a(ILn/Q;Ln/Q;Ln/Q;)V

    .line 318
    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v1

    if-ne v0, v1, :cond_58

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v0

    if-eq v0, v7, :cond_6e

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v0

    if-eq v0, v9, :cond_6e

    :cond_58
    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v0

    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v1

    if-ne v0, v1, :cond_e9

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v0

    if-eq v0, v8, :cond_6e

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v0

    if-ne v0, v10, :cond_e9

    :cond_6e
    const/4 v0, 0x1

    .line 320
    :goto_6f
    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v1

    invoke-virtual {v6}, Ln/Q;->f()I

    move-result v2

    if-ne v1, v2, :cond_85

    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v1

    if-eq v1, v7, :cond_9b

    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v1

    if-eq v1, v9, :cond_9b

    :cond_85
    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v1

    invoke-virtual {v6}, Ln/Q;->g()I

    move-result v2

    if-ne v1, v2, :cond_eb

    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v1

    if-eq v1, v8, :cond_9b

    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v1

    if-ne v1, v10, :cond_eb

    :cond_9b
    const/4 v1, 0x1

    .line 322
    :goto_9c
    invoke-virtual {v6}, Ln/Q;->f()I

    move-result v2

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v14

    if-ne v2, v14, :cond_b2

    invoke-virtual {v6}, Ln/Q;->f()I

    move-result v2

    if-eq v2, v7, :cond_c8

    invoke-virtual {v6}, Ln/Q;->f()I

    move-result v2

    if-eq v2, v9, :cond_c8

    :cond_b2
    invoke-virtual {v6}, Ln/Q;->g()I

    move-result v2

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v14

    if-ne v2, v14, :cond_ed

    invoke-virtual {v6}, Ln/Q;->g()I

    move-result v2

    if-eq v2, v8, :cond_c8

    invoke-virtual {v6}, Ln/Q;->g()I

    move-result v2

    if-ne v2, v10, :cond_ed

    :cond_c8
    const/4 v2, 0x1

    .line 324
    :goto_c9
    if-eqz v0, :cond_d2

    .line 325
    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    .line 327
    :cond_d2
    if-eqz v1, :cond_db

    .line 328
    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    .line 330
    :cond_db
    if-eqz v2, :cond_e4

    .line 331
    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    .line 316
    :cond_e4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3d

    .line 318
    :cond_e9
    const/4 v0, 0x0

    goto :goto_6f

    .line 320
    :cond_eb
    const/4 v1, 0x0

    goto :goto_9c

    .line 322
    :cond_ed
    const/4 v2, 0x0

    goto :goto_c9

    .line 334
    :cond_ef
    return-void
.end method

.method static b(Ln/d;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 504
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/O;->c(Ln/d;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 513
    :goto_7
    return v0

    .line 508
    :cond_8
    invoke-virtual {p0}, Ln/d;->d()[B

    move-result-object v2

    move v1, v0

    .line 509
    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 510
    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7

    .line 511
    sget-object v4, Lcom/google/android/maps/driveabout/vector/O;->b:[I

    aget v3, v4, v3

    add-int/2addr v1, v3

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    .line 513
    goto :goto_7
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/maps/driveabout/vector/O;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static c(Ln/d;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0}, Ln/d;->e()Ln/ag;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ln/d;->c()Z

    move-result v0

    if-nez v0, :cond_12

    .line 496
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v1

    .line 487
    :goto_13
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 488
    invoke-virtual {v2, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v3

    invoke-virtual {v3}, Ln/af;->c()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_11

    .line 491
    invoke-virtual {v2, v0}, Ln/ag;->b(I)Ln/af;

    move-result-object v3

    invoke-virtual {v3}, Ln/af;->e()Z

    move-result v3

    if-nez v3, :cond_11

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 496
    :cond_34
    const/4 v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->a()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_20
    add-int/2addr v0, v1

    return v0

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/Q;->a()I

    move-result v0

    goto :goto_20
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    if-eqz v0, :cond_1d

    .line 397
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/Q;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 399
    :cond_1d
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 430
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cv;->c()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 432
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 433
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    if-lez v1, :cond_2d

    .line 434
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 435
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 436
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    invoke-interface {v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 438
    :cond_2d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    if-lez v1, :cond_48

    .line 439
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 440
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 441
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 443
    :cond_48
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 458
    :cond_4b
    :goto_4b
    return-void

    .line 444
    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cv;->e()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 445
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    if-lez v1, :cond_68

    .line 446
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 447
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    invoke-interface {v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 449
    :cond_68
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    if-lez v1, :cond_4b

    .line 450
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 451
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_4b

    .line 453
    :cond_7f
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cv;->d()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    if-eqz v0, :cond_4b

    .line 455
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_4b
.end method

.method public b()I
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x9c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->b()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_22
    add-int/2addr v0, v1

    return v0

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/Q;->b()I

    move-result v0

    goto :goto_22
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->d:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    if-eqz v0, :cond_1d

    .line 380
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:Lcom/google/android/maps/driveabout/vector/Q;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 382
    :cond_1d
    return-void
.end method
