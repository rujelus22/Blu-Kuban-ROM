.class public Lcom/google/android/maps/driveabout/vector/Q;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field private static final a:[I

.field private static final g:Lt/Z;

.field private static final h:Lt/Z;

.field private static final i:Ljava/lang/ThreadLocal;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/di;

.field private final c:Lcom/google/android/maps/driveabout/vector/di;

.field private final d:Lcom/google/android/maps/driveabout/vector/A;

.field private final e:Lcom/google/android/maps/driveabout/vector/A;

.field private final f:Lcom/google/android/maps/driveabout/vector/S;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v2, 0x2

    const/4 v10, 0x1

    const v9, -0x45749f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Q;->a:[I

    new-instance v0, Lt/Z;

    new-array v3, v1, [I

    new-array v4, v10, [Lt/Y;

    new-instance v6, Lt/Y;

    const/high16 v7, 0x4000

    new-array v8, v1, [I

    invoke-direct {v6, v9, v7, v8, v1}, Lt/Y;-><init>(IF[II)V

    aput-object v6, v4, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Q;->g:Lt/Z;

    new-instance v0, Lt/Z;

    new-array v3, v1, [I

    new-array v4, v10, [Lt/Y;

    new-instance v6, Lt/Y;

    const/high16 v7, 0x3fc0

    new-array v8, v1, [I

    invoke-direct {v6, v9, v7, v8, v1}, Lt/Y;-><init>(IF[II)V

    aput-object v6, v4, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Q;->h:Lt/Z;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/R;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/R;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Q;->i:Ljava/lang/ThreadLocal;

    return-void

    :array_48
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

.method private constructor <init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/S;)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/A;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/A;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/A;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    return-void
.end method

.method static a(Lt/d;)I
    .registers 2

    invoke-virtual {p0}, Lt/d;->e()Lt/Z;

    move-result-object v0

    invoke-virtual {v0}, Lt/Z;->d()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lt/d;->b()Lt/ai;

    move-result-object v0

    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_b
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;Lcom/google/android/maps/driveabout/vector/ar;Lcom/google/android/maps/driveabout/vector/T;)Lcom/google/android/maps/driveabout/vector/Q;
    .registers 18

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_f6

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    move-object v3, v1

    :goto_16
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_1a
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p2}, Lt/ar;->b()Lt/l;

    move-result-object v2

    instance-of v1, v2, Lt/d;

    if-eqz v1, :cond_3f

    move-object v1, v2

    check-cast v1, Lt/d;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lt/d;)I

    move-result v9

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Q;->b(Lt/d;)I

    move-result v10

    add-int v11, v5, v9

    const/16 v12, 0x4000

    if-gt v11, v12, :cond_3f

    add-int v11, v4, v10

    const/16 v12, 0x4000

    if-le v11, v12, :cond_66

    :cond_3f
    const/4 v1, 0x0

    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dc

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_50
    :goto_50
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    invoke-virtual {v1}, Lt/d;->j()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_66
    add-int/2addr v5, v9

    add-int/2addr v4, v10

    invoke-interface {v2}, Lt/l;->k()[I

    move-result-object v9

    array-length v10, v9

    const/4 v2, 0x0

    :goto_6e
    if-ge v2, v10, :cond_7f

    aget v11, v9, v2

    if-ltz v11, :cond_7c

    array-length v12, p1

    if-ge v11, v12, :cond_7c

    aget-object v11, p1, v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_7f
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_d3

    invoke-virtual {v1}, Lt/d;->j()Z

    move-result v2

    if-eqz v2, :cond_d3

    const/4 v2, 0x1

    :goto_8b
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Q;->c(Lt/d;)Z

    move-result v9

    if-nez v2, :cond_93

    if-nez v9, :cond_ce

    :cond_93
    invoke-virtual {v1}, Lt/d;->c()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-virtual {v1}, Lt/d;->j()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lt/d;Lt/V;)V

    :cond_a6
    invoke-virtual {v1}, Lt/d;->b()Lt/ai;

    move-result-object v10

    invoke-virtual {v1}, Lt/d;->d()[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/maps/driveabout/vector/cP;->a(Lt/ai;[B)Ljava/util/List;

    move-result-object v10

    if-eqz p3, :cond_bc

    if-nez v9, :cond_bc

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v9}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lcom/google/android/maps/driveabout/vector/ar;Lt/d;Ljava/util/List;Lt/af;)V

    :cond_bc
    if-eqz p3, :cond_c9

    invoke-virtual {v1}, Lt/d;->j()Z

    move-result v9

    if-eqz v9, :cond_c9

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, p0}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lcom/google/android/maps/driveabout/vector/ar;Lt/d;Ljava/util/List;Lt/af;)V

    :cond_c9
    if-eqz v2, :cond_ce

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_ce
    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_d3
    const/4 v2, 0x0

    goto :goto_8b

    :cond_d5
    new-instance v1, Lcom/google/android/maps/driveabout/vector/S;

    move-object/from16 v0, p4

    invoke-direct {v1, v6, v3, v2, v0}, Lcom/google/android/maps/driveabout/vector/S;-><init>(Lt/V;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/vector/T;)V

    :cond_dc
    new-instance v2, Lcom/google/android/maps/driveabout/vector/Q;

    invoke-direct {v2, v5, v4, v8, v1}, Lcom/google/android/maps/driveabout/vector/Q;-><init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/S;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    invoke-direct {v2, v6, v1}, Lcom/google/android/maps/driveabout/vector/Q;->a(Lt/V;Lt/d;)V

    goto :goto_e5

    :cond_f5
    return-object v2

    :cond_f6
    move-object v3, v1

    goto/16 :goto_16
.end method

.method private static a(F)Lt/Z;
    .registers 2

    const/high16 v0, 0x4190

    cmpl-float v0, p0, v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/google/android/maps/driveabout/vector/Q;->g:Lt/Z;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/maps/driveabout/vector/Q;->h:Lt/Z;

    goto :goto_8
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 7

    const/high16 v4, 0x1

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->e()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/ar;Lt/d;Ljava/util/List;Lt/af;)V
    .registers 17

    if-eqz p3, :cond_26

    invoke-virtual/range {p3 .. p3}, Lt/af;->e()Lt/m;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lt/af;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/Q;->a(F)Lt/Z;

    move-result-object v4

    :goto_f
    invoke-virtual {p1}, Lt/d;->b()Lt/ai;

    move-result-object v0

    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v4}, Lt/Z;->c()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lt/d;->c()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p1}, Lt/d;->a()Lt/m;

    move-result-object v1

    invoke-virtual {p1}, Lt/d;->e()Lt/Z;

    move-result-object v4

    goto :goto_f

    :cond_2f
    invoke-virtual {p1}, Lt/d;->i()I

    move-result v7

    invoke-virtual {p1}, Lt/d;->f()I

    move-result v5

    invoke-virtual {p1}, Lt/d;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lt/d;->k()[I

    move-result-object v10

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_43
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/P;

    new-instance v0, Lt/D;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_5e

    const/4 v11, 0x1

    :goto_57
    invoke-direct/range {v0 .. v11}, Lt/D;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[IZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ar;->a(Lt/l;)V

    goto :goto_43

    :cond_5e
    const/4 v11, 0x0

    goto :goto_57
.end method

.method private a(Lt/V;Lt/d;)V
    .registers 20

    invoke-virtual/range {p2 .. p2}, Lt/d;->e()Lt/Z;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lt/d;->b()Lt/ai;

    move-result-object v1

    invoke-virtual {v1}, Lt/ai;->a()I

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {v4}, Lt/Z;->d()I

    move-result v2

    if-lez v2, :cond_e9

    const/4 v2, 0x1

    move v7, v2

    :goto_17
    invoke-static/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/Q;->c(Lt/d;)Z

    move-result v13

    if-nez v7, :cond_1f

    if-eqz v13, :cond_e

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lt/V;->d()Lt/L;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lt/V;->g()I

    move-result v14

    if-eqz v7, :cond_ed

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lt/Z;->c(I)I

    move-result v2

    move v11, v2

    :goto_2f
    if-eqz v13, :cond_f1

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lt/Z;->a(I)I

    move-result v2

    move v8, v2

    :goto_37
    invoke-virtual/range {p2 .. p2}, Lt/d;->d()[B

    move-result-object v15

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/Q;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lt/L;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    sget-object v2, Lcom/google/android/maps/driveabout/vector/Q;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lt/L;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    sget-object v2, Lcom/google/android/maps/driveabout/vector/Q;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lt/L;

    const/4 v6, 0x2

    aget-object v6, v2, v6

    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v12, :cond_f5

    invoke-virtual/range {v1 .. v6}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;Lt/L;)V

    if-eqz v7, :cond_89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v10, v10, 0x3

    :cond_89
    if-eqz v13, :cond_e5

    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_a9
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_c7
    aget-byte v16, v15, v2

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v9, v9, 0x2

    :cond_e5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5f

    :cond_e9
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_17

    :cond_ed
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_2f

    :cond_f1
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_37

    :cond_f5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1, v11, v10}, Lcom/google/android/maps/driveabout/vector/A;->a(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/maps/driveabout/vector/A;->a(II)V

    goto/16 :goto_e
.end method

.method private static a(Lt/d;Lt/V;)V
    .registers 17

    new-instance v4, Lt/L;

    invoke-direct {v4}, Lt/L;-><init>()V

    new-instance v5, Lt/L;

    invoke-direct {v5}, Lt/L;-><init>()V

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lt/V;->d()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lt/V;->d()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lt/V;->e()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lt/V;->e()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v10

    invoke-virtual {p0}, Lt/d;->b()Lt/ai;

    move-result-object v11

    invoke-virtual {v11}, Lt/ai;->a()I

    move-result v12

    invoke-virtual {p0}, Lt/d;->d()[B

    move-result-object v13

    const/4 v0, 0x0

    move v3, v0

    :goto_3d
    if-ge v3, v12, :cond_ef

    invoke-virtual {v11, v3, v4, v5, v6}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;)V

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v0

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v1

    if-ne v0, v1, :cond_58

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v0

    if-eq v0, v7, :cond_6e

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v0

    if-eq v0, v9, :cond_6e

    :cond_58
    invoke-virtual {v4}, Lt/L;->g()I

    move-result v0

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v1

    if-ne v0, v1, :cond_e9

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v0

    if-eq v0, v8, :cond_6e

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v0

    if-ne v0, v10, :cond_e9

    :cond_6e
    const/4 v0, 0x1

    :goto_6f
    invoke-virtual {v5}, Lt/L;->f()I

    move-result v1

    invoke-virtual {v6}, Lt/L;->f()I

    move-result v2

    if-ne v1, v2, :cond_85

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v1

    if-eq v1, v7, :cond_9b

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v1

    if-eq v1, v9, :cond_9b

    :cond_85
    invoke-virtual {v5}, Lt/L;->g()I

    move-result v1

    invoke-virtual {v6}, Lt/L;->g()I

    move-result v2

    if-ne v1, v2, :cond_eb

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v1

    if-eq v1, v8, :cond_9b

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v1

    if-ne v1, v10, :cond_eb

    :cond_9b
    const/4 v1, 0x1

    :goto_9c
    invoke-virtual {v6}, Lt/L;->f()I

    move-result v2

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v14

    if-ne v2, v14, :cond_b2

    invoke-virtual {v6}, Lt/L;->f()I

    move-result v2

    if-eq v2, v7, :cond_c8

    invoke-virtual {v6}, Lt/L;->f()I

    move-result v2

    if-eq v2, v9, :cond_c8

    :cond_b2
    invoke-virtual {v6}, Lt/L;->g()I

    move-result v2

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v14

    if-ne v2, v14, :cond_ed

    invoke-virtual {v6}, Lt/L;->g()I

    move-result v2

    if-eq v2, v8, :cond_c8

    invoke-virtual {v6}, Lt/L;->g()I

    move-result v2

    if-ne v2, v10, :cond_ed

    :cond_c8
    const/4 v2, 0x1

    :goto_c9
    if-eqz v0, :cond_d2

    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    :cond_d2
    if-eqz v1, :cond_db

    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    :cond_db
    if-eqz v2, :cond_e4

    aget-byte v0, v13, v3

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    aput-byte v0, v13, v3

    :cond_e4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3d

    :cond_e9
    const/4 v0, 0x0

    goto :goto_6f

    :cond_eb
    const/4 v1, 0x0

    goto :goto_9c

    :cond_ed
    const/4 v2, 0x0

    goto :goto_c9

    :cond_ef
    return-void
.end method

.method static b(Lt/d;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/Q;->c(Lt/d;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lt/d;->d()[B

    move-result-object v2

    move v1, v0

    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    aget-byte v3, v2, v0

    and-int/lit8 v3, v3, 0x7

    sget-object v4, Lcom/google/android/maps/driveabout/vector/Q;->a:[I

    aget v3, v4, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    goto :goto_7
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/Q;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static c(Lt/d;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/d;->e()Lt/Z;

    move-result-object v2

    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lt/d;->c()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {v2, v0}, Lt/Z;->b(I)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    const/4 v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->a()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_20
    add-int/2addr v0, v1

    return v0

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->a()I

    move-result v0

    goto :goto_20
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 10

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cb;->c()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    invoke-interface {v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_2d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    if-lez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_48
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cb;->e()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    if-lez v1, :cond_68

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    invoke-interface {v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_68
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    if-lez v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    invoke-interface {v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_4b

    :cond_7f
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_4b
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1d
    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x9c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->b()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_22
    add-int/2addr v0, v1

    return v0

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->b()I

    move-result v0

    goto :goto_22
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->d:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Q;->f:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1d
    return-void
.end method
