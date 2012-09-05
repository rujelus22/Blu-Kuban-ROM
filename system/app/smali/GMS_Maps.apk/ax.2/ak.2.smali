.class public Lax/ak;
.super Lat/b;


# instance fields
.field private final a:Lax/al;

.field private b:Lax/am;

.field private final c:Z


# direct methods
.method public constructor <init>(Lax/al;)V
    .registers 3

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lax/am;

    invoke-direct {v0}, Lax/am;-><init>()V

    iput-object v0, p0, Lax/ak;->b:Lax/am;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/ak;->c:Z

    iput-object p1, p0, Lax/ak;->a:Lax/al;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x68

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->af:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    sget-object v2, LbD/bx;->ag:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lam/g;->c(Lam/b;II)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-static {v4, v1, v5}, Lam/g;->c(Lam/b;II)I

    move-result v4

    packed-switch v3, :pswitch_data_3a

    iget-object v2, p0, Lax/ak;->b:Lax/am;

    iput-boolean v0, v2, Lax/am;->a:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_24
    return v1

    :pswitch_25
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lax/ak;->b:Lax/am;

    iput-boolean v1, v3, Lax/am;->a:Z

    iget-object v3, p0, Lax/ak;->b:Lax/am;

    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v2

    if-ne v2, v1, :cond_37

    move v0, v1

    :cond_37
    iput-boolean v0, v3, Lax/am;->b:Z

    goto :goto_24

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lax/ak;->a:Lax/al;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lax/ak;->b:Lax/am;

    iget-boolean v0, v0, Lax/am;->a:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lax/ak;->a:Lax/al;

    iget-object v1, p0, Lax/ak;->b:Lax/am;

    iget-boolean v1, v1, Lax/am;->b:Z

    invoke-interface {v0, v1}, Lax/al;->a(Z)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lax/ak;->a:Lax/al;

    invoke-interface {v0}, Lax/al;->a()V

    goto :goto_16
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/ak;->l()Lax/am;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lax/am;
    .registers 2

    iget-object v0, p0, Lax/ak;->b:Lax/am;

    return-object v0
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
