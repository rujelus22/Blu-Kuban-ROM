.class public Lcom/google/googlenav/l;
.super Lat/a;


# instance fields
.field private final a:Lcom/google/googlenav/m;

.field private final b:Lam/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/m;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    new-instance v0, Lam/b;

    sget-object v1, LbD/aL;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/l;->b:Lam/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x49

    return v0
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-void
.end method

.method public a(II)V
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/aL;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2, p1}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/l;->b:Lam/b;

    invoke-virtual {v1, v2, v0}, Lam/b;->a(ILam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lam/b;

    invoke-virtual {v0}, Lam/b;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    invoke-interface {v0, p1}, Lcom/google/googlenav/m;->a(Ljava/io/DataInput;)V

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 2

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    invoke-interface {v0}, Lcom/google/googlenav/m;->a()V

    :cond_9
    return-void
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ClientFeatureRestrictionsRequest"

    return-object v0
.end method
