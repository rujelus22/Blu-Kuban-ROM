.class public Lax/ah;
.super Lat/b;


# instance fields
.field private a:Laf/h;

.field private b:Lax/aj;

.field private c:Lax/ai;


# direct methods
.method public constructor <init>(Laf/h;Lax/ai;)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    new-instance v0, Lax/aj;

    invoke-direct {v0}, Lax/aj;-><init>()V

    iput-object v0, p0, Lax/ah;->b:Lax/aj;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/h;

    iput-object v0, p0, Lax/ah;->a:Laf/h;

    iput-object p2, p0, Lax/ah;->c:Lax/ai;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x57

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    new-instance v1, Lam/b;

    sget-object v0, LbD/bx;->M:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lax/ah;->a:Laf/h;

    invoke-virtual {v2}, Laf/h;->b()I

    move-result v2

    if-ge v0, v2, :cond_1d

    const/4 v2, 0x1

    iget-object v3, p0, Lax/ah;->a:Laf/h;

    invoke-virtual {v3, v0}, Laf/h;->a(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    sget-object v1, LbD/bx;->N:Lam/e;

    invoke-static {v1, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-static {v1, v5, v4}, Lam/g;->c(Lam/b;II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v3, v5, v4}, Lam/g;->c(Lam/b;II)I

    move-result v3

    packed-switch v2, :pswitch_data_4e

    iget-object v1, p0, Lax/ah;->b:Lax/aj;

    iput-boolean v0, v1, Lax/aj;->a:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_25
    return v5

    :pswitch_26
    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_2f
    if-ge v0, v2, :cond_3b

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lam/b;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v1, p0, Lax/ah;->b:Lax/aj;

    iput-boolean v5, v1, Lax/aj;->a:Z

    iget-object v1, p0, Lax/ah;->b:Lax/aj;

    iput-object v0, v1, Lax/aj;->b:[Lam/b;

    goto :goto_25

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lax/ah;->c:Lax/ai;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lax/ah;->b:Lax/aj;

    iget-boolean v0, v0, Lax/aj;->a:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lax/ah;->c:Lax/ai;

    iget-object v1, p0, Lax/ah;->b:Lax/aj;

    iget-object v1, v1, Lax/aj;->b:[Lam/b;

    invoke-interface {v0, v1}, Lax/ai;->a([Lam/b;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lax/ah;->c:Lax/ai;

    invoke-interface {v0}, Lax/ai;->a()V

    goto :goto_16
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/ah;->l()Lax/aj;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lax/aj;
    .registers 2

    iget-object v0, p0, Lax/ah;->b:Lax/aj;

    return-object v0
.end method
