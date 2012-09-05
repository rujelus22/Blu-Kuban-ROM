.class public LaY/aA;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaY/az;


# direct methods
.method public constructor <init>(LaY/az;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/aA;->a:LaY/az;

    return-void
.end method

.method private a(Ljava/util/Vector;Lcom/google/googlenav/aV;)V
    .registers 8

    const/4 v4, -0x1

    const/16 v0, 0x450

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, LaY/aA;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Vector;Lcom/google/googlenav/ah;ILjava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->af()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p2}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_25
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_8

    :cond_45
    invoke-static {p4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    sget-object v0, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_25

    :cond_55
    const/16 v4, 0x37c

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p4, v5, v0

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    sget-object v4, Lcom/google/googlenav/ui/bg;->av:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v0, v2, v4}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    goto :goto_25
.end method

.method private b()Lbb/o;
    .registers 12

    const/4 v1, 0x2

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v0}, LaY/az;->e()Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_125

    iget-object v0, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v0}, LaY/az;->bi()Z

    move-result v0

    if-eqz v0, :cond_6f

    const/16 v0, 0xdd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_21
    new-instance v3, Lbb/n;

    new-instance v4, Lcom/google/googlenav/ui/bm;

    invoke-direct {v4}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v6, Lcom/google/googlenav/ui/bg;->aM:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-direct {v3, v0, v5}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    :goto_39
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v8

    iget-object v0, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v0}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->t()Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->C()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v0}, LaY/az;->b()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->G()[Lcom/google/googlenav/ah;

    move-result-object v6

    move v0, v2

    :goto_61
    array-length v2, v6

    if-ge v0, v2, :cond_93

    aget-object v2, v6, v0

    invoke-direct {p0, v4, v2, v0, v9}, LaY/aA;->a(Ljava/util/Vector;Lcom/google/googlenav/ah;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_6f
    const/16 v0, 0xdc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_76
    move v6, v2

    :goto_77
    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ge v2, v0, :cond_8e

    invoke-virtual {v8, v2}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-direct {p0, v4, v0, v2, v9}, LaY/aA;->a(Ljava/util/Vector;Lcom/google/googlenav/ah;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    move v0, v7

    :goto_8a
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_77

    :cond_8e
    if-nez v6, :cond_93

    invoke-direct {p0, v4, v8}, LaY/aA;->a(Ljava/util/Vector;Lcom/google/googlenav/aV;)V

    :cond_93
    :goto_93
    new-instance v0, Lbb/o;

    const/16 v2, 0xda

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    iget-object v1, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v1}, LaY/az;->e()Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, LaY/aA;->a:LaY/az;

    invoke-virtual {v1}, LaY/az;->bi()Z

    move-result v1

    if-eqz v1, :cond_120

    const/4 v1, 0x3

    :goto_b0
    iput v1, v0, Lbb/o;->q:I

    :cond_b2
    return-object v0

    :cond_b3
    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-nez v0, :cond_bc

    invoke-direct {p0, v4, v8}, LaY/aA;->a(Ljava/util/Vector;Lcom/google/googlenav/aV;)V

    :cond_bc
    invoke-virtual {v8}, Lcom/google/googlenav/aV;->E()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x64

    invoke-virtual {p0, v0, v6, v10}, LaY/aA;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ne v0, v7, :cond_ef

    const/16 v0, 0x451

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2, v10}, LaY/aA;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_93

    :cond_ef
    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-le v0, v7, :cond_93

    const/16 v0, 0x44f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-virtual {v8}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0, v6}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2, v10}, LaY/aA;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_93

    :cond_120
    const/4 v1, 0x4

    goto :goto_b0

    :cond_122
    move v0, v6

    goto/16 :goto_8a

    :cond_125
    move-object v3, v5

    goto/16 :goto_39
.end method


# virtual methods
.method protected a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bl;
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->au:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/googlenav/ui/view/android/bj;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v1, p0, LaY/aA;->a:LaY/az;

    invoke-direct {p0}, LaY/aA;->b()Lbb/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v0
.end method
