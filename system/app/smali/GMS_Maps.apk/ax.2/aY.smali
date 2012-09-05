.class public Lax/aY;
.super Lat/b;


# instance fields
.field private final a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Lax/aZ;

.field private f:Lax/ba;


# direct methods
.method public constructor <init>(ILax/aZ;)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lax/ba;

    invoke-direct {v0}, Lax/ba;-><init>()V

    iput-object v0, p0, Lax/aY;->f:Lax/ba;

    iput p1, p0, Lax/aY;->d:I

    iput-object p2, p0, Lax/aY;->e:Lax/aZ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/aY;->a:Z

    return-void
.end method

.method public constructor <init>(ZIILax/aZ;)V
    .registers 6

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lax/ba;

    invoke-direct {v0}, Lax/ba;-><init>()V

    iput-object v0, p0, Lax/aY;->f:Lax/ba;

    iput-boolean p1, p0, Lax/aY;->b:Z

    iput p2, p0, Lax/aY;->c:I

    iput p3, p0, Lax/aY;->d:I

    iput-object p4, p0, Lax/aY;->e:Lax/aZ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/aY;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x33

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget v1, p0, Lax/aY;->d:I

    invoke-virtual {v0, v3, v1}, Lam/b;->h(II)V

    iget-boolean v1, p0, Lax/aY;->a:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    iget-boolean v2, p0, Lax/aY;->b:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lax/aY;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_1d
    new-instance v1, Lam/b;

    sget-object v2, LbD/bx;->f:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v3, v0}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->g:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lax/aY;->f:Lax/ba;

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v2

    invoke-static {v1, v2}, Lax/ba;->a(Lax/ba;I)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lax/aY;->f:Lax/ba;

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    invoke-static {v1, v0}, Lax/ba;->b(Lax/ba;I)I

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/aY;->f:Lax/ba;

    invoke-static {v1}, Lax/ba;->a(Lax/ba;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(I)V

    return v3
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lax/aY;->f:Lax/ba;

    invoke-static {v0}, Lax/ba;->b(Lax/ba;)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p0, Lax/aY;->e:Lax/aZ;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lax/aY;->e:Lax/aZ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lax/aZ;->a(I)V

    goto :goto_9

    :pswitch_15
    iget-object v0, p0, Lax/aY;->e:Lax/aZ;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lax/aY;->e:Lax/aZ;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lax/aZ;->a(I)V

    goto :goto_9

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/aY;->l()Lax/ba;

    move-result-object v0

    return-object v0
.end method

.method public l()Lax/ba;
    .registers 2

    iget-object v0, p0, Lax/aY;->f:Lax/ba;

    return-object v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
