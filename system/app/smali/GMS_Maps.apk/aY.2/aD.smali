.class public LaY/aD;
.super LaY/l;


# instance fields
.field private b:Lz/g;


# direct methods
.method public constructor <init>(LaY/m;)V
    .registers 4

    invoke-direct {p0, p1}, LaY/l;-><init>(LaY/i;)V

    new-instance v0, Lz/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, LaY/aD;->b:Lz/g;

    return-void
.end method

.method private static a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;
    .registers 8

    if-eqz p2, :cond_41

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->n()Lah/g;

    move-result-object v0

    :goto_a
    sget-char v1, Lcom/google/googlenav/ui/bw;->ar:C

    sparse-switch p0, :sswitch_data_5c

    :goto_f
    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/ui/bm;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;

    invoke-static {p4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p2, :cond_59

    sget-object v0, Lcom/google/googlenav/ui/bg;->t:Lcom/google/googlenav/ui/bg;

    :goto_2d
    invoke-static {p4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    :cond_34
    if-eqz p2, :cond_3c

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    :cond_3c
    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0

    :cond_41
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->o()Lah/g;

    move-result-object v0

    goto :goto_a

    :sswitch_4a
    sget-char v1, Lcom/google/googlenav/ui/bw;->aU:C

    goto :goto_f

    :sswitch_4d
    sget-char v1, Lcom/google/googlenav/ui/bw;->aV:C

    goto :goto_f

    :sswitch_50
    sget-char v1, Lcom/google/googlenav/ui/bw;->aW:C

    goto :goto_f

    :sswitch_53
    sget-char v1, Lcom/google/googlenav/ui/bw;->aX:C

    goto :goto_f

    :sswitch_56
    sget-char v1, Lcom/google/googlenav/ui/bw;->ba:C

    goto :goto_f

    :cond_59
    sget-object v0, Lcom/google/googlenav/ui/bg;->u:Lcom/google/googlenav/ui/bg;

    goto :goto_2d

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_50
        0x3 -> :sswitch_4a
        0xf -> :sswitch_4d
        0x10 -> :sswitch_4a
        0x258 -> :sswitch_53
        0x25b -> :sswitch_4d
        0x901 -> :sswitch_56
    .end sparse-switch
.end method

.method private b()LaY/m;
    .registers 2

    iget-object v0, p0, LaY/aD;->a:LaY/i;

    check-cast v0, LaY/m;

    return-object v0
.end method

.method private e(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, LaY/aD;->a:LaY/i;

    invoke-virtual {v0, v2}, LaY/i;->f(Z)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bI;

    iget-object v0, p0, LaY/aD;->a:LaY/i;

    check-cast v0, LaY/m;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/bI;-><init>(Lcom/google/googlenav/ah;LaY/m;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bI;->a(Z)V

    return-object v1
.end method

.method private f(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/dialog/c;
    .registers 4

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v0

    new-instance v1, LaY/aE;

    invoke-direct {v1, p0, v0, p1}, LaY/aE;-><init>(LaY/aD;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ah;)V

    return-object v1
.end method

.method private g(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Lbb/o;

    const/4 v1, 0x2

    const/16 v2, 0x306

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, LaY/aD;->h(Lcom/google/googlenav/ah;)Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/aD;->a:LaY/i;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1
.end method

.method private h(Lcom/google/googlenav/ah;)Ljava/util/Vector;
    .registers 3

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v0

    invoke-static {p1, v0}, LaY/aq;->a(Lcom/google/googlenav/ah;LaY/i;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x4a7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lbb/o;

    const/4 v1, 0x2

    const/16 v2, 0x306

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/aD;->a:LaY/i;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1
.end method

.method private j(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;
    .registers 11

    const/4 v3, 0x0

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v0

    invoke-virtual {v0}, LaY/m;->bo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->z()[Lcom/google/googlenav/ah;

    move-result-object v2

    new-instance v4, Ljava/util/Vector;

    array-length v0, v2

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_14
    array-length v5, v2

    if-ge v0, v5, :cond_56

    aget-object v5, v2, v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/bg;->bF:Lcom/google/googlenav/ui/bg;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_39

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/google/googlenav/ui/bg;->bG:Lcom/google/googlenav/ui/bg;

    invoke-static {v5, v7}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    new-instance v5, Lcom/google/googlenav/ui/bm;

    invoke-direct {v5}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v5

    const/16 v6, 0x4b1

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_56
    if-eqz v1, :cond_6e

    const/16 v0, 0x22c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_5e
    new-instance v0, Lbb/o;

    const/4 v1, 0x2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/aD;->a:LaY/i;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1

    :cond_6e
    const/16 v0, 0x22e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/view/android/ap;
    .registers 5

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v0

    invoke-virtual {v0}, LaY/m;->bv()Lcom/google/googlenav/ah;

    move-result-object v0

    sparse-switch p1, :sswitch_data_4c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    invoke-direct {p0, v0}, LaY/aD;->e(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    :goto_28
    return-object v0

    :sswitch_29
    invoke-virtual {p0, v0}, LaY/aD;->a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    goto :goto_28

    :sswitch_2e
    invoke-direct {p0, v0}, LaY/aD;->g(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    goto :goto_28

    :sswitch_33
    invoke-direct {p0, v0}, LaY/aD;->j(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    goto :goto_28

    :sswitch_38
    invoke-direct {p0, v0}, LaY/aD;->i(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    goto :goto_28

    :sswitch_3d
    invoke-virtual {p0, v0}, LaY/aD;->b(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    goto :goto_28

    :sswitch_42
    invoke-virtual {p0, v0}, LaY/aD;->c(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    goto :goto_28

    :sswitch_47
    invoke-direct {p0, v0}, LaY/aD;->f(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/dialog/c;

    move-result-object v0

    goto :goto_28

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_29
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_24
        0x7 -> :sswitch_33
        0x9 -> :sswitch_38
        0xd -> :sswitch_3d
        0xe -> :sswitch_42
        0x14 -> :sswitch_47
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 4

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/bI;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/bI;-><init>(Lcom/google/googlenav/ah;LaY/m;)V

    return-object v1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, LaY/aD;->b:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    return-void
.end method

.method protected b(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No implementation!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No implementation!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/google/googlenav/ah;)Lbb/p;
    .registers 13

    const/16 v9, 0xe0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v10, -0x1

    invoke-direct {p0}, LaY/aD;->b()LaY/m;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v3

    if-eqz v3, :cond_be

    invoke-virtual {v5}, LaY/m;->av()Z

    move-result v0

    if-eqz v0, :cond_be

    move v0, v1

    :goto_17
    const/16 v6, 0x41f

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x420

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v10, v0, v6, v7}, LaY/aD;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v6

    if-eqz v0, :cond_2d

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ah;->n(I)V

    :cond_2d
    invoke-virtual {v5, v3}, LaY/m;->b(LaJ/g;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v5, v3}, LaY/m;->c(LaJ/g;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_39
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_c1

    const/16 v0, 0xf

    const/4 v7, 0x4

    invoke-virtual {v5, v3}, LaY/m;->a(LaJ/g;)Z

    move-result v3

    const/16 v8, 0x1b3

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v3, v8, v9}, LaY/aD;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-direct {p0, p1}, LaY/aD;->h(Lcom/google/googlenav/ah;)Ljava/util/Vector;

    :cond_5b
    :goto_5b
    iget-object v3, p0, LaY/aD;->a:LaY/i;

    invoke-virtual {v3}, LaY/i;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/ay;->e()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dc

    move v3, v1

    :goto_76
    const/16 v8, 0x10

    const/16 v9, 0x60

    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v9

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v2

    invoke-static {v9, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v10, v3, v1, v2}, LaY/aD;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v1

    if-eqz v3, :cond_96

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/ah;->n(I)V

    :cond_96
    :goto_96
    invoke-virtual {v5, p1}, LaY/m;->d(Lcom/google/googlenav/ah;)Z

    move-result v3

    const/16 v2, 0x258

    const/16 v5, 0x4a7

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x4a8

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v10, v3, v5, v7}, LaY/aD;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    if-eqz v3, :cond_b2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/googlenav/ah;->n(I)V

    :cond_b2
    if-eqz v1, :cond_de

    move-object v3, v1

    :goto_b5
    if-ne v3, v1, :cond_b8

    move-object v4, v2

    :cond_b8
    new-instance v1, Lbb/p;

    invoke-direct {v1, v6, v0, v3, v4}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    return-object v1

    :cond_be
    move v0, v2

    goto/16 :goto_17

    :cond_c1
    invoke-virtual {v5, v3}, LaY/m;->a(LaJ/g;)Z

    move-result v3

    const/16 v0, 0x25b

    const/16 v7, 0x1b3

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v10, v3, v7, v8}, LaY/aD;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    if-eqz v3, :cond_5b

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_5b

    :cond_dc
    move v3, v2

    goto :goto_76

    :cond_de
    if-eqz v2, :cond_e2

    move-object v3, v2

    goto :goto_b5

    :cond_e2
    move-object v3, v4

    goto :goto_b5

    :cond_e4
    move-object v1, v4

    goto :goto_96
.end method
