.class public Lcom/google/googlenav/bZ;
.super Lat/a;


# instance fields
.field private final a:Lam/b;

.field private final b:Lcom/google/googlenav/ca;


# direct methods
.method public constructor <init>(Lam/b;Lcom/google/googlenav/ca;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bZ;->a:Lam/b;

    iput-object p2, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    return-void
.end method

.method private static a(ILam/b;Lam/b;)V
    .registers 4

    invoke-virtual {p1, p0}, Lam/b;->j(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p0}, Lam/b;->b(I)Z

    move-result v0

    invoke-virtual {p2, p0, v0}, Lam/b;->b(IZ)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x5e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->Y:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/bZ;->a:Lam/b;

    if-eqz v1, :cond_3a

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->y:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, Lcom/google/googlenav/bZ;->a:Lam/b;

    invoke-static {v5, v2, v1}, Lcom/google/googlenav/bZ;->a(ILam/b;Lam/b;)V

    iget-object v2, p0, Lcom/google/googlenav/bZ;->a:Lam/b;

    invoke-static {v4, v2, v1}, Lcom/google/googlenav/bZ;->a(ILam/b;Lam/b;)V

    iget-object v2, p0, Lcom/google/googlenav/bZ;->a:Lam/b;

    invoke-static {v6, v2, v1}, Lcom/google/googlenav/bZ;->a(ILam/b;Lam/b;)V

    iget-object v2, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v2, v2, Lcom/google/googlenav/ca;->e:Lam/b;

    if-eqz v2, :cond_37

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v3, v3, Lcom/google/googlenav/ca;->e:Lam/b;

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    :cond_37
    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    :cond_3a
    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->a:Lam/b;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->a:Lam/b;

    invoke-virtual {v0, v5, v1}, Lam/b;->a(ILam/b;)V

    :cond_4b
    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->b:Lam/b;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->b:Lam/b;

    invoke-virtual {v0, v6, v1}, Lam/b;->a(ILam/b;)V

    :cond_58
    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->c:Lam/b;

    if-eqz v1, :cond_66

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v2, v2, Lcom/google/googlenav/ca;->c:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILam/b;)V

    :cond_66
    iget-object v1, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v1, v1, Lcom/google/googlenav/ca;->d:Lam/b;

    if-eqz v1, :cond_74

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/bZ;->b:Lcom/google/googlenav/ca;

    iget-object v2, v2, Lcom/google/googlenav/ca;->d:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILam/b;)V

    :cond_74
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, LbD/bx;->Z:Lam/e;

    invoke-static {v1, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
