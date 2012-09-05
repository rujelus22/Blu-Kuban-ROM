.class public Lax/o;
.super Lat/a;


# instance fields
.field private a:Lax/by;


# direct methods
.method public constructor <init>(Lax/by;)V
    .registers 2

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/o;->a:Lax/by;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x5a

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->A:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->e:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, Lax/o;->a:Lax/by;

    invoke-virtual {v2}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lam/b;->b(IJ)V

    const/4 v2, 0x2

    iget-object v3, p0, Lax/o;->a:Lax/by;

    invoke-virtual {v3}, Lax/by;->e()Lam/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    invoke-virtual {v0, v4, v1}, Lam/b;->a(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->B:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_20

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :pswitch_1f
    return v3

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
