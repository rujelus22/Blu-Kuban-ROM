.class public Lax/an;
.super Lat/a;


# instance fields
.field private final a:Lax/ao;

.field private final b:I

.field private c:Lam/b;


# direct methods
.method public constructor <init>(Lax/ao;I)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/an;->a:Lax/ao;

    iput p2, p0, Lax/an;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x6f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->al:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->G:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILam/b;)V

    iget v2, p0, Lax/an;->b:I

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->am:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v2

    packed-switch v1, :pswitch_data_28

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/g;->a(I)V

    :pswitch_1f
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/an;->c:Lam/b;

    return v3

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lat/a;->b()V

    iget-object v0, p0, Lax/an;->a:Lax/ao;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lax/an;->c:Lam/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lax/an;->a:Lax/ao;

    iget-object v1, p0, Lax/an;->c:Lam/b;

    invoke-interface {v0, v1}, Lax/ao;->a(Lam/b;)V

    :cond_12
    return-void
.end method
