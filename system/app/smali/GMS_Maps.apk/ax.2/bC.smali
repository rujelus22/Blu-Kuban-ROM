.class public Lax/bC;
.super Lat/a;


# instance fields
.field private final a:Laf/h;

.field private b:Laf/h;


# direct methods
.method public constructor <init>(Laf/h;Laf/h;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/bC;->a:Laf/h;

    iput-object p2, p0, Lax/bC;->b:Laf/h;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x36

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Lam/b;

    sget-object v1, LbD/bx;->E:Lam/e;

    invoke-direct {v2, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lax/bC;->a:Laf/h;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lax/bC;->a:Laf/h;

    invoke-virtual {v1}, Laf/h;->b()I

    move-result v3

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_22

    const/4 v4, 0x1

    iget-object v5, p0, Lax/bC;->a:Laf/h;

    invoke-virtual {v5, v1}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    iget-object v1, p0, Lax/bC;->b:Laf/h;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lax/bC;->b:Laf/h;

    invoke-virtual {v1}, Laf/h;->b()I

    move-result v1

    :goto_2c
    if-ge v0, v1, :cond_3b

    const/4 v3, 0x2

    iget-object v4, p0, Lax/bC;->b:Laf/h;

    invoke-virtual {v4, v0}, Laf/h;->a(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3b
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->F:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_2a

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_1f
    return v3

    :pswitch_20
    invoke-virtual {p0, v3}, Lax/bC;->a(Z)V

    goto :goto_1f

    :pswitch_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lax/bC;->a(Z)V

    goto :goto_1f

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method
