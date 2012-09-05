.class public Lax/aV;
.super Lat/b;


# instance fields
.field private final a:Lax/aW;

.field private b:Lax/aX;

.field private final c:Lam/b;


# direct methods
.method public constructor <init>(Lam/b;Lax/aW;)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lax/aX;

    invoke-direct {v0}, Lax/aX;-><init>()V

    iput-object v0, p0, Lax/aV;->b:Lax/aX;

    iput-object p2, p0, Lax/aV;->a:Lax/aW;

    iput-object p1, p0, Lax/aV;->c:Lam/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x69

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->ah:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lax/aV;->c:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->ai:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_2c

    iget-object v1, p0, Lax/aV;->b:Lax/aX;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lax/aX;->a(Lax/aX;Z)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_25
    return v3

    :pswitch_26
    iget-object v0, p0, Lax/aV;->b:Lax/aX;

    invoke-static {v0, v3}, Lax/aX;->a(Lax/aX;Z)Z

    goto :goto_25

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lax/aV;->a:Lax/aW;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lax/aV;->b:Lax/aX;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lax/aV;->b:Lax/aX;

    invoke-static {v0}, Lax/aX;->a(Lax/aX;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lax/aV;->a:Lax/aW;

    invoke-interface {v0}, Lax/aW;->a()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lax/aV;->a:Lax/aW;

    invoke-interface {v0}, Lax/aW;->b()V

    goto :goto_15
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/aV;->l()Lax/aX;

    move-result-object v0

    return-object v0
.end method

.method public l()Lax/aX;
    .registers 2

    iget-object v0, p0, Lax/aV;->b:Lax/aX;

    return-object v0
.end method
