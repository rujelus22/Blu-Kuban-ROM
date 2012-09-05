.class public LaJ/p;
.super Ljava/lang/Object;

# interfaces
.implements Lt/x;


# instance fields
.field private final A:LaJ/t;

.field private B:LaJ/r;

.field private C:I

.field private D:Z

.field private E:LaJ/w;

.field private F:Ljava/lang/String;

.field private G:Lt/x;

.field protected final a:LaJ/D;

.field protected b:LaJ/H;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:LaJ/P;

.field private s:LaJ/P;

.field private t:[LaJ/P;

.field private u:LaJ/Q;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(IIILaJ/B;LaJ/Y;I)V
    .registers 14

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, LaJ/p;->c:I

    iput v6, p0, LaJ/p;->d:I

    iput v6, p0, LaJ/p;->e:I

    iput v6, p0, LaJ/p;->f:I

    iput v6, p0, LaJ/p;->g:I

    iput v6, p0, LaJ/p;->h:I

    iput v6, p0, LaJ/p;->i:I

    iput v6, p0, LaJ/p;->j:I

    iput v6, p0, LaJ/p;->k:I

    iput v6, p0, LaJ/p;->l:I

    iput v6, p0, LaJ/p;->m:I

    iput v6, p0, LaJ/p;->n:I

    iput v6, p0, LaJ/p;->o:I

    iput v6, p0, LaJ/p;->w:I

    new-instance v0, LaJ/t;

    invoke-direct {v0}, LaJ/t;-><init>()V

    iput-object v0, p0, LaJ/p;->A:LaJ/t;

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/p;->B:LaJ/r;

    iput v6, p0, LaJ/p;->C:I

    iput-boolean v6, p0, LaJ/p;->D:Z

    new-instance v0, LaJ/D;

    const-string v5, "Tiles"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, LaJ/D;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, LaJ/p;->a:LaJ/D;

    new-instance v0, LaJ/H;

    const/4 v1, 0x3

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-direct {v0, p4, v1, v6}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    iput-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-direct {p0, p4, p5}, LaJ/p;->a(LaJ/B;LaJ/Y;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/p;->v:Z

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lar/i;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized a(IILaJ/H;)LaJ/Y;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->f(LaJ/B;)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3, v0}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v1

    invoke-virtual {p0, v1}, LaJ/p;->b(LaJ/H;)I

    move-result v1

    if-lt v1, p1, :cond_27

    invoke-virtual {p3, v0}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v1

    invoke-virtual {p0, v1}, LaJ/p;->c(LaJ/H;)I

    move-result v1

    if-ge v1, p2, :cond_2c

    :cond_27
    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    move-result-object v0

    goto :goto_d

    :cond_2c
    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/HashSet;Ljava/util/HashSet;I)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v1, v2}, Las/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v2, v3}, Las/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v0, v3, v4

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/16 v0, 0x257

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_6f
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8a

    const/16 v1, 0x258

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_8a
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a3

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    const/16 v0, 0x25a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_a3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v0, v1, v4

    aput-object v2, v1, v6

    const/16 v0, 0x259

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method private a(LaJ/B;LaJ/Y;)V
    .registers 11

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v2, "Map info"

    invoke-interface {v0, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_88

    :try_start_14
    invoke-static {v2}, Lak/k;->a([B)Ljava/io/DataInput;

    move-result-object v5

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v2, v6, :cond_83

    invoke-static {v5}, LaJ/B;->a(Ljava/io/DataInput;)LaJ/B;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_50

    move-result-object v4

    :try_start_22
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_7e

    move-result v2

    :try_start_26
    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_81

    move-result v0

    move-object v5, v4

    move v4, v2

    move v2, v3

    :goto_2d
    move v7, v0

    move v0, v2

    move v2, v7

    :goto_30
    if-eqz v0, :cond_75

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_6b

    move v0, v3

    :goto_37
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_73

    :goto_3b
    new-instance v1, LaJ/H;

    invoke-static {v5}, LaJ/p;->g(LaJ/B;)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    invoke-direct {v1, v5, v2, v0, v3}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    invoke-virtual {p0, v1}, LaJ/p;->a(LaJ/H;)V

    :goto_4f
    return-void

    :catch_50
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    move v2, v1

    :goto_54
    const-string v5, "MAP"

    invoke-static {v5, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v5, "Map info"

    invoke-interface {v0, v5}, Lak/m;->b(Ljava/lang/String;)Z

    move v0, v1

    move-object v5, v4

    move v4, v2

    move v2, v1

    goto :goto_30

    :cond_6b
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_71

    move v0, v6

    goto :goto_37

    :cond_71
    move v0, v1

    goto :goto_37

    :cond_73
    move v3, v1

    goto :goto_3b

    :cond_75
    new-instance v0, LaJ/H;

    invoke-direct {v0, p1, p2, v1}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    invoke-virtual {p0, v0}, LaJ/p;->a(LaJ/H;)V

    goto :goto_4f

    :catch_7e
    move-exception v0

    move v2, v1

    goto :goto_54

    :catch_81
    move-exception v0

    goto :goto_54

    :cond_83
    move v2, v1

    move v4, v1

    move-object v5, v0

    move v0, v1

    goto :goto_2d

    :cond_88
    move v2, v1

    move v4, v1

    move-object v5, v0

    move v0, v1

    goto :goto_30
.end method

.method private a(LaJ/B;LaJ/Y;IILandroid/graphics/Point;)V
    .registers 9

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1, p2}, LaJ/B;->a(LaJ/Y;)I

    move-result v0

    sub-int/2addr v0, p3

    iput v0, p5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, LaJ/Y;->b()I

    move-result v0

    iget v1, p5, Landroid/graphics/Point;->x:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_47

    iget v1, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    :cond_1a
    :goto_1a
    invoke-virtual {p1, p2}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    sub-int/2addr v0, p4

    iput v0, p5, Landroid/graphics/Point;->y:I

    iget-object v0, p0, LaJ/p;->B:LaJ/r;

    if-eqz v0, :cond_2

    iget v0, p5, Landroid/graphics/Point;->x:I

    iget v1, p0, LaJ/p;->j:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    iget v0, p5, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/p;->k:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->y:I

    iget-object v0, p0, LaJ/p;->B:LaJ/r;

    invoke-interface {v0, p5}, LaJ/r;->a(Landroid/graphics/Point;)V

    iget v0, p5, Landroid/graphics/Point;->x:I

    iget v1, p0, LaJ/p;->j:I

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    iget v0, p5, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/p;->k:I

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_47
    iget v1, p5, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_1a

    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int v0, v1, v0

    iput v0, p5, Landroid/graphics/Point;->x:I

    goto :goto_1a
.end method

.method private a(LaJ/I;)V
    .registers 6

    invoke-virtual {p1}, LaJ/I;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    invoke-virtual {p1}, LaJ/I;->h()J

    move-result-wide v0

    iget-wide v2, p0, LaJ/p;->y:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, LaJ/p;->y:J

    :cond_13
    return-void
.end method

.method private a(ZZ)V
    .registers 7

    iget-object v0, p0, LaJ/p;->r:LaJ/P;

    iget-object v1, p0, LaJ/p;->s:LaJ/P;

    iget v2, p0, LaJ/p;->l:I

    iget v3, p0, LaJ/p;->m:I

    invoke-virtual {p0, v2, v3}, LaJ/p;->a(II)LaJ/P;

    move-result-object v2

    iput-object v2, p0, LaJ/p;->r:LaJ/P;

    iget v2, p0, LaJ/p;->n:I

    iget v3, p0, LaJ/p;->o:I

    invoke-virtual {p0, v2, v3}, LaJ/p;->a(II)LaJ/P;

    move-result-object v2

    iput-object v2, p0, LaJ/p;->s:LaJ/P;

    if-nez p1, :cond_24

    if-eqz v0, :cond_24

    iget-object v2, p0, LaJ/p;->r:LaJ/P;

    invoke-virtual {v0, v2}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_24
    invoke-direct {p0}, LaJ/p;->u()V

    :cond_27
    if-nez p2, :cond_33

    if-eqz v1, :cond_33

    iget-object v0, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v1, v0}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_33
    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/p;->D:Z

    :cond_3b
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 4

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_12

    aget-object v1, p0, v0

    if-eqz v1, :cond_f

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method private static a(J)Z
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(LaJ/P;IILah/e;IIZZZJJ)Z
    .registers 27

    mul-int/lit16 v2, p2, 0x100

    add-int v10, p5, v2

    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x100

    add-int v11, p6, v2

    invoke-virtual {p1}, LaJ/P;->j()Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p4, :cond_25

    const v2, 0xffffff

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lah/e;->a(I)V

    const/16 v2, 0x100

    const/16 v3, 0x100

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v2, v3}, Lah/e;->b(IIII)V

    const/4 v3, 0x1

    :cond_24
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24

    :cond_27
    iget v2, p0, LaJ/p;->f:I

    add-int/lit16 v3, v10, 0x80

    sub-int/2addr v2, v3

    iget v3, p0, LaJ/p;->g:I

    add-int/lit16 v4, v11, 0x80

    sub-int/2addr v3, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int v4, v2, v3

    invoke-virtual {p0, p1}, LaJ/p;->a(LaJ/P;)Z

    move-result v9

    if-eqz p7, :cond_b3

    if-nez v9, :cond_b3

    const/16 p7, 0x0

    move/from16 v5, p7

    :goto_41
    iget-object v2, p0, LaJ/p;->a:LaJ/D;

    if-eqz p9, :cond_af

    const/4 v6, 0x2

    :goto_46
    move-object v3, p1

    move-wide/from16 v7, p12

    invoke-virtual/range {v2 .. v8}, LaJ/D;->a(LaJ/P;IZIJ)LaJ/I;

    move-result-object v6

    if-eqz v9, :cond_69

    iget-object v2, p0, LaJ/p;->u:LaJ/Q;

    if-eqz v2, :cond_69

    if-eqz p9, :cond_69

    iget-object v2, p0, LaJ/p;->u:LaJ/Q;

    invoke-interface {v2, v6, v5}, LaJ/Q;->a(LaJ/I;Z)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v6}, LaJ/I;->t()Z

    move-result v2

    if-eqz v2, :cond_69

    iget v2, p0, LaJ/p;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LaJ/p;->C:I

    :cond_69
    const/4 v2, 0x0

    if-eqz p4, :cond_b1

    move-object/from16 v7, p4

    move-wide/from16 v8, p12

    move/from16 v12, p8

    invoke-virtual/range {v6 .. v12}, LaJ/I;->a(Lah/e;JIIZ)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget-wide v3, p0, LaJ/p;->z:J

    move-wide/from16 v0, p10

    invoke-virtual {v6, v0, v1, v3, v4}, LaJ/I;->a(JJ)V

    invoke-virtual {v6}, LaJ/I;->i()I

    move-result v3

    if-lez v3, :cond_b1

    invoke-direct {p0, v6}, LaJ/p;->a(LaJ/I;)V

    invoke-direct {p0, v6}, LaJ/p;->b(LaJ/I;)V

    const/4 v2, 0x1

    move v3, v2

    :goto_8d
    iget-object v2, p0, LaJ/p;->a:LaJ/D;

    move-wide/from16 v0, p12

    invoke-virtual {v2, p1, v5, v0, v1}, LaJ/D;->a(LaJ/P;ZJ)Ljava/util/Vector;

    move-result-object v5

    if-eqz p4, :cond_24

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_9e
    if-ltz v4, :cond_24

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lah/f;

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v10, v11}, Lah/e;->a(Lah/f;II)V

    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_9e

    :cond_af
    const/4 v6, 0x1

    goto :goto_46

    :cond_b1
    move v3, v2

    goto :goto_8d

    :cond_b3
    move/from16 v5, p7

    goto :goto_41
.end method

.method private a(Lah/e;ZZ)Z
    .registers 26

    move-object/from16 v0, p0

    iget v1, v0, LaJ/p;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/p;->r:LaJ/P;

    invoke-virtual {v2}, LaJ/P;->f()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v3}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/B;->a(LaJ/Y;)I

    move-result v2

    sub-int v6, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, LaJ/p;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/p;->r:LaJ/P;

    invoke-virtual {v2}, LaJ/P;->g()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v3}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/B;->b(LaJ/Y;)I

    move-result v2

    sub-int v7, v1, v2

    :goto_46
    if-lez v6, :cond_56

    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->b()I

    move-result v1

    sub-int/2addr v6, v1

    goto :goto_46

    :cond_56
    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->u:LaJ/Q;

    if-eqz v1, :cond_63

    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->u:LaJ/Q;

    invoke-interface {v1}, LaJ/Q;->a()V

    :cond_63
    const/4 v2, 0x0

    const/4 v15, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v11

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v17

    const/4 v1, 0x1

    if-nez p1, :cond_79

    const/4 v1, 0x0

    :cond_79
    const-wide v3, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v3, v0, LaJ/p;->y:J

    move-object/from16 v0, p0

    iget v0, v0, LaJ/p;->l:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, LaJ/p;->m:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LaJ/p;->t:[LaJ/P;

    move-object/from16 v21, v0

    mul-int v3, v19, v20

    move-object/from16 v0, v21

    array-length v4, v0

    if-eq v3, v4, :cond_9d

    const/4 v1, 0x0

    :goto_9c
    return v1

    :cond_9d
    const/4 v3, 0x0

    move v10, v1

    move v1, v15

    :goto_a0
    move/from16 v0, v19

    if-ge v3, v0, :cond_d8

    const/4 v4, 0x0

    move v15, v1

    move v1, v2

    :goto_a7
    move/from16 v0, v20

    if-ge v4, v0, :cond_d3

    int-to-long v8, v1

    add-long v13, v17, v8

    add-int/lit8 v16, v1, 0x1

    aget-object v2, v21, v1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v14}, LaJ/p;->a(LaJ/P;IILah/e;IIZZZJJ)Z

    move-result v1

    if-eqz v1, :cond_d1

    const/4 v1, 0x1

    :goto_c1
    add-int/2addr v1, v15

    if-eqz v10, :cond_cb

    invoke-static {v11, v12}, LaJ/p;->a(J)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/4 v10, 0x0

    :cond_cb
    add-int/lit8 v4, v4, 0x1

    move v15, v1

    move/from16 v1, v16

    goto :goto_a7

    :cond_d1
    const/4 v1, 0x0

    goto :goto_c1

    :cond_d3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v1, v15

    goto :goto_a0

    :cond_d8
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LaJ/p;->d(I)V

    move-object/from16 v0, p0

    iget v2, v0, LaJ/p;->C:I

    const/16 v3, 0x30

    if-le v2, v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v2}, LaJ/D;->f()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LaJ/p;->C:I

    :cond_f1
    if-eqz p1, :cond_f8

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LaJ/p;->e(I)V

    :cond_f8
    if-eqz p2, :cond_101

    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v1}, LaJ/D;->j()Z

    :cond_101
    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v1}, LaJ/D;->k()V

    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->u:LaJ/Q;

    if-eqz v1, :cond_115

    move-object/from16 v0, p0

    iget-object v1, v0, LaJ/p;->u:LaJ/Q;

    invoke-interface {v1}, LaJ/Q;->b()V

    :cond_115
    invoke-static {}, LaJ/f;->f()V

    move-object/from16 v0, p0

    iput-wide v11, v0, LaJ/p;->z:J

    invoke-static {v11, v12}, LaJ/p;->a(J)Z

    move-result v1

    if-nez v1, :cond_125

    const/4 v1, 0x1

    goto/16 :goto_9c

    :cond_125
    const/4 v1, 0x0

    goto/16 :goto_9c
.end method

.method private b(LaJ/I;)V
    .registers 9

    invoke-virtual {p1}, LaJ/I;->u()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, LaJ/I;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    const/16 v2, 0x16

    const-string v3, "pc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, LaJ/I;->h()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_38
    return-void
.end method

.method private b(LaJ/P;)Z
    .registers 5

    invoke-virtual {p1}, LaJ/P;->j()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, LaJ/P;->d()I

    move-result v0

    iget-object v1, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v1}, LaJ/P;->d()I

    move-result v1

    if-lt v0, v1, :cond_23

    invoke-virtual {p1}, LaJ/P;->d()I

    move-result v0

    iget-object v1, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v1}, LaJ/P;->d()I

    move-result v1

    iget v2, p0, LaJ/p;->o:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private c(LaJ/P;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, LaJ/P;->e()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->b()I

    move-result v2

    div-int/lit16 v3, v2, 0x100

    iget v2, p0, LaJ/p;->n:I

    if-lt v2, v3, :cond_14

    move v2, v0

    :goto_11
    if-eqz v2, :cond_16

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v2, v1

    goto :goto_11

    :cond_16
    iget-object v2, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v2}, LaJ/P;->c()I

    move-result v2

    iget v4, p0, LaJ/p;->n:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v2, v3

    iget-object v3, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v3}, LaJ/P;->c()I

    move-result v3

    if-ge v3, v2, :cond_3e

    invoke-virtual {p1}, LaJ/P;->c()I

    move-result v3

    iget-object v4, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v4}, LaJ/P;->c()I

    move-result v4

    if-lt v3, v4, :cond_3c

    invoke-virtual {p1}, LaJ/P;->c()I

    move-result v3

    if-le v3, v2, :cond_13

    :cond_3c
    move v0, v1

    goto :goto_13

    :cond_3e
    invoke-virtual {p1}, LaJ/P;->c()I

    move-result v3

    iget-object v4, p0, LaJ/p;->s:LaJ/P;

    invoke-virtual {v4}, LaJ/P;->c()I

    move-result v4

    if-ge v3, v4, :cond_50

    invoke-virtual {p1}, LaJ/P;->c()I

    move-result v3

    if-gt v3, v2, :cond_51

    :cond_50
    move v1, v0

    :cond_51
    move v0, v1

    goto :goto_13
.end method

.method private d(I)V
    .registers 11

    const/4 v1, 0x0

    iget-object v3, p0, LaJ/p;->t:[LaJ/P;

    iget v0, p0, LaJ/p;->l:I

    iget v2, p0, LaJ/p;->m:I

    mul-int/2addr v0, v2

    array-length v2, v3

    if-eq v0, v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, LaJ/p;->E:LaJ/w;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, LaJ/p;->D:Z

    if-eqz v0, :cond_b

    iget v0, p0, LaJ/p;->n:I

    iget v2, p0, LaJ/p;->o:I

    mul-int/2addr v0, v2

    if-lt p1, v0, :cond_b

    iput-boolean v1, p0, LaJ/p;->D:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_2a
    array-length v6, v3

    if-ge v0, v6, :cond_5b

    aget-object v6, v3, v0

    invoke-virtual {p0, v6}, LaJ/p;->a(LaJ/P;)Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, p0, LaJ/p;->a:LaJ/D;

    aget-object v7, v3, v0

    const v8, 0x7a1200

    invoke-virtual {v6, v7, v8, v1, v1}, LaJ/D;->a(LaJ/P;IZZ)LaJ/I;

    move-result-object v6

    invoke-virtual {v6}, LaJ/I;->q()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, LaJ/p;->a([Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v6}, LaJ/I;->r()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, LaJ/p;->a([Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v6}, LaJ/I;->s()I

    move-result v7

    if-le v7, v2, :cond_58

    invoke-virtual {v6}, LaJ/I;->s()I

    move-result v2

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_5b
    invoke-direct {p0, v4, v5, v2}, LaJ/p;->a(Ljava/util/HashSet;Ljava/util/HashSet;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LaJ/p;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v0, p0, LaJ/p;->F:Ljava/lang/String;

    iget-object v1, p0, LaJ/p;->E:LaJ/w;

    invoke-interface {v1, v0}, LaJ/w;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private e(I)V
    .registers 9

    const/16 v6, 0x16

    iget-wide v0, p0, LaJ/p;->y:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iput p1, p0, LaJ/p;->w:I

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, LaJ/p;->k()B

    move-result v0

    packed-switch v0, :pswitch_data_a8

    :pswitch_17
    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_f

    goto :goto_f

    :pswitch_1c
    const-string v0, "s"

    :goto_1e
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, LaJ/p;->y:J

    sub-long v2, v1, v3

    iget v1, p0, LaJ/p;->w:I

    if-nez v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LaJ/p;->x:Z

    :cond_5e
    iget v1, p0, LaJ/p;->w:I

    if-ge v1, p1, :cond_96

    iget v1, p0, LaJ/p;->l:I

    iget v4, p0, LaJ/p;->m:I

    mul-int/2addr v1, v4

    if-ne p1, v1, :cond_96

    iget-boolean v1, p0, LaJ/p;->x:Z

    if-eqz v1, :cond_a5

    const-string v1, "tc"

    :goto_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_96
    iput p1, p0, LaJ/p;->w:I

    goto/16 :goto_f

    :pswitch_9a
    const-string v0, "h"

    goto :goto_1e

    :pswitch_9d
    const-string v0, "n"

    goto/16 :goto_1e

    :pswitch_a1
    const-string v0, "m"

    goto/16 :goto_1e

    :cond_a5
    const-string v1, "tp"

    goto :goto_6f

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_a1
        :pswitch_1c
        :pswitch_17
        :pswitch_17
        :pswitch_9a
        :pswitch_9d
    .end packed-switch
.end method

.method public static g(LaJ/B;)I
    .registers 3

    const/16 v0, 0xf

    invoke-static {p0}, LaJ/p;->i(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, LaJ/p;->h(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    goto :goto_8
.end method

.method public static h(LaJ/B;)Z
    .registers 4

    if-eqz p0, :cond_20

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    const v2, 0x16c6e44

    if-le v0, v2, :cond_20

    const v2, 0x2bf01d6

    if-ge v0, v2, :cond_20

    const v0, 0x7604113

    if-le v1, v0, :cond_20

    const v0, 0x8920c07

    if-ge v1, v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static i(LaJ/B;)Z
    .registers 8

    const v6, 0x7cfb66a

    const v5, 0x7ae0f28

    const v4, 0x7a8b1de

    const v3, 0x24e6895

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    const v2, 0x1f75f9c

    if-le v0, v2, :cond_24

    if-ge v0, v3, :cond_24

    const v2, 0x76d5478

    if-le v1, v2, :cond_24

    if-lt v1, v4, :cond_48

    :cond_24
    const v2, 0x20de3a2

    if-le v0, v2, :cond_2f

    if-ge v0, v3, :cond_2f

    if-le v1, v4, :cond_2f

    if-lt v1, v5, :cond_48

    :cond_2f
    const v2, 0x2167b23

    if-le v0, v2, :cond_3a

    if-ge v0, v3, :cond_3a

    if-le v1, v5, :cond_3a

    if-lt v1, v6, :cond_48

    :cond_3a
    const v2, 0x234ffbd

    if-le v0, v2, :cond_4a

    if-ge v0, v3, :cond_4a

    if-le v1, v6, :cond_4a

    const v0, 0x7de3697

    if-ge v1, v0, :cond_4a

    :cond_48
    const/4 v0, 0x1

    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private u()V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, LaJ/p;->t:[LaJ/P;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, LaJ/p;->k()B

    move-result v5

    move v0, v1

    move v2, v1

    :goto_b
    iget v3, p0, LaJ/p;->l:I

    if-ge v0, v3, :cond_3a

    move v3, v1

    :goto_10
    iget v4, p0, LaJ/p;->m:I

    if-ge v3, v4, :cond_37

    iget-object v6, p0, LaJ/p;->t:[LaJ/P;

    add-int/lit8 v4, v2, 0x1

    iget-object v7, p0, LaJ/p;->r:LaJ/P;

    invoke-virtual {v7}, LaJ/P;->c()I

    move-result v7

    add-int/2addr v7, v0

    iget-object v8, p0, LaJ/p;->r:LaJ/P;

    invoke-virtual {v8}, LaJ/P;->d()I

    move-result v8

    add-int/2addr v8, v3

    iget-object v9, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v9}, LaJ/H;->b()LaJ/Y;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_10

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private v()V
    .registers 3

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/B;->a(LaJ/Y;)I

    move-result v0

    iput v0, p0, LaJ/p;->p:I

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    iput v0, p0, LaJ/p;->q:I

    return-void
.end method

.method private w()B
    .registers 2

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x2

    :goto_a
    return v0

    :pswitch_b
    invoke-static {}, LaJ/P;->a()B

    move-result v0

    goto :goto_a

    :pswitch_10
    const/4 v0, 0x7

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a(LaJ/B;II)LaJ/B;
    .registers 5

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, LaJ/p;->a(LaJ/B;LaJ/Y;II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public a(LaJ/B;LaJ/Y;II)LaJ/B;
    .registers 7

    iget v0, p0, LaJ/p;->j:I

    sub-int v0, p3, v0

    iget v1, p0, LaJ/p;->k:I

    sub-int v1, p4, v1

    invoke-virtual {p1, v0, v1, p2}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public a()LaJ/D;
    .registers 2

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    return-object v0
.end method

.method a(II)LaJ/P;
    .registers 13

    const/16 v9, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget-object v3, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v3}, LaJ/H;->b()LaJ/Y;

    move-result-object v5

    invoke-static {v0, v5}, LaJ/P;->a(LaJ/B;LaJ/Y;)I

    move-result v3

    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v3, v4

    invoke-static {v0, v5}, LaJ/P;->b(LaJ/B;LaJ/Y;)I

    move-result v4

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v4, v6

    invoke-virtual {p0}, LaJ/p;->k()B

    move-result v6

    invoke-static {v6, v0, v5}, LaJ/P;->a(BLaJ/B;LaJ/Y;)LaJ/P;

    move-result-object v6

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_52

    move v0, v1

    :goto_2b
    iget v7, p0, LaJ/p;->p:I

    invoke-virtual {v6}, LaJ/P;->f()I

    move-result v8

    sub-int/2addr v7, v8

    if-eqz v0, :cond_58

    if-le v7, v9, :cond_58

    add-int/lit8 v0, v3, 0x1

    :goto_38
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_54

    :goto_3c
    iget v2, p0, LaJ/p;->q:I

    invoke-virtual {v6}, LaJ/P;->g()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v1, :cond_56

    if-le v2, v9, :cond_56

    add-int/lit8 v1, v4, 0x1

    :goto_49
    invoke-virtual {p0}, LaJ/p;->k()B

    move-result v2

    invoke-static {v2, v0, v1, v5}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v0

    return-object v0

    :cond_52
    move v0, v2

    goto :goto_2b

    :cond_54
    move v1, v2

    goto :goto_3c

    :cond_56
    move v1, v4

    goto :goto_49

    :cond_58
    move v0, v3

    goto :goto_38
.end method

.method public declared-synchronized a([LaJ/B;LaJ/B;)LaJ/Y;
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_4
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_11

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    aget-object v1, p1, v1

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v5

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v1

    move v7, v0

    move v4, v1

    move v6, v5

    :goto_22
    array-length v0, p1

    if-ge v7, v0, :cond_43

    aget-object v0, p1, v7

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v2

    aget-object v0, p1, v7

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    if-ge v2, v6, :cond_34

    move v6, v2

    :cond_34
    if-le v2, v5, :cond_82

    move v3, v2

    :goto_37
    if-ge v0, v4, :cond_80

    move v2, v0

    :goto_3a
    if-le v0, v1, :cond_7e

    :goto_3c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v4, v2

    move v5, v3

    move v1, v0

    goto :goto_22

    :cond_43
    sub-int v3, v5, v6

    sub-int v2, v1, v4

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    if-eqz p2, :cond_7b

    add-int v0, v5, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, LaJ/B;->c()I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    add-int v0, v1, v4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, LaJ/B;->e()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0, p2}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    move v2, v3

    :goto_75
    invoke-direct {p0, v2, v1, v0}, LaJ/p;->a(IILaJ/H;)LaJ/Y;
    :try_end_78
    .catchall {:try_start_12 .. :try_end_78} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_7b
    move v1, v2

    move v2, v3

    goto :goto_75

    :cond_7e
    move v0, v1

    goto :goto_3c

    :cond_80
    move v2, v4

    goto :goto_3a

    :cond_82
    move v3, v5

    goto :goto_37
.end method

.method public a(LaJ/B;)Lt/y;
    .registers 3

    iget-object v0, p0, LaJ/p;->G:Lt/x;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaJ/p;->G:Lt/x;

    invoke-interface {v0, p1}, Lt/x;->a(LaJ/B;)Lt/y;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(IIII)V
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, LaJ/p;->d:I

    if-ne p1, v0, :cond_13

    iget v0, p0, LaJ/p;->c:I

    if-ne p2, v0, :cond_13

    iget v0, p0, LaJ/p;->i:I

    if-ne p3, v0, :cond_13

    iget v0, p0, LaJ/p;->h:I

    if-ne p4, v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iput p2, p0, LaJ/p;->c:I

    iput p1, p0, LaJ/p;->d:I

    iget v0, p0, LaJ/p;->d:I

    iget v3, p0, LaJ/p;->d:I

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x4

    iget v3, p0, LaJ/p;->c:I

    iget v4, p0, LaJ/p;->c:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, LaJ/p;->e:I

    iget v0, p0, LaJ/p;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LaJ/p;->f:I

    iget v0, p0, LaJ/p;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LaJ/p;->g:I

    iput p4, p0, LaJ/p;->h:I

    iput p3, p0, LaJ/p;->i:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, LaJ/p;->j:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p0, LaJ/p;->k:I

    iget v0, p0, LaJ/p;->l:I

    iget v3, p0, LaJ/p;->m:I

    iget v4, p0, LaJ/p;->n:I

    iget v5, p0, LaJ/p;->o:I

    iget v6, p0, LaJ/p;->d:I

    invoke-static {v6}, LaJ/p;->a(I)I

    move-result v6

    iput v6, p0, LaJ/p;->l:I

    iget v6, p0, LaJ/p;->c:I

    invoke-static {v6}, LaJ/p;->a(I)I

    move-result v6

    iput v6, p0, LaJ/p;->m:I

    invoke-static {p3}, LaJ/p;->a(I)I

    move-result v6

    iput v6, p0, LaJ/p;->n:I

    invoke-static {p4}, LaJ/p;->a(I)I

    move-result v6

    iput v6, p0, LaJ/p;->o:I

    iget-object v6, p0, LaJ/p;->t:[LaJ/P;

    if-eqz v6, :cond_77

    mul-int v6, v0, v3

    iget v7, p0, LaJ/p;->l:I

    iget v8, p0, LaJ/p;->m:I

    mul-int/2addr v7, v8

    if-eq v6, v7, :cond_80

    :cond_77
    iget v6, p0, LaJ/p;->l:I

    iget v7, p0, LaJ/p;->m:I

    mul-int/2addr v6, v7

    new-array v6, v6, [LaJ/P;

    iput-object v6, p0, LaJ/p;->t:[LaJ/P;

    :cond_80
    iget v6, p0, LaJ/p;->l:I

    if-ne v0, v6, :cond_88

    iget v0, p0, LaJ/p;->m:I

    if-eq v3, v0, :cond_9f

    :cond_88
    move v0, v2

    :goto_89
    iget v3, p0, LaJ/p;->n:I

    if-ne v4, v3, :cond_91

    iget v3, p0, LaJ/p;->o:I

    if-eq v5, v3, :cond_a1

    :cond_91
    :goto_91
    invoke-direct {p0, v0, v2}, LaJ/p;->a(ZZ)V

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->o()V

    iput v1, p0, LaJ/p;->w:I

    iput-boolean v1, p0, LaJ/p;->x:Z

    goto/16 :goto_12

    :cond_9f
    move v0, v1

    goto :goto_89

    :cond_a1
    move v2, v1

    goto :goto_91
.end method

.method public a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, LaJ/p;->b(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V

    iget v0, p4, Landroid/graphics/Point;->x:I

    iget v1, p0, LaJ/p;->j:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/p;->k:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public a(LaJ/B;Landroid/graphics/Point;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, LaJ/p;->c(LaJ/B;Landroid/graphics/Point;)V

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, LaJ/p;->f:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/p;->g:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public declared-synchronized a(LaJ/H;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_5

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iput-object p1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {p0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->f(LaJ/B;)I

    move-result v0

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    if-le v1, v0, :cond_23

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    invoke-virtual {p1, v0}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v0

    iput-object v0, p0, LaJ/p;->b:LaJ/H;

    :cond_23
    invoke-direct {p0}, LaJ/p;->v()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/p;->a(ZZ)V

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->o()V

    const/4 v0, 0x0

    iput v0, p0, LaJ/p;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/p;->x:Z
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    goto :goto_3

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaJ/Q;)V
    .registers 2

    iput-object p1, p0, LaJ/p;->u:LaJ/Q;

    return-void
.end method

.method public declared-synchronized a(LaJ/Y;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0, p1}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->a(LaJ/H;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaJ/k;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->a(LaJ/k;)V

    return-void
.end method

.method public a(LaJ/m;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->a(LaJ/m;)V

    return-void
.end method

.method public a(LaJ/q;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->A:LaJ/t;

    invoke-virtual {v0, p1}, LaJ/t;->a(LaJ/q;)V

    return-void
.end method

.method public a(LaJ/r;)V
    .registers 2

    iput-object p1, p0, LaJ/p;->B:LaJ/r;

    return-void
.end method

.method public a(LaJ/w;)V
    .registers 2

    iput-object p1, p0, LaJ/p;->E:LaJ/w;

    return-void
.end method

.method public a(Laq/e;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->a(Laq/e;)V

    return-void
.end method

.method public a(Lt/x;)V
    .registers 2

    iput-object p1, p0, LaJ/p;->G:Lt/x;

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0}, LaJ/p;->f()V

    :cond_5
    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->c(Z)V

    return-void
.end method

.method public a(LaJ/B;Z)Z
    .registers 4

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LaJ/p;->a(LaJ/B;ZLaJ/Y;)Z

    move-result v0

    return v0
.end method

.method public a(LaJ/B;ZLaJ/Y;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {p0}, LaJ/p;->k()B

    move-result v2

    invoke-static {v2, p1, p3}, LaJ/P;->a(BLaJ/B;LaJ/Y;)LaJ/P;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0, p2}, LaJ/D;->a(LaJ/P;IZZ)LaJ/I;

    move-result-object v1

    if-eqz p2, :cond_17

    invoke-virtual {v1}, LaJ/I;->m()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_17
    invoke-virtual {v1}, LaJ/I;->e()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public a(LaJ/P;)Z
    .registers 3

    invoke-direct {p0, p1}, LaJ/p;->b(LaJ/P;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, LaJ/p;->c(LaJ/P;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lah/e;ZZZZ)Z
    .registers 8

    iget v0, p0, LaJ/p;->c:I

    if-eqz v0, :cond_8

    iget v0, p0, LaJ/p;->d:I

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map has zero size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-eqz p1, :cond_17

    iget-object v0, p0, LaJ/p;->A:LaJ/t;

    invoke-virtual {v0, p3, p4, p0}, LaJ/t;->a(ZZLaJ/p;)V

    :cond_17
    invoke-direct {p0, p1, p2, p5}, LaJ/p;->a(Lah/e;ZZ)Z

    move-result v0

    return v0
.end method

.method public b(LaJ/H;)I
    .registers 7

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    iget v2, p0, LaJ/p;->j:I

    iget v3, p0, LaJ/p;->k:I

    invoke-virtual {v0, v2, v3, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v2

    iget v3, p0, LaJ/p;->j:I

    neg-int v3, v3

    iget v4, p0, LaJ/p;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public b(II)LaJ/B;
    .registers 4

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, LaJ/p;->a(LaJ/B;II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public b()LaJ/H;
    .registers 2

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    invoke-virtual {p0}, LaJ/p;->t()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    :cond_9
    invoke-static {p1}, LaJ/Y;->c(I)V

    :cond_c
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0, p1}, LaJ/H;->a(I)LaJ/H;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->a(LaJ/H;)V

    return-void
.end method

.method public declared-synchronized b(LaJ/B;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0, p1}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->a(LaJ/H;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V
    .registers 11

    invoke-virtual {p1, p2}, LaJ/B;->a(LaJ/Y;)I

    move-result v3

    invoke-virtual {p1, p2}, LaJ/B;->b(LaJ/Y;)I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LaJ/p;->a(LaJ/B;LaJ/Y;IILandroid/graphics/Point;)V

    return-void
.end method

.method public b(LaJ/B;Landroid/graphics/Point;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, LaJ/p;->c(LaJ/B;Landroid/graphics/Point;)V

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, LaJ/p;->j:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/p;->k:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public b(LaJ/k;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->b(LaJ/k;)V

    return-void
.end method

.method public b(Laq/e;)V
    .registers 3

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0, p1}, LaJ/D;->b(Laq/e;)V

    return-void
.end method

.method public c(I)I
    .registers 3

    iget-object v0, p0, LaJ/p;->B:LaJ/r;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaJ/p;->B:LaJ/r;

    invoke-interface {v0, p1}, LaJ/r;->a(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/Y;->a(I)I

    move-result v0

    goto :goto_a
.end method

.method public c(LaJ/H;)I
    .registers 7

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    iget v2, p0, LaJ/p;->j:I

    iget v3, p0, LaJ/p;->k:I

    invoke-virtual {v0, v2, v3, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v2

    iget v3, p0, LaJ/p;->j:I

    neg-int v3, v3

    iget v4, p0, LaJ/p;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    sub-int v0, v1, v0

    if-gez v0, :cond_2a

    const v1, 0x15752a00

    add-int/2addr v0, v1

    :cond_2a
    return v0
.end method

.method public c()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public c(LaJ/B;)Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public declared-synchronized c(II)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->b(LaJ/B;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(LaJ/B;Landroid/graphics/Point;)V
    .registers 9

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v2

    iget v3, p0, LaJ/p;->p:I

    iget v4, p0, LaJ/p;->q:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LaJ/p;->a(LaJ/B;LaJ/Y;IILandroid/graphics/Point;)V

    return-void
.end method

.method public d()LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public d(LaJ/B;)Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, LaJ/p;->c(LaJ/B;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public d(II)V
    .registers 3

    invoke-virtual {p0, p1, p2, p1, p2}, LaJ/p;->a(IIII)V

    return-void
.end method

.method public e()I
    .registers 4

    invoke-virtual {p0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/p;->f(LaJ/B;)I

    move-result v0

    invoke-virtual {p0}, LaJ/p;->c()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    const/16 v2, 0x1388

    div-int/2addr v2, v0

    sub-int/2addr v0, v1

    mul-int/2addr v0, v2

    return v0
.end method

.method public declared-synchronized e(LaJ/B;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result-object v1

    :try_start_7
    invoke-virtual {p0, p1}, LaJ/p;->b(LaJ/B;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, LaJ/p;->a(Lah/e;ZZ)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    :try_start_10
    invoke-virtual {p0, v1}, LaJ/p;->b(LaJ/B;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    invoke-virtual {p0, v1}, LaJ/p;->b(LaJ/B;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(LaJ/B;)I
    .registers 4

    invoke-virtual {p0}, LaJ/p;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/16 v0, 0x10

    goto :goto_8

    :cond_15
    invoke-static {}, LaJ/I;->w()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1d
    add-int/lit8 v0, v0, 0x14

    goto :goto_8

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public declared-synchronized f()V
    .registers 6

    const/4 v0, 0x2

    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xe

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    invoke-static {v1, v3}, LaJ/B;->a(LaJ/B;Ljava/io/DataOutput;)V

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    iget-object v4, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v4}, LaJ/H;->e()Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v0, 0x1

    :cond_32
    :goto_32
    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->g()Z

    move-result v1

    if-eqz v1, :cond_3c

    or-int/lit8 v0, v0, 0x4

    :cond_3c
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "Map info"

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_63
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_50} :catch_5c

    :goto_50
    monitor-exit p0

    return-void

    :cond_52
    :try_start_52
    iget-object v4, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v4}, LaJ/H;->f()Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_63
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_5c

    move-result v4

    if-nez v4, :cond_32

    move v0, v1

    goto :goto_32

    :catch_5c
    move-exception v0

    :try_start_5d
    const-string v1, "MAP"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_63

    goto :goto_50

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()[LaJ/P;
    .registers 2

    iget-object v0, p0, LaJ/p;->t:[LaJ/P;

    return-object v0
.end method

.method public h()V
    .registers 2

    iget-boolean v0, p0, LaJ/p;->v:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/p;->v:Z

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->p()V

    :cond_c
    return-void
.end method

.method public i()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, LaJ/p;->v:Z

    if-nez v0, :cond_11

    iput-boolean v1, p0, LaJ/p;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/p;->F:Ljava/lang/String;

    iput-boolean v1, p0, LaJ/p;->D:Z

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->q()V

    :cond_11
    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, LaJ/p;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->r()V

    return-void
.end method

.method public k()B
    .registers 3

    invoke-direct {p0}, LaJ/p;->w()B

    move-result v0

    iget-object v1, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    :cond_f
    return v0
.end method

.method public declared-synchronized l()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {p0, v0}, LaJ/p;->b(LaJ/H;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {p0, v0}, LaJ/p;->c(LaJ/H;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, LaJ/p;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->e()Z

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, LaJ/p;->c:I

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, LaJ/p;->d:I

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, LaJ/p;->h:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, LaJ/p;->i:I

    return v0
.end method

.method public s()Lam/b;
    .registers 5

    invoke-virtual {p0}, LaJ/p;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, LaJ/p;->l()I

    move-result v1

    invoke-virtual {p0}, LaJ/p;->m()I

    move-result v2

    invoke-virtual {p0}, LaJ/p;->c()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
