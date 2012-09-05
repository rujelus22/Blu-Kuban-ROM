.class public Lcom/google/googlenav/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;

.field private final b:LaE/f;

.field private final c:Lcom/google/googlenav/i;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/h;-><init>(Lam/b;LaE/f;)V

    return-void
.end method

.method public constructor <init>(Lam/b;LaE/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/h;->a:Lam/b;

    iput-object p2, p0, Lcom/google/googlenav/h;->b:LaE/f;

    sget-object v0, Lcom/google/googlenav/i;->c:Lcom/google/googlenav/i;

    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ah;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/h;->b:LaE/f;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    :goto_14
    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    return-void

    :cond_17
    sget-object v0, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    goto :goto_14
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    return-object v0
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method public a(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Lam/b;->b(IZ)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    invoke-static {v0}, Lcom/google/googlenav/ui/be;->a(Lam/b;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/h;->f()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public m()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/h;->a:Lam/b;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public n()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->l()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/h;->a:Lam/b;

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public o()Lcom/google/googlenav/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/i;

    return-object v0
.end method
