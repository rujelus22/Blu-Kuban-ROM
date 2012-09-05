.class public Lax/ap;
.super Lat/a;


# instance fields
.field private a:LaX/f;

.field private b:I

.field private c:Lam/b;


# direct methods
.method public constructor <init>(ILaX/f;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lax/ap;->a:LaX/f;

    iput p1, p0, Lax/ap;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x59

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->x:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget v2, p0, Lax/ap;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->y:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v2

    packed-switch v1, :pswitch_data_24

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_1f
    return v3

    :pswitch_20
    iput-object v0, p0, Lax/ap;->c:Lam/b;

    goto :goto_1f

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lax/ap;->c:Lam/b;

    if-eqz v0, :cond_20

    new-instance v0, Lax/bz;

    iget-object v1, p0, Lax/ap;->c:Lam/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lax/bz;-><init>(Lam/b;J)V

    iget-object v1, p0, Lax/ap;->a:LaX/f;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lax/ap;->a:LaX/f;

    invoke-interface {v1, v0}, LaX/f;->a(Lax/bz;)V

    :cond_20
    return-void
.end method
