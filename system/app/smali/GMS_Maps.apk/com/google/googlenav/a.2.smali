.class public Lcom/google/googlenav/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/a;->a:Lam/b;

    return-void
.end method


# virtual methods
.method public a()Lam/b;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lam/b;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/16 v1, 0x12

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/a;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/a;->a:Lam/b;

    return-object v0
.end method
