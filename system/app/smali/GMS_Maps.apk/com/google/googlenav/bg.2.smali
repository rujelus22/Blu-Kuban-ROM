.class public Lcom/google/googlenav/bg;
.super Lat/b;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/bh;

.field private c:Lcom/google/googlenav/bi;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/bh;)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lcom/google/googlenav/bi;

    invoke-direct {v0}, Lcom/google/googlenav/bi;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bg;->c:Lcom/google/googlenav/bi;

    iput-object p1, p0, Lcom/google/googlenav/bg;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/bg;->b:Lcom/google/googlenav/bh;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x7a

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->ar:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bg;->i()Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v1, 0x1

    sget-object v0, LbD/bx;->as:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/googlenav/bg;->c:Lcom/google/googlenav/bi;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_10
    iput-boolean v0, v3, Lcom/google/googlenav/bi;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/bg;->c:Lcom/google/googlenav/bi;

    iget-boolean v0, v0, Lcom/google/googlenav/bi;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lam/b;->h(I)Lam/b;

    :cond_1c
    return v1

    :cond_1d
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()V
    .registers 4

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lcom/google/googlenav/bg;->b:Lcom/google/googlenav/bh;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/bg;->b:Lcom/google/googlenav/bh;

    iget-object v1, p0, Lcom/google/googlenav/bg;->c:Lcom/google/googlenav/bi;

    iget-boolean v1, v1, Lcom/google/googlenav/bi;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/bg;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/bh;->a(ZLjava/util/List;)V

    :cond_12
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method i()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbF/as;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/bg;->a:Ljava/util/List;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/bg;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/q;->a(Ljava/util/List;)Lcom/google/googlenav/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/google/googlenav/q;->a()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_19
    return-object v0
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bg;->l()Lcom/google/googlenav/bi;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/googlenav/bi;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bg;->c:Lcom/google/googlenav/bi;

    return-object v0
.end method
