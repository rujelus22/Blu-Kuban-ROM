.class public Lcom/google/android/maps/driveabout/vector/W;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field private static final a:Lt/L;

.field private static final b:Ljava/util/Comparator;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/di;

.field private final d:Lcom/google/android/maps/driveabout/vector/y;

.field private e:Lcom/google/android/maps/driveabout/vector/i;

.field private final f:Lcom/google/android/maps/driveabout/vector/bu;

.field private final g:Lcom/google/android/maps/driveabout/vector/bu;

.field private final h:Lcom/google/android/maps/driveabout/vector/bu;

.field private final i:Lt/L;

.field private final j:Lt/L;

.field private final k:Lt/L;

.field private final l:Lt/L;

.field private final m:Lt/L;

.field private final n:Lt/L;

.field private final o:Lt/L;

.field private final p:Lt/L;

.field private final q:Lt/L;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v2, 0xb504

    new-instance v0, Lt/L;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lt/L;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/W;->a:Lt/L;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/X;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/X;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/W;->b:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/Y;Ljava/util/Set;)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/i;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->e:Lcom/google/android/maps/driveabout/vector/i;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/Y;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/Y;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/D;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/Y;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/Y;->b:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/Y;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/Y;->c:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->l:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->m:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->n:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->o:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->p:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->q:Lt/L;

    return-void
.end method

.method private static final a(I)I
    .registers 5

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    add-int/lit16 v0, v0, 0x2fd

    shr-int/lit8 v0, v0, 0x2

    add-int/lit16 v1, v1, 0x2fd

    shr-int/lit8 v1, v1, 0x2

    add-int/lit16 v2, v2, 0x2fd

    shr-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x100

    and-int/2addr v3, p0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static a(II)I
    .registers 4

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(ILt/L;)I
    .registers 8

    const/high16 v0, -0x100

    and-int v1, p0, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v2, v0, 0xff

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v3, v0, 0xff

    and-int/lit16 v4, p0, 0xff

    sget-object v0, Lcom/google/android/maps/driveabout/vector/W;->a:Lt/L;

    invoke-static {p1, v0}, Lt/L;->b(Lt/L;Lt/L;)F

    move-result v0

    invoke-virtual {p1}, Lt/L;->i()F

    move-result v5

    div-float/2addr v0, v5

    float-to-int v0, v0

    if-gez v0, :cond_1d

    neg-int v0, v0

    :cond_1d
    mul-int/lit16 v0, v0, 0x4ccc

    shr-int/lit8 v0, v0, 0x10

    const v5, 0xb333

    add-int/2addr v0, v5

    mul-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    mul-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x10

    mul-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;)Lcom/google/android/maps/driveabout/vector/W;
    .registers 14

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    invoke-virtual {v0}, Lr/l;->i()Lr/b;

    move-result-object v0

    move-object v2, v0

    :goto_11
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lcom/google/android/maps/driveabout/vector/Y;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/vector/Y;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_22
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p2}, Lt/ar;->b()Lt/l;

    move-result-object v1

    instance-of v0, v1, Lt/e;

    if-eqz v0, :cond_39

    move-object v0, v1

    check-cast v0, Lt/e;

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/vector/W;->a(Lt/e;Lcom/google/android/maps/driveabout/vector/Y;)Z

    move-result v7

    if-nez v7, :cond_68

    :cond_39
    sget-object v0, Lcom/google/android/maps/driveabout/vector/W;->b:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lt/L;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    new-instance v3, Lcom/google/android/maps/driveabout/vector/W;

    invoke-direct {v3, v5, v6}, Lcom/google/android/maps/driveabout/vector/W;-><init>(Lcom/google/android/maps/driveabout/vector/Y;Ljava/util/Set;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/e;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/W;->a(Lt/af;Lt/V;Lt/e;F)V

    goto :goto_58

    :cond_68
    invoke-interface {v1}, Lt/l;->k()[I

    move-result-object v7

    array-length v8, v7

    move v1, v3

    :goto_6e
    if-ge v1, v8, :cond_7f

    aget v9, v7, v1

    if-ltz v9, :cond_7c

    array-length v10, p1

    if-ge v9, v10, :cond_7c

    aget-object v9, p1, v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    invoke-virtual {v0}, Lt/e;->d()Z

    move-result v1

    if-nez v1, :cond_91

    if-eqz v2, :cond_9b

    invoke-virtual {v0}, Lt/e;->a()Lt/m;

    move-result-object v1

    invoke-interface {v2, v1}, Lr/b;->a(Lt/m;)Z

    move-result v1

    if-eqz v1, :cond_9b

    :cond_91
    const/4 v1, 0x1

    :goto_92
    if-nez v1, :cond_97

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    goto :goto_22

    :cond_9b
    move v1, v3

    goto :goto_92

    :cond_9d
    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/W;->c()V

    return-object v3

    :cond_a1
    move-object v2, v0

    goto/16 :goto_11
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 6

    const/high16 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->t()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->u()V

    invoke-interface {v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x201

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->m()V

    const/16 v1, 0x203

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    goto :goto_1b
.end method

.method private a(Lt/L;Lt/L;Lt/L;Lt/L;II)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1, p5}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p3, p5}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p2, p5}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p4, p5}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->q:Lt/L;

    invoke-static {p2, p1, v0}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->q:Lt/L;

    invoke-static {p6, v1}, Lcom/google/android/maps/driveabout/vector/W;->a(ILt/L;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    return-void
.end method

.method private a(Lt/af;Lt/V;Lt/e;F)V
    .registers 19

    invoke-virtual/range {p3 .. p3}, Lt/e;->e()Lt/Z;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lt/e;->b()Lt/ai;

    move-result-object v10

    invoke-virtual {v10}, Lt/ai;->a()I

    move-result v11

    invoke-virtual {v1}, Lt/Z;->d()I

    move-result v2

    if-eqz v11, :cond_14

    if-nez v2, :cond_15

    :cond_14
    return-void

    :cond_15
    invoke-virtual/range {p2 .. p2}, Lt/V;->d()Lt/L;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lt/V;->g()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lt/e;->f()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lt/e;->g()I

    move-result v13

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->o:Lt/L;

    const/4 v5, 0x0

    const/4 v7, 0x0

    int-to-float v3, v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-virtual {v4, v5, v7, v3}, Lt/L;->a(III)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lt/Z;->c(I)I

    move-result v3

    const/16 v4, 0xa0

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/W;->a(II)I

    move-result v7

    const/4 v3, 0x1

    if-le v2, v3, :cond_120

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lt/Z;->c(I)I

    move-result v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/W;->a(II)I

    move-result v1

    move v8, v1

    :goto_4a
    const/4 v1, 0x0

    move v9, v1

    :goto_4c
    if-ge v9, v11, :cond_14

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    invoke-virtual {v10, v9, v2, v3, v4}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    invoke-static {v2, v12, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    invoke-static {v2, v12, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    invoke-static {v2, v12, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    if-eqz v13, :cond_9a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->p:Lt/L;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v13

    mul-float v5, v5, p4

    float-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lt/L;->a(III)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->p:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->p:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->p:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    :cond_9a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->o:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->l:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->o:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->m:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->o:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->n:Lt/L;

    invoke-static {v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->l:Lt/L;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->m:Lt/L;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->n:Lt/L;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    const/4 v3, 0x3

    invoke-virtual {v2, v8, v3}, Lcom/google/android/maps/driveabout/vector/y;->b(II)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    int-to-short v3, v1

    add-int/lit8 v4, v1, 0x1

    int-to-short v4, v4

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(SSS)V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Lt/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->l:Lt/L;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/W;->m:Lt/L;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/W;->a(Lt/L;Lt/L;Lt/L;Lt/L;II)V

    :cond_f1
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Lt/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_106

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->j:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->m:Lt/L;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/W;->n:Lt/L;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/W;->a(Lt/L;Lt/L;Lt/L;Lt/L;II)V

    :cond_106
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v1}, Lt/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->k:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->i:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/W;->n:Lt/L;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/W;->l:Lt/L;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/W;->a(Lt/L;Lt/L;Lt/L;Lt/L;II)V

    :cond_11b
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_4c

    :cond_120
    invoke-static {v7}, Lcom/google/android/maps/driveabout/vector/W;->a(I)I

    move-result v1

    move v8, v1

    goto/16 :goto_4a
.end method

.method static a(Lt/e;Lcom/google/android/maps/driveabout/vector/Y;)Z
    .registers 6

    invoke-virtual {p0}, Lt/e;->b()Lt/ai;

    move-result-object v0

    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v0

    invoke-virtual {p0}, Lt/e;->c()I

    move-result v1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v2, v1, 0x4

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/Y;->a:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1e

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/Y;->a:I

    if-lez v3, :cond_1e

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    iput v2, p1, Lcom/google/android/maps/driveabout/vector/Y;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/Y;->b:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/Y;->b:I

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/Y;->c:I

    mul-int/lit8 v2, v1, 0x6

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/Y;->c:I

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/Y;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/Y;->d:I

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/bu;II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 9

    const/4 v4, 0x4

    const/high16 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->e:Lcom/google/android/maps/driveabout/vector/i;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->e:Lcom/google/android/maps/driveabout/vector/i;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/i;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    if-ne v0, v1, :cond_33

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->e:Lcom/google/android/maps/driveabout/vector/i;

    :goto_25
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_b

    :cond_33
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    goto :goto_25

    :cond_39
    move v0, v1

    goto :goto_25

    :cond_3b
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    goto :goto_b
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x160

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/y;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/W;->h:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->d:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->f:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/W;->g:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method
