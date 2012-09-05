.class public Lcom/google/googlenav/networkinitiated/i;
.super Lat/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/googlenav/networkinitiated/j;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/j;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/networkinitiated/i;->b:Lcom/google/googlenav/networkinitiated/j;

    iput p2, p0, Lcom/google/googlenav/networkinitiated/i;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x5b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->n:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/networkinitiated/i;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lam/b;->a(II)V

    new-instance v1, Lam/b;

    sget-object v2, LbD/bx;->K:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v3, v0}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    const/4 v1, 0x1

    sget-object v0, LbD/bx;->L:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/networkinitiated/i;->d:I

    return v1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/i;->b:Lcom/google/googlenav/networkinitiated/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/i;->b:Lcom/google/googlenav/networkinitiated/j;

    iget v1, p0, Lcom/google/googlenav/networkinitiated/i;->d:I

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/networkinitiated/j;->a(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
