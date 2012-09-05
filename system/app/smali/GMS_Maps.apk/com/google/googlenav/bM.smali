.class public Lcom/google/googlenav/bM;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bJ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bJ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-direct {p0}, Lat/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x7f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9

    const/4 v6, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/gH;->i:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->b(Lcom/google/googlenav/bJ;)LaY/bc;

    move-result-object v0

    invoke-virtual {v0}, LaY/bc;->b()Lcom/google/googlenav/bS;

    move-result-object v2

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/googlenav/bS;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lam/b;->a(ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_21
    invoke-virtual {v2}, Lcom/google/googlenav/bS;->h()I

    move-result v4

    if-ge v0, v4, :cond_40

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bS;->a(I)Lcom/google/googlenav/bV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/bV;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v1, v6, v4}, Lam/b;->a(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_40
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v2}, Lcom/google/googlenav/bJ;->b(Lcom/google/googlenav/bJ;)LaY/bc;

    move-result-object v2

    invoke-virtual {v2}, LaY/bc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 14

    sget-object v0, LbD/gH;->j:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v8

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lam/b;->l(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/bW;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_24

    new-instance v3, Lcom/google/googlenav/Y;

    const/4 v4, 0x2

    invoke-virtual {v8, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/googlenav/Y;-><init>(Lam/b;I)V

    new-instance v4, Lcom/google/googlenav/bW;

    invoke-direct {v4, v3}, Lcom/google/googlenav/bW;-><init>(Lcom/google/googlenav/bN;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v2}, LK/bn;->a([Ljava/lang/Object;)LK/bn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/bJ;LK/bn;)LK/bn;

    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lam/b;->l(I)I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/bK;

    invoke-static {v0, v1}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/bJ;[Lcom/google/googlenav/bK;)[Lcom/google/googlenav/bK;

    const/4 v0, 0x0

    move v6, v0

    :goto_3b
    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->c(Lcom/google/googlenav/bJ;)[Lcom/google/googlenav/bK;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_a1

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v6}, Lam/b;->e(II)Lam/b;

    move-result-object v9

    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Lam/b;->l(I)I

    move-result v10

    new-array v11, v10, [Lcom/google/googlenav/bL;

    const/4 v0, 0x0

    move v7, v0

    :goto_52
    if-ge v7, v10, :cond_8e

    const/4 v0, 0x3

    invoke-virtual {v9, v0, v7}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lam/b;->l(I)I

    move-result v3

    new-array v4, v3, [I

    const/4 v0, 0x0

    :goto_66
    if-ge v0, v3, :cond_72

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v0}, Lam/b;->c(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_72
    new-instance v0, Lcom/google/googlenav/bL;

    iget-object v1, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    iget-object v3, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v3}, Lcom/google/googlenav/bJ;->b(Lcom/google/googlenav/bJ;)LaY/bc;

    move-result-object v3

    invoke-virtual {v3}, LaY/bc;->b()Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/bS;->a(Ljava/lang/String;)Lcom/google/googlenav/bV;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bL;-><init>(Lcom/google/googlenav/bJ;Ljava/lang/String;Lcom/google/googlenav/bV;[II)V

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_52

    :cond_8e
    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->c(Lcom/google/googlenav/bJ;)[Lcom/google/googlenav/bK;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bK;

    iget-object v2, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-direct {v1, v2, v11}, Lcom/google/googlenav/bK;-><init>(Lcom/google/googlenav/bJ;[Lcom/google/googlenav/bL;)V

    aput-object v1, v0, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3b

    :cond_a1
    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bJ;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->g()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->c()I

    move-result v0

    if-gez v0, :cond_b4

    const/4 v0, 0x0

    :cond_b4
    iget-object v1, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bJ;->a(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public i()Lcom/google/googlenav/bJ;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bM;->a:Lcom/google/googlenav/bJ;

    return-object v0
.end method
