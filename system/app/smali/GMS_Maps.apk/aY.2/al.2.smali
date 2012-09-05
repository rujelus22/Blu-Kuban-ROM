.class public LaY/al;
.super LaY/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaY/an;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaY/i;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    return-void
.end method

.method private static h(I)I
    .registers 1

    if-ltz p0, :cond_3

    :goto_2
    return p0

    :cond_3
    add-int/lit16 p0, p0, 0x4000

    goto :goto_2
.end method


# virtual methods
.method protected O()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 2

    invoke-super {p0}, LaY/i;->X()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    iput-object p1, p0, LaY/al;->f:Lcom/google/googlenav/E;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/al;->b(I)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2a1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aq()V
    .registers 1

    return-void
.end method

.method protected ar()V
    .registers 1

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x16

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 16

    const/4 v3, 0x5

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v7, 0x0

    iget-object v0, p0, LaY/al;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    new-array v8, v0, [Lcom/google/googlenav/ui/aR;

    move v6, v7

    :goto_e
    iget-object v0, p0, LaY/al;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v6, v0, :cond_f8

    invoke-virtual {p0}, LaY/al;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, LaY/am;

    invoke-virtual {v0}, LaY/am;->a()LaJ/B;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/p;->a(LaJ/B;)Lt/af;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/googlenav/prefetch/android/w;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v4

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, LaY/al;->h(I)I

    move-result v5

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-static {v9}, LaY/al;->h(I)I

    move-result v9

    invoke-direct {v2, v4, v5, v9}, Lt/af;-><init>(III)V

    new-instance v4, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v5

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v9}, LaY/al;->h(I)I

    move-result v9

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-static {v10}, LaY/al;->h(I)I

    move-result v10

    invoke-direct {v4, v5, v9, v10}, Lt/af;-><init>(III)V

    new-instance v5, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v9

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, LaY/al;->h(I)I

    move-result v10

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v11

    add-int/2addr v11, v1

    invoke-static {v11}, LaY/al;->h(I)I

    move-result v11

    invoke-direct {v5, v9, v10, v11}, Lt/af;-><init>(III)V

    new-instance v9, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v10

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-static {v11}, LaY/al;->h(I)I

    move-result v11

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, LaY/al;->h(I)I

    move-result v0

    invoke-direct {v9, v10, v11, v0}, Lt/af;-><init>(III)V

    new-array v1, v3, [LaJ/B;

    invoke-virtual {v2}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0, v12}, Lt/V;->a(I)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {v4}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0, v13}, Lt/V;->a(I)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v0

    aput-object v0, v1, v13

    invoke-virtual {v5}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0, v7}, Lt/V;->a(I)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v0

    aput-object v0, v1, v12

    invoke-virtual {v9}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0, v14}, Lt/V;->a(I)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v0

    aput-object v0, v1, v14

    const/4 v0, 0x4

    invoke-virtual {v2}, Lt/af;->i()Lt/V;

    move-result-object v2

    invoke-virtual {v2, v12}, Lt/V;->a(I)Lt/L;

    move-result-object v2

    invoke-static {v2}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v2

    aput-object v2, v1, v0

    const v2, -0xd5ba98

    const/4 v4, -0x1

    new-instance v0, LaJ/N;

    const/4 v5, 0x0

    check-cast v5, [[LaJ/B;

    invoke-direct/range {v0 .. v5}, LaJ/N;-><init>([LaJ/B;III[[LaJ/B;)V

    aput-object v0, v8, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_e

    :cond_f8
    return-object v8
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/g;

    invoke-direct {v0, p0}, Lba/g;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
