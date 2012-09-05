.class public Lcom/google/googlenav/ui/be;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lam/b;)LaJ/B;
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v2

    new-instance v0, LaJ/B;

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(LaJ/B;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, LaJ/B;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LaJ/B;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static a(LaJ/B;[Ljava/lang/String;)Lam/b;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/be;->a(LaJ/B;)Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/be;->a(Lam/b;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Lcom/google/googlenav/ah;)Lam/b;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/be;->a(LaJ/B;[Ljava/lang/String;)Lam/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_3c
    invoke-static {p0}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_47
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_77

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    const/16 v2, 0x16

    invoke-virtual {v0}, Lt/y;->a()Lt/r;

    move-result-object v3

    invoke-virtual {v3}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0}, Lt/y;->b()I

    move-result v2

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_77

    const/16 v2, 0x17

    invoke-virtual {v0}, Lt/y;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lam/b;->h(II)V

    :cond_77
    return-object v1
.end method

.method public static a(Lam/b;B)Lcom/google/googlenav/ah;
    .registers 9

    const/4 v5, 0x4

    new-instance v0, Lcom/google/googlenav/ah;

    invoke-static {p0}, Lcom/google/googlenav/ui/be;->a(Lam/b;)LaJ/B;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v5, v3}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v5, v4}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    const/16 v1, 0xb

    invoke-static {p0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->q(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/be;->b(Lam/b;)Lt/y;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->a(Lt/y;)V

    :cond_36
    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_9

    const/16 v0, 0x242

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x2eb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object p0

    :cond_15
    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2ec

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Lam/b;Ljava/util/Vector;)V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x74

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_25
    return-void

    :cond_26
    invoke-static {v2, v1, p0}, Lcom/google/googlenav/d;->a(IILam/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public static a(Lam/b;[Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    array-length v0, p1

    if-lez v0, :cond_16

    aget-object v0, p1, v2

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    aget-object v0, p1, v2

    invoke-virtual {p0, v3, v2, v0}, Lam/b;->a(IILjava/lang/String;)V

    :cond_16
    array-length v0, p1

    if-le v0, v1, :cond_5

    aget-object v0, p1, v1

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, p1, v1

    invoke-virtual {p0, v3, v1, v0}, Lam/b;->a(IILjava/lang/String;)V

    goto :goto_5
.end method

.method public static a(Ljava/util/List;Ljava/util/Vector;ILjava/lang/String;I)V
    .registers 8

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    invoke-static {p0, p1, v1, p3, p4}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V
    .registers 12

    const/4 v6, 0x2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    invoke-static {p3, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1f
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_25
    if-ge v2, v3, :cond_73

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v6}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    invoke-static {v0, v6}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    :cond_3d
    sget-object v5, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/be;->a(Lam/b;Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    :cond_73
    return-void
.end method

.method public static a(LaJ/B;LaJ/B;)Z
    .registers 6

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Lam/b;)Lt/y;
    .registers 5

    const/16 v3, 0x16

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x17

    const/high16 v2, -0x8000

    invoke-static {p0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    invoke-virtual {p0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v2

    if-eqz v2, :cond_20

    new-instance v0, Lt/y;

    invoke-direct {v0, v2, v1}, Lt/y;-><init>(Lt/r;I)V

    :cond_20
    return-object v0
.end method
