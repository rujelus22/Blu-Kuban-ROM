.class public Lcom/google/googlenav/F;
.super Lat/b;


# instance fields
.field private final a:Lcom/google/googlenav/G;

.field private b:Lcom/google/googlenav/H;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/G;)V
    .registers 3

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lcom/google/googlenav/H;

    invoke-direct {v0}, Lcom/google/googlenav/H;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    iput-object p1, p0, Lcom/google/googlenav/F;->a:Lcom/google/googlenav/G;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x7b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->ap:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/as;->e:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v1, 0x1

    sget-object v0, LbD/bx;->aq:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    if-nez v0, :cond_26

    move v0, v1

    :goto_10
    iput-boolean v0, v3, Lcom/google/googlenav/H;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    iget-boolean v0, v0, Lcom/google/googlenav/H;->a:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, v2, Lcom/google/googlenav/H;->b:Lam/b;

    :cond_25
    return v1

    :cond_26
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()V
    .registers 4

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lcom/google/googlenav/F;->a:Lcom/google/googlenav/G;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/F;->a:Lcom/google/googlenav/G;

    iget-object v1, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    iget-boolean v1, v1, Lcom/google/googlenav/H;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    iget-object v2, v2, Lcom/google/googlenav/H;->b:Lam/b;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/G;->a(ZLam/b;)V

    :cond_14
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/google/googlenav/H;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/F;->b:Lcom/google/googlenav/H;

    return-object v0
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/F;->i()Lcom/google/googlenav/H;

    move-result-object v0

    return-object v0
.end method
