.class Lax/bv;
.super Lat/a;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lax/bw;

.field private c:Lam/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lax/bw;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/bv;->a:Ljava/util/List;

    iput-object p2, p0, Lax/bv;->b:Lax/bw;

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    invoke-virtual {p0}, Lax/bv;->h_()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lax/bv;->b:Lax/bw;

    invoke-interface {v0}, Lax/bw;->a()V

    :cond_b
    invoke-super {p0}, Lat/a;->X()V

    return-void
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v1, Lam/b;

    sget-object v0, LbD/dT;->h:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lax/bv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lam/b;->a(II)V

    goto :goto_d

    :cond_22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/dT;->i:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/bv;->c:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lax/bv;->c:Lam/b;

    invoke-static {v0, v3, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :goto_b
    iget-object v0, p0, Lax/bv;->c:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iget-object v1, p0, Lax/bv;->b:Lax/bw;

    invoke-interface {v1, v0}, Lax/bw;->a(I)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lax/bv;->b:Lax/bw;

    iget-object v1, p0, Lax/bv;->c:Lam/b;

    invoke-interface {v0, v1}, Lax/bw;->a(Lam/b;)V

    goto :goto_b

    :pswitch_24
    iget-object v0, p0, Lax/bv;->b:Lax/bw;

    invoke-interface {v0}, Lax/bw;->b()V

    goto :goto_b

    :pswitch_2a
    iget-object v0, p0, Lax/bv;->b:Lax/bw;

    invoke-interface {v0}, Lax/bw;->c()V

    goto :goto_b

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
