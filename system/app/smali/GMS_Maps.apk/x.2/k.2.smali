.class public abstract Lx/k;
.super Lz/d;

# interfaces
.implements Lat/p;
.implements Lx/Z;
.implements Lx/ay;


# instance fields
.field private a:Lx/av;

.field protected b:Lx/o;

.field volatile c:I

.field protected d:Laf/a;

.field volatile e:I

.field volatile f:I

.field private g:Lx/x;

.field private volatile h:Z

.field private final i:Z

.field private j:I

.field private k:Ljava/util/Locale;

.field private volatile l:Lx/p;

.field private final m:Lat/h;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Z

.field private final q:Ljava/util/List;

.field private final r:Lz/g;

.field private final s:Ljava/util/Map;

.field private final t:I

.field private u:Z

.field private final v:Ljava/io/File;

.field private w:Lcom/google/googlenav/bv;

.field private final x:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lat/h;Ljava/lang/String;Lx/av;Lx/x;IZILjava/util/Locale;Ljava/io/File;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lz/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lx/k;->q:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lx/k;->s:Ljava/util/Map;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lx/k;->d:Laf/a;

    iput-boolean v1, p0, Lx/k;->u:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    iput-object p3, p0, Lx/k;->a:Lx/av;

    iput-object p4, p0, Lx/k;->g:Lx/x;

    iput-boolean v1, p0, Lx/k;->h:Z

    iput p5, p0, Lx/k;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lx/k;->j:I

    iput-boolean p6, p0, Lx/k;->i:Z

    iput-object p8, p0, Lx/k;->k:Ljava/util/Locale;

    iput-object p9, p0, Lx/k;->v:Ljava/io/File;

    iput-object p1, p0, Lx/k;->m:Lat/h;

    invoke-virtual {p0}, Lx/k;->n()Lx/o;

    move-result-object v0

    iput-object v0, p0, Lx/k;->b:Lx/o;

    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-static {v0, p0}, Lx/o;->a(Lx/o;Lx/k;)Lx/k;

    new-instance v0, Lx/l;

    invoke-direct {v0, p0, p7}, Lx/l;-><init>(Lx/k;I)V

    iput-object v0, p0, Lx/k;->r:Lz/g;

    return-void
.end method

.method private a(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lx/x;->a(I)Z

    move-result v1

    if-nez v1, :cond_f

    iput-object v2, p0, Lx/k;->g:Lx/x;

    :cond_f
    iput p1, p0, Lx/k;->j:I

    iget-boolean v1, p0, Lx/k;->i:Z

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lx/x;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    iput-object v2, p0, Lx/k;->g:Lx/x;

    :cond_1f
    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0}, Lx/av;->a()Z

    :cond_28
    invoke-direct {p0}, Lx/k;->b()V

    :cond_2b
    return-void
.end method

.method private a(II)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v0}, Lat/h;->u()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x8

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    const/4 v0, -0x1

    if-eq p1, v0, :cond_75

    move v0, v1

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lt/ao;->p()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6d

    const-string v6, "u"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    invoke-static {v7}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1d

    :cond_75
    move v0, v2

    goto :goto_22
.end method

.method private a(IIIIII)V
    .registers 19

    iget-object v1, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v1}, Lat/h;->u()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Ln/a;->a()Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lt/ao;->p()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x6d

    const-string v9, "b"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    invoke-static {v10}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1b
.end method

.method private a(Lt/ae;Z)V
    .registers 9

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lx/k;->f()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v5, :cond_43

    invoke-interface {p1}, Lt/ae;->e()I

    move-result v2

    if-eq v1, v2, :cond_43

    move v0, v4

    :cond_10
    :goto_10
    if-eqz v0, :cond_42

    new-instance v2, Lx/n;

    invoke-direct {v2, p0}, Lx/n;-><init>(Lx/k;)V

    new-instance v0, Lx/r;

    invoke-interface {p1}, Lt/ae;->d()Lt/af;

    move-result-object v1

    sget-object v3, Lx/g;->b:Lx/g;

    invoke-direct/range {v0 .. v5}, Lx/r;-><init>(Lt/af;Lx/aw;Lx/g;ZI)V

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    iget-object v2, p0, Lx/k;->n:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->x()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Lt/ae;->d()Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lx/k;->a(II)V

    :cond_42
    return-void

    :cond_43
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->x()Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez p2, :cond_10

    iget-object v1, p0, Lx/k;->d:Laf/a;

    invoke-interface {p1, v1}, Lt/ae;->b(Laf/a;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Lt/ae;->h()I

    move-result v5

    move v0, v4

    goto :goto_10
.end method

.method static synthetic a(Lx/k;)V
    .registers 1

    invoke-direct {p0}, Lx/k;->c()V

    return-void
.end method

.method static synthetic a(Lx/k;Lt/af;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/k;->b(Lt/af;)V

    return-void
.end method

.method static synthetic a(Lx/k;Lx/o;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/k;->a(Lx/o;)V

    return-void
.end method

.method static synthetic a(Lx/k;Lx/r;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/k;->b(Lx/r;)V

    return-void
.end method

.method private a(Lx/o;)V
    .registers 18

    invoke-direct/range {p0 .. p0}, Lx/k;->r()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lx/k;->u:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lx/k;->u:Z

    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/k;->r:Lz/g;

    invoke-virtual {v1}, Lz/g;->g()I

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lx/k;->r:Lz/g;

    invoke-virtual {v1}, Lz/g;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/r;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lx/k;->b(Lx/r;)V

    goto :goto_e

    :cond_28
    invoke-virtual/range {p1 .. p1}, Lx/o;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lx/k;->f()I

    move-result v2

    if-eq v1, v2, :cond_3a

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lx/k;->a(I)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/k;->q:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    :cond_46
    :goto_46
    return-void

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lx/k;->m()Lx/x;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lx/o;->d()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_55
    invoke-virtual/range {p1 .. p1}, Lx/o;->d()I

    move-result v8

    if-ge v1, v8, :cond_12a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lx/o;->a(I)Lx/r;

    move-result-object v10

    invoke-virtual {v10}, Lx/r;->a()Lt/af;

    move-result-object v11

    invoke-virtual {v10}, Lx/r;->e()I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_6e

    add-int/lit8 v7, v7, 0x1

    :cond_6e
    move-object/from16 v0, p0

    iget-object v8, v0, Lx/k;->s:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v8, v0, Lx/k;->c:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Lx/k;->c:I

    :try_start_7f
    invoke-virtual {v10}, Lx/r;->c()Z

    move-result v8

    if-eqz v8, :cond_d2

    move-object/from16 v0, p0

    iget v8, v0, Lx/k;->f:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lx/k;->f:I

    :goto_8f
    const/4 v8, 0x0

    if-eqz v9, :cond_a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lx/o;->c(I)[B

    move-result-object v12

    if-eqz v12, :cond_a3

    array-length v8, v12

    new-array v8, v8, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v12

    invoke-static {v12, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a3
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lx/o;->b(I)Lt/ae;

    move-result-object v12

    if-eqz v12, :cond_105

    move-object/from16 v0, p0

    iget-object v13, v0, Lx/k;->a:Lx/av;

    if-eqz v13, :cond_be

    invoke-virtual {v10}, Lx/r;->c()Z

    move-result v13

    if-nez v13, :cond_be

    move-object/from16 v0, p0

    iget-object v13, v0, Lx/k;->a:Lx/av;

    invoke-interface {v13, v11, v12}, Lx/av;->a(Lt/af;Lt/ae;)V

    :cond_be
    if-eqz v9, :cond_c3

    invoke-interface {v9, v11, v12, v8}, Lx/x;->a(Lt/af;Lt/ae;[B)V

    :cond_c3
    const/4 v8, 0x0

    invoke-virtual {v10, v8, v12}, Lx/r;->a(ILt/ae;)V

    invoke-virtual {v10}, Lx/r;->c()Z

    move-result v8

    if-eqz v8, :cond_102

    add-int/lit8 v4, v4, 0x1

    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_d2
    move-object/from16 v0, p0

    iget v8, v0, Lx/k;->e:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lx/k;->e:I
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_dc} :catch_dd

    goto :goto_8f

    :catch_dd
    move-exception v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lx/k;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": Could not parse tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lx/r;->a(ILt/ae;)V

    goto :goto_cf

    :cond_102
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    :cond_105
    :try_start_105
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/M;->x()Z

    move-result v8

    if-eqz v8, :cond_122

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lx/k;->b(Lx/r;Lt/af;)Z

    move-result v8

    if-eqz v8, :cond_11a

    add-int/lit8 v5, v5, 0x1

    goto :goto_cf

    :cond_11a
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lx/k;->a(Lx/r;Lt/af;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    :cond_122
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lx/k;->a(Lx/r;Lt/af;)V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_127} :catch_dd

    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    :cond_12a
    if-eqz v9, :cond_147

    move-object/from16 v0, p0

    iget-object v1, v0, Lx/k;->l:Lx/p;

    if-eqz v1, :cond_13c

    move-object/from16 v0, p0

    iget-object v1, v0, Lx/k;->l:Lx/p;

    invoke-virtual {v1}, Lx/p;->c()Z

    move-result v1

    if-eqz v1, :cond_147

    :cond_13c
    new-instance v1, Lx/p;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lx/p;-><init>(Lx/k;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lx/k;->l:Lx/p;

    :cond_147
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->x()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct/range {p0 .. p0}, Lx/k;->s()Z

    move-result v1

    if-eqz v1, :cond_46

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lx/k;->a(IIIIII)V

    goto/16 :goto_46
.end method

.method private a(Lx/r;)V
    .registers 4

    iget-object v0, p0, Lx/k;->l:Lx/p;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx/k;->l:Lx/p;

    invoke-virtual {v0}, Lx/p;->b()V

    :cond_9
    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lx/r;Lt/af;)V
    .registers 5

    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0, p2}, Lx/av;->a_(Lt/af;)V

    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lx/r;->a(ILt/ae;)V

    return-void
.end method

.method private a(Lx/r;Z)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lx/r;->a()Lt/af;

    move-result-object v4

    iget-object v1, p0, Lx/k;->a:Lx/av;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lx/k;->a:Lx/av;

    invoke-interface {v1, v4}, Lx/av;->c(Lt/af;)Lt/ae;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v5, p0, Lx/k;->d:Laf/a;

    invoke-interface {v1, v5}, Lt/ae;->a(Laf/a;)Z

    move-result v5

    if-nez v5, :cond_4b

    iget-object v4, p0, Lx/k;->a:Lx/av;

    invoke-interface {v4, v1}, Lx/av;->a(Lt/ae;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lx/r;->a(ILt/ae;)V

    :goto_27
    move v0, v2

    :goto_28
    return v0

    :cond_29
    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    if-eqz v4, :cond_38

    iget-object v4, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    invoke-virtual {v4}, Lcom/google/googlenav/bv;->a()V

    :cond_38
    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lx/k;->a(Lt/ae;Z)V

    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v4

    if-eqz v4, :cond_49

    :goto_45
    invoke-virtual {p1, v3, v0}, Lx/r;->a(ILt/ae;)V

    goto :goto_27

    :cond_49
    move-object v0, v1

    goto :goto_45

    :cond_4b
    if-eqz p2, :cond_af

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v1, v4}, Lx/x;->b(Lt/af;)Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-virtual {p1, v3, v0}, Lx/r;->a(ILt/ae;)V

    move v0, v2

    goto :goto_28

    :cond_64
    invoke-interface {v1, v4}, Lx/x;->c(Lt/af;)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v5, p0, Lx/k;->d:Laf/a;

    invoke-interface {v0, v5}, Lt/ae;->a(Laf/a;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-interface {v1, v0}, Lx/x;->a(Lt/ae;)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    invoke-virtual {v0}, Lcom/google/googlenav/bv;->c()V

    :cond_87
    invoke-direct {p0, p1, v4}, Lx/k;->a(Lx/r;Lt/af;)V

    :goto_8a
    move v0, v2

    goto :goto_28

    :cond_8c
    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    invoke-virtual {v1}, Lcom/google/googlenav/bv;->b()V

    :cond_9b
    iget-object v1, p0, Lx/k;->a:Lx/av;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lx/k;->a:Lx/av;

    invoke-interface {v1, v4, v0}, Lx/av;->a(Lt/af;Lt/ae;)V

    :cond_a4
    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lx/k;->a(Lt/ae;Z)V

    invoke-virtual {p1, v3, v0}, Lx/r;->a(ILt/ae;)V

    goto :goto_8a

    :cond_af
    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    invoke-virtual {v0}, Lcom/google/googlenav/bv;->c()V

    :cond_be
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lx/r;->a(I)V

    move v0, v3

    goto/16 :goto_28
.end method

.method private b()V
    .registers 5

    iget-object v2, p0, Lx/k;->x:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/az;

    if-eqz v0, :cond_23

    invoke-interface {v0, p0}, Lx/az;->a(Lx/ay;)V

    move v0, v1

    :goto_20
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    :cond_23
    iget-object v3, p0, Lx/k;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    return-void
.end method

.method private b(Lt/af;)V
    .registers 6

    iget-object v2, p0, Lx/k;->x:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/az;

    if-eqz v0, :cond_23

    invoke-interface {v0, p0, p1}, Lx/az;->a(Lx/ay;Lt/af;)V

    move v0, v1

    :goto_20
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    :cond_23
    iget-object v3, p0, Lx/k;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    return-void
.end method

.method static synthetic b(Lx/k;)V
    .registers 1

    invoke-direct {p0}, Lx/k;->p()V

    return-void
.end method

.method private b(Lx/r;)V
    .registers 7

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Lx/k;->r()V

    invoke-virtual {p1}, Lx/r;->a()Lt/af;

    move-result-object v1

    iget-object v0, p0, Lx/k;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/r;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lx/r;->a(Lx/r;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, Lx/r;->d()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0, p1, v4}, Lx/k;->a(Lx/r;Z)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_23
    invoke-static {p1}, Lx/k;->c(Lx/r;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lx/r;->a(ILt/ae;)V

    goto :goto_16

    :cond_2e
    iget-boolean v0, p0, Lx/k;->u:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lx/k;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lx/k;->r:Lz/g;

    invoke-virtual {v0, v1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/r;

    if-eqz v0, :cond_4e

    invoke-virtual {v0, p1}, Lx/r;->a(Lx/r;)V

    goto :goto_16

    :cond_4e
    iget-object v0, p0, Lx/k;->r:Lz/g;

    invoke-virtual {v0, v1, p1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_54
    iget-object v0, p0, Lx/k;->s:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-virtual {v0, p1}, Lx/o;->a(Lx/r;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-direct {p0}, Lx/k;->o()V

    :cond_64
    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-virtual {v0, p1}, Lx/o;->b(Lx/r;)V

    iget v0, p0, Lx/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/k;->c:I

    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-virtual {v0}, Lx/o;->e()Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {p1}, Lx/r;->d()Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_7d
    invoke-direct {p0}, Lx/k;->o()V

    goto :goto_16

    :cond_81
    iget-boolean v0, p0, Lx/k;->p:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lx/k;->p:Z

    goto :goto_16
.end method

.method private b(Lx/r;Lt/af;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lx/k;->c(Lt/af;)Lt/ae;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-interface {v1}, Lt/ae;->h()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    iget-object v2, p0, Lx/k;->d:Laf/a;

    invoke-interface {v1, v2}, Lt/ae;->c(Laf/a;)V

    iget-object v2, p0, Lx/k;->a:Lx/av;

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lx/r;->c()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lx/k;->a:Lx/av;

    invoke-interface {v2, p2, v1}, Lx/av;->a(Lt/af;Lt/ae;)V

    :cond_22
    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2, p2}, Lx/x;->a(Lt/af;)[B

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v2, p2, v1, v3}, Lx/x;->a(Lt/af;Lt/ae;[B)V

    :cond_31
    invoke-virtual {p1, v0, v1}, Lx/r;->a(ILt/ae;)V

    const/4 v0, 0x1

    :cond_35
    return v0
.end method

.method private c(Lt/af;)Lt/ae;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lx/k;->a:Lx/av;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lx/k;->a:Lx/av;

    invoke-interface {v1, p1}, Lx/av;->b(Lt/af;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0, p1}, Lx/av;->c(Lt/af;)Lt/ae;

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1, p1}, Lx/x;->b(Lt/af;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1, p1}, Lx/x;->c(Lt/af;)Lt/ae;

    move-result-object v0

    goto :goto_13
.end method

.method private c()V
    .registers 2

    invoke-direct {p0}, Lx/k;->r()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx/k;->p:Z

    invoke-direct {p0}, Lx/k;->o()V

    return-void
.end method

.method static synthetic c(Lx/k;)V
    .registers 1

    invoke-direct {p0}, Lx/k;->q()V

    return-void
.end method

.method private static c(Lx/r;)Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lx/r;->c()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_10
    return v1

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method static synthetic d(Lx/k;)I
    .registers 2

    iget v0, p0, Lx/k;->t:I

    return v0
.end method

.method private o()V
    .registers 4

    invoke-direct {p0}, Lx/k;->r()V

    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-virtual {v0}, Lx/o;->d()I

    move-result v0

    if-lez v0, :cond_30

    new-instance v0, LC/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lx/k;->b:Lx/o;

    invoke-direct {v0, v1, v2}, LC/g;-><init>(Ljava/lang/String;Lat/g;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Lx/k;->m:Lat/h;

    iget-object v1, p0, Lx/k;->b:Lx/o;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, Lx/k;->q:Ljava/util/List;

    iget-object v1, p0, Lx/k;->b:Lx/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lx/k;->n()Lx/o;

    move-result-object v0

    iput-object v0, p0, Lx/k;->b:Lx/o;

    iget-object v0, p0, Lx/k;->b:Lx/o;

    invoke-static {v0, p0}, Lx/o;->a(Lx/o;Lx/k;)Lx/k;

    :cond_30
    return-void
.end method

.method private p()V
    .registers 2

    invoke-direct {p0}, Lx/k;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/k;->u:Z

    return-void
.end method

.method private q()V
    .registers 6

    invoke-direct {p0}, Lx/k;->r()V

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lx/k;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lx/k;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/o;

    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0}, Lx/o;->d()I

    move-result v3

    if-ge v1, v3, :cond_13

    invoke-virtual {v0, v1}, Lx/o;->a(I)Lx/r;

    move-result-object v3

    iget-object v4, p0, Lx/k;->s:Ljava/util/Map;

    invoke-virtual {v3}, Lx/r;->a()Lt/af;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lx/k;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lx/k;->c:I

    invoke-virtual {v0, v1}, Lx/o;->a(I)Lx/r;

    move-result-object v3

    invoke-direct {p0, v3}, Lx/k;->b(Lx/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_43
    return-void
.end method

.method private final r()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on DashServerTileStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method

.method private s()Z
    .registers 3

    invoke-virtual {p0}, Lx/k;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lx/k;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public a(Lt/af;Z)Lt/ae;
    .registers 5

    new-instance v0, Lx/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/q;-><init>(Lx/l;)V

    new-instance v1, Lx/r;

    invoke-direct {v1, p1, v0}, Lx/r;-><init>(Lt/af;Lx/aw;)V

    invoke-direct {p0, v1, p2}, Lx/k;->a(Lx/r;Z)Z

    invoke-static {v0}, Lx/q;->a(Lx/q;)Lt/ae;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_52

    :goto_7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lx/k;->o:Landroid/os/Looper;

    new-instance v0, Lx/m;

    invoke-direct {v0, p0}, Lx/m;-><init>(Lx/k;)V

    iput-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    monitor-enter p0

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_6e

    iget-object v0, p0, Lx/k;->g:Lx/x;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lx/k;->g:Lx/x;

    iget-object v1, p0, Lx/k;->v:Ljava/io/File;

    invoke-interface {v0, v1}, Lx/x;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    iput-object v0, p0, Lx/k;->g:Lx/x;

    :cond_2d
    iget-object v0, p0, Lx/k;->g:Lx/x;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lx/k;->k:Ljava/util/Locale;

    iget-object v1, p0, Lx/k;->g:Lx/x;

    invoke-interface {v1}, Lx/x;->d()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lx/k;->g:Lx/x;

    iget-object v1, p0, Lx/k;->k:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lx/x;->a(Ljava/util/Locale;)Z

    :cond_46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/k;->h:Z

    :cond_49
    monitor-enter p0

    :try_start_4a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_71

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_52
    move-exception v0

    invoke-virtual {p0}, Lx/k;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public a(IZLjava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lx/k;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4a
    const-string v0, ""

    goto :goto_32
.end method

.method public a(Lat/g;)V
    .registers 5

    instance-of v0, p1, Lx/o;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lx/o;

    invoke-static {v0}, Lx/o;->a(Lx/o;)Lx/k;

    move-result-object v0

    if-ne v0, p0, :cond_19

    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public a(Lcom/google/googlenav/bv;)V
    .registers 2

    iput-object p1, p0, Lx/k;->w:Lcom/google/googlenav/bv;

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .registers 6

    iget-object v0, p0, Lx/k;->k:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_f} :catch_40

    :try_start_f
    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    iget-object v2, p0, Lx/k;->n:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_3d

    :goto_1f
    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0, p1}, Lx/x;->a(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    iput-object v0, p0, Lx/k;->g:Lx/x;

    :cond_2e
    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0}, Lx/av;->a()Z

    :cond_37
    iput-object p1, p0, Lx/k;->k:Ljava/util/Locale;

    invoke-direct {p0}, Lx/k;->b()V

    goto :goto_8

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_40} :catch_40

    :catch_40
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1f
.end method

.method public a(Lt/af;Lx/aw;)V
    .registers 4

    new-instance v0, Lx/r;

    invoke-direct {v0, p1, p2}, Lx/r;-><init>(Lt/af;Lx/aw;)V

    invoke-direct {p0, v0}, Lx/k;->a(Lx/r;)V

    return-void
.end method

.method public a(Lt/af;Lx/aw;Lx/g;Z)V
    .registers 11

    new-instance v0, Lx/r;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lx/r;-><init>(Lt/af;Lx/aw;Lx/g;ZI)V

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lx/k;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lx/az;)V
    .registers 5

    iget-object v1, p0, Lx/k;->x:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Lt/af;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v1

    invoke-interface {v1, p1}, Lx/x;->c(Lt/af;)Lt/ae;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lt/ae;->e()I

    move-result v1

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v2

    invoke-interface {v2}, Lx/x;->b()I

    move-result v2

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public b(Lat/g;)V
    .registers 2

    return-void
.end method

.method public b(Lx/az;)V
    .registers 5

    iget-object v1, p0, Lx/k;->x:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0}, Lx/av;->a()Z

    :cond_9
    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lx/x;->a()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-interface {v0}, Lx/x;->e()V

    invoke-virtual {p0}, Lx/k;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to clear disk cache"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx/k;->g:Lx/x;

    :cond_24
    invoke-direct {p0}, Lx/k;->b()V

    return-void
.end method

.method public f()I
    .registers 2

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lx/x;->b()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lx/k;->j:I

    goto :goto_a
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Ln/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public h()J
    .registers 3

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    invoke-interface {v0}, Lx/x;->c()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->a(Lat/p;)V

    invoke-virtual {p0}, Lx/k;->start()V

    :try_start_8
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_9} :catch_14

    :goto_9
    :try_start_9
    iget-object v0, p0, Lx/k;->n:Landroid/os/Handler;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_9

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    :try_start_13
    throw v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_11

    goto :goto_1c
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lx/k;->o:Landroid/os/Looper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lx/k;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx/k;->o:Landroid/os/Looper;

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lx/k;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_27

    :goto_f
    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0}, Lx/av;->a()Z

    :cond_18
    invoke-virtual {p0}, Lx/k;->m()Lx/x;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lx/x;->e()V

    :cond_21
    iget-object v0, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    return-void

    :catch_27
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lx/k;->a:Lx/av;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx/k;->a:Lx/av;

    invoke-interface {v0}, Lx/av;->a()Z

    :cond_9
    return-void
.end method

.method public l()J
    .registers 5

    iget-object v0, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v0}, Lat/h;->n()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lx/k;->m:Lat/h;

    invoke-virtual {v2}, Lat/h;->l()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lx/k;->c:I

    if-nez v2, :cond_21

    iget-object v2, p0, Lx/k;->d:Laf/a;

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_20
    return-wide v0

    :cond_21
    const-wide/16 v0, 0x0

    goto :goto_20
.end method

.method public m()Lx/x;
    .registers 2

    iget-object v0, p0, Lx/k;->g:Lx/x;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lx/k;->h:Z

    if-nez v0, :cond_21

    monitor-enter p0

    :goto_9
    :try_start_9
    iget-object v0, p0, Lx/k;->g:Lx/x;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lx/k;->h:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_9

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    monitor-exit p0

    :goto_1f
    return-object v0

    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_24

    :cond_21
    iget-object v0, p0, Lx/k;->g:Lx/x;

    goto :goto_1f

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method protected abstract n()Lx/o;
.end method
