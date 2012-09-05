.class public Lax/af;
.super Lat/a;


# instance fields
.field private a:Z

.field private final b:Lax/ag;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLax/ag;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/af;->a:Z

    iput-object p2, p0, Lax/af;->b:Lax/ag;

    iput-boolean p1, p0, Lax/af;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->ac:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->K:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-boolean v2, p0, Lax/af;->a:Z

    invoke-virtual {v1, v3, v2}, Lam/b;->b(IZ)V

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    sget-object v1, LbD/bx;->ad:Lam/e;

    invoke-static {v1, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-static {v2, v6, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v3, v6, v4}, Lam/g;->c(Lam/b;II)I

    move-result v3

    packed-switch v1, :pswitch_data_58

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_22
    return v6

    :pswitch_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lax/af;->c:Ljava/util/List;

    invoke-virtual {v2, v7}, Lam/b;->l(I)I

    move-result v3

    move v1, v0

    :goto_2f
    if-ge v1, v3, :cond_41

    invoke-virtual {v2, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    iget-object v5, p0, Lax/af;->c:Ljava/util/List;

    invoke-static {v4}, Lax/aL;->a(Lam/b;)Lax/aL;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    invoke-virtual {v2, v8}, Lam/b;->l(I)I

    move-result v1

    :goto_45
    if-ge v0, v1, :cond_22

    invoke-virtual {v2, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lax/af;->c:Ljava/util/List;

    invoke-static {v3}, Lax/aL;->b(Lam/b;)Lax/aL;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lat/a;->b()V

    iget-object v0, p0, Lax/af;->b:Lax/ag;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lax/af;->c:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lax/af;->b:Lax/ag;

    iget-object v1, p0, Lax/af;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lax/ag;->a(Ljava/util/List;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lax/af;->b:Lax/ag;

    invoke-interface {v0}, Lax/ag;->a()V

    goto :goto_12
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, Lax/af;->b:Lax/ag;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lax/af;->b:Lax/ag;

    invoke-interface {v0}, Lax/ag;->a()V

    :cond_9
    return-void
.end method
