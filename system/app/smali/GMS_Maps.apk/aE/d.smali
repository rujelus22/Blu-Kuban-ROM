.class public LaE/d;
.super Lat/a;


# instance fields
.field private final a:LaJ/B;

.field private final b:I

.field private final c:I

.field private final d:LaF/b;

.field private final e:LaI/c;

.field private final f:LaE/h;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z

.field private final j:J

.field private final k:LaE/f;

.field private final l:Ljava/lang/String;

.field private final m:LaJ/B;

.field private final n:Z

.field private final o:Ljava/lang/String;


# direct methods
.method private constructor <init>(LaJ/B;IILaF/b;LaI/c;LaE/h;Ljava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V
    .registers 18

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, LaE/d;->a:LaJ/B;

    iput p2, p0, LaE/d;->b:I

    iput p3, p0, LaE/d;->c:I

    iput-object p4, p0, LaE/d;->d:LaF/b;

    iput-object p5, p0, LaE/d;->e:LaI/c;

    iput-object p6, p0, LaE/d;->f:LaE/h;

    iput-object p7, p0, LaE/d;->g:Ljava/lang/String;

    iput p8, p0, LaE/d;->h:I

    iput-boolean p9, p0, LaE/d;->i:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, LaE/d;->j:J

    iput-object p10, p0, LaE/d;->k:LaE/f;

    iput-object p11, p0, LaE/d;->l:Ljava/lang/String;

    iput-object p12, p0, LaE/d;->m:LaJ/B;

    move/from16 v0, p13

    iput-boolean v0, p0, LaE/d;->n:Z

    move-object/from16 v0, p14

    iput-object v0, p0, LaE/d;->o:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LaJ/B;IILaF/b;LaI/c;LaE/h;Ljava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;LaE/e;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, LaE/d;-><init>(LaJ/B;IILaF/b;LaI/c;LaE/h;Ljava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Lam/b;)LaE/f;
    .registers 4

    new-instance v0, LaE/f;

    invoke-static {}, LaI/c;->d()[LaI/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LaE/f;-><init>(Lam/b;[LaI/c;LaE/e;)V

    return-object v0
.end method

.method public static a(II)Lam/b;
    .registers 17

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-virtual {v6}, LaE/h;->d()Lam/b;

    move-result-object v0

    :goto_a
    invoke-static {v0}, LaE/d;->a(Lam/b;)LaE/f;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, LaF/b;->d()LaF/b;

    move-result-object v0

    invoke-static {}, LaI/c;->c()LaI/c;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v7

    invoke-virtual {v7}, Laf/b;->v()Laf/a;

    move-result-object v7

    invoke-interface {v7}, Laf/a;->b()J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, p0

    move/from16 v11, p1

    invoke-static/range {v0 .. v14}, LaE/d;->a(LaF/b;LaI/c;LaE/f;IILjava/lang/String;LaE/h;JIIILaJ/B;ZLjava/lang/String;)Lam/b;

    move-result-object v0

    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(LaE/h;JII)Lam/b;
    .registers 11

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, -0x1

    new-instance v1, Lam/b;

    sget-object v2, Lbr/O;->c:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    if-eqz p0, :cond_40

    invoke-virtual {p0}, LaE/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p0}, LaE/h;->i()I

    move-result v2

    const v3, 0x1869f

    if-eq v2, v3, :cond_22

    if-eq v2, v4, :cond_22

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    :cond_22
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, p2}, Lam/b;->b(IJ)V

    invoke-virtual {p0}, LaE/h;->h()I

    move-result v2

    if-eq v2, v4, :cond_33

    if-eq v2, v4, :cond_33

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    :cond_33
    invoke-virtual {p0}, LaE/h;->e()I

    move-result v2

    if-eq v2, v4, :cond_40

    if-eq v2, v4, :cond_40

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    :cond_40
    new-instance v2, Lam/b;

    sget-object v3, Lbr/M;->a:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v0, p3}, Lam/b;->h(II)V

    invoke-virtual {v2, v5, p4}, Lam/b;->h(II)V

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, LaE/h;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5f

    const/4 v0, 0x0

    :cond_5f
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lam/b;->h(II)V

    return-object v1
.end method

.method private static a(LaF/b;LaI/c;LaE/f;IILjava/lang/String;LaE/h;JIIILaJ/B;ZLjava/lang/String;)Lam/b;
    .registers 26

    new-instance v5, Lam/b;

    sget-object v6, Lbr/ay;->k:Lam/e;

    invoke-direct {v5, v6}, Lam/b;-><init>(Lam/e;)V

    new-instance v6, Lam/b;

    sget-object v7, Lbr/O;->j:Lam/e;

    invoke-direct {v6, v7}, Lam/b;-><init>(Lam/e;)V

    const/4 v7, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v8

    invoke-virtual {v8}, Laf/b;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lam/b;->b(ILjava/lang/String;)V

    invoke-static {}, LaE/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Las/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_28

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lam/b;->b(ILjava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, LaF/b;->f()Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v7, 0x6

    invoke-virtual {p0}, LaF/b;->k()Lam/b;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lam/b;->b(ILam/b;)V

    :cond_36
    invoke-virtual {p1}, LaI/c;->f()Z

    move-result v7

    if-eqz v7, :cond_44

    const/4 v7, 0x7

    invoke-virtual {p1}, LaI/c;->i()Lam/b;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lam/b;->b(ILam/b;)V

    :cond_44
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lam/b;->b(ILam/b;)V

    new-instance v6, Lam/b;

    sget-object v7, Lbr/O;->k:Lam/e;

    invoke-direct {v6, v7}, Lam/b;-><init>(Lam/e;)V

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p3}, Lam/b;->h(II)V

    const/4 v7, 0x2

    if-ne p3, v7, :cond_62

    const/4 v7, 0x4

    invoke-virtual {v6, v7, p4}, Lam/b;->h(II)V

    const/4 v7, 0x5

    if-eqz p5, :cond_c2

    :goto_5d
    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_62
    if-lez p9, :cond_6a

    const/4 v7, 0x6

    move/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Lam/b;->h(II)V

    :cond_6a
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Lam/b;->a(ILam/b;)V

    move v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    invoke-static/range {v5 .. v10}, LaE/d;->a(Lam/b;ILaE/h;LaJ/B;ZLjava/lang/String;)V

    new-instance v6, Lam/b;

    sget-object v7, Lbr/ay;->j:Lam/e;

    invoke-direct {v6, v7}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, LaF/b;->f()Z

    move-result v7

    if-eqz v7, :cond_8f

    const/4 v7, 0x1

    invoke-virtual {p0}, LaF/b;->l()Lam/b;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lam/b;->b(ILam/b;)V

    :cond_8f
    invoke-virtual {p1}, LaI/c;->f()Z

    move-result v7

    if-eqz v7, :cond_9d

    const/4 v7, 0x2

    invoke-virtual {p1}, LaI/c;->j()Lam/b;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lam/b;->b(ILam/b;)V

    :cond_9d
    move-object/from16 v0, p6

    move-wide/from16 v1, p7

    move/from16 v3, p10

    move/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, LaE/d;->a(LaE/h;JII)Lam/b;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lam/b;->b(ILam/b;)V

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lam/b;->a(ILam/b;)V

    if-eqz p2, :cond_c1

    invoke-virtual {p2}, LaE/f;->a()Lam/b;

    move-result-object v6

    invoke-static {v5, v6}, LaE/d;->a(Lam/b;Lam/b;)V

    invoke-virtual {p2}, LaE/f;->b()[LaI/c;

    move-result-object v6

    invoke-static {v5, v6}, LaE/d;->a(Lam/b;[LaI/c;)V

    :cond_c1
    return-object v5

    :cond_c2
    const-string p5, ""

    goto :goto_5d
.end method

.method static a(Lam/b;J)Lam/b;
    .registers 10

    const/4 v6, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v3

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_21

    invoke-virtual {p0, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Lam/b;->e(I)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static a(ILaE/h;LaE/f;Ljava/lang/String;ILaJ/B;IZLap/c;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V
    .registers 27

    if-nez p5, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v1, LaE/e;

    move-object v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move v5, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, LaE/e;-><init>(LaE/h;LaJ/B;IILjava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V

    new-instance v2, Lap/d;

    move-object/from16 v0, p8

    invoke-direct {v2, v0, v1}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lap/d;->g()V

    goto :goto_2
.end method

.method public static a(LaE/h;LaJ/B;ZLjava/lang/String;Lap/c;)V
    .registers 18

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, LaE/h;->d()Lam/b;

    move-result-object v0

    invoke-static {v0}, LaE/d;->a(Lam/b;)LaE/f;

    move-result-object v2

    const/16 v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, LaE/h;->q()LaJ/B;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p4

    move-object v10, p1

    move v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v0 .. v12}, LaE/d;->a(ILaE/h;LaE/f;Ljava/lang/String;ILaJ/B;IZLap/c;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public static a(LaJ/B;ILap/c;)V
    .registers 16

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x7

    move-object v2, v1

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move v7, v4

    move-object v8, p2

    move-object v9, v1

    move-object v10, v1

    move v11, v4

    move-object v12, v1

    invoke-static/range {v0 .. v12}, LaE/d;->a(ILaE/h;LaE/f;Ljava/lang/String;ILaJ/B;IZLap/c;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V

    return-void
.end method

.method static a(Lam/b;ILaE/h;LaJ/B;ZLjava/lang/String;)V
    .registers 9

    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, LaE/a;

    if-eqz v1, :cond_4

    check-cast v0, LaE/a;

    invoke-virtual {v0}, LaE/a;->f()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {v0, p3, p4, p5}, LaE/d;->a(Lam/b;LaJ/B;ZLjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_4
.end method

.method static a(Lam/b;LaJ/B;ZLjava/lang/String;)V
    .registers 10

    const/4 v3, 0x7

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v2}, Lam/b;->b(II)[B

    move-result-object v2

    new-instance v3, Lam/b;

    sget-object v4, Lbr/a;->b:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    :try_start_f
    invoke-virtual {v3, v2}, Lam/b;->a([B)Lam/b;

    if-eqz p1, :cond_2f

    new-instance v2, Lam/b;

    sget-object v4, Lbr/M;->a:Lam/e;

    invoke-direct {v2, v4}, Lam/b;-><init>(Lam/e;)V

    const/4 v4, 0x1

    invoke-virtual {p1}, LaJ/B;->d()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lam/b;->h(II)V

    const/4 v4, 0x2

    invoke-virtual {p1}, LaJ/B;->f()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lam/b;->h(II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lam/b;->b(ILam/b;)V

    :cond_2f
    invoke-static {p3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x3

    invoke-virtual {v3, v2, p3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_39
    const/4 v2, 0x4

    if-eqz p2, :cond_51

    :goto_3c
    invoke-virtual {v3, v2, v0}, Lam/b;->h(II)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lam/b;->a(II[B)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_50} :catch_53

    :goto_50
    return-void

    :cond_51
    move v0, v1

    goto :goto_3c

    :catch_53
    move-exception v0

    goto :goto_50
.end method

.method private static a(Lam/b;Lam/b;)V
    .registers 4

    if-eqz p1, :cond_11

    new-instance v0, Lam/b;

    sget-object v1, Lbr/ay;->j:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lam/b;->a(ILam/b;)V

    :cond_11
    return-void
.end method

.method static a(Lam/b;[LaI/c;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_35

    aget-object v1, p1, v0

    invoke-virtual {v1}, LaI/c;->f()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, LaI/c;->j()Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, LaE/d;->a(Lam/b;J)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lam/b;->a(ILam/b;)V

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_26
    new-instance v2, Lam/b;

    sget-object v3, Lbr/ay;->j:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v4, v1}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lam/b;->a(ILam/b;)V

    goto :goto_23

    :cond_35
    return-void
.end method

.method public static a(Ljava/lang/String;ILaJ/B;ILap/c;)V
    .registers 18

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v12}, LaE/d;->a(ILaE/h;LaE/f;Ljava/lang/String;ILaJ/B;IZLap/c;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x29

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 20

    new-instance v17, Lam/b;

    sget-object v2, LbD/dJ;->a:Lam/e;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    move-object/from16 v0, p0

    iget v2, v0, LaE/d;->c:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8e

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, LaE/d;->d:LaF/b;

    move-object/from16 v0, p0

    iget-object v3, v0, LaE/d;->e:LaI/c;

    move-object/from16 v0, p0

    iget-object v4, v0, LaE/d;->k:LaE/f;

    move-object/from16 v0, p0

    iget v5, v0, LaE/d;->c:I

    move-object/from16 v0, p0

    iget v6, v0, LaE/d;->h:I

    move-object/from16 v0, p0

    iget-object v7, v0, LaE/d;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, LaE/d;->f:LaE/h;

    move-object/from16 v0, p0

    iget-wide v9, v0, LaE/d;->j:J

    move-object/from16 v0, p0

    iget v11, v0, LaE/d;->b:I

    move-object/from16 v0, p0

    iget-object v12, v0, LaE/d;->a:LaJ/B;

    invoke-virtual {v12}, LaJ/B;->c()I

    move-result v12

    mul-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    iget-object v13, v0, LaE/d;->a:LaJ/B;

    invoke-virtual {v13}, LaJ/B;->e()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    move-object/from16 v0, p0

    iget-object v14, v0, LaE/d;->m:LaJ/B;

    move-object/from16 v0, p0

    iget-boolean v15, v0, LaE/d;->n:Z

    move-object/from16 v0, p0

    iget-object v0, v0, LaE/d;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, LaE/d;->a(LaF/b;LaI/c;LaE/f;IILjava/lang/String;LaE/h;JIIILaJ/B;ZLjava/lang/String;)Lam/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, LaE/d;->c:I

    const/16 v4, 0x81

    if-ne v3, v4, :cond_7e

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    const/16 v4, 0x12

    move-object/from16 v0, p0

    iget-object v5, v0, LaE/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_7e
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_8e
    move-object/from16 v0, p0

    iget v2, v0, LaE/d;->c:I

    const/16 v3, 0x81

    if-ne v2, v3, :cond_9f

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    goto/16 :goto_18

    :cond_9f
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    goto/16 :goto_18
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/dJ;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1, v1}, Lam/b;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    :cond_1a
    :goto_1a
    return v2

    :pswitch_1b
    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaE/g;->a(Ljava/lang/String;)V

    goto :goto_1a

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, LaE/d;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocationReport[mapPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->a:LaJ/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaE/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaE/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellTowerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->d:LaF/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->e:LaI/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->f:LaE/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchTerm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaE/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LaE/d;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, LaE/d;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->k:LaE/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
