.class public Lcom/google/googlenav/layer/p;
.super Lat/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/layer/q;

.field private d:Lcom/google/googlenav/T;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/q;)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/layer/p;->e:Z

    return-void
.end method


# virtual methods
.method public X()V
    .registers 3

    invoke-super {p0}, Lat/a;->X()V

    iget-object v0, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/layer/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x25

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/da;->l:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    new-instance v1, Lam/b;

    sget-object v2, LbD/x;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lam/b;->b(IZ)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/layer/p;->a()I

    move-result v1

    invoke-static {v1, v0, v4}, Lcom/google/googlenav/ag;->a(ILam/b;Z)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/layer/p;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, LbD/da;->m:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    invoke-virtual {v2, v0}, Lam/b;->k(I)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    invoke-virtual {v2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move v0, v1

    goto :goto_13

    :cond_26
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    move v0, v1

    goto :goto_13

    :cond_35
    invoke-virtual {v2, v5}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v2, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/layer/p;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/google/googlenav/T;->a(Lam/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/T;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    invoke-virtual {v2, v6}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v3

    invoke-virtual {v2, v6}, Lam/b;->e(I)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/T;->a(J)V

    :goto_65
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/T;->b(Ljava/lang/String;)V

    goto :goto_13

    :cond_70
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/T;->a(J)V

    goto :goto_65
.end method

.method public b()V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->c:Lcom/google/googlenav/layer/q;

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/layer/p;->d:Lcom/google/googlenav/T;

    iget-boolean v0, p0, Lcom/google/googlenav/layer/p;->e:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/layer/q;->a(Ljava/lang/String;Lcom/google/googlenav/T;Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/layer/p;->e:Z

    return v0
.end method
