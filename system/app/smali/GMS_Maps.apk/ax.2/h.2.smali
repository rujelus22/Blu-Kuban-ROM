.class public Lax/h;
.super Lat/b;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Lam/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Lat/b;-><init>()V

    iput-object p1, p0, Lax/h;->a:Ljava/util/List;

    iput-object p2, p0, Lax/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x79

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 10

    const/4 v7, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/bx;->an:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v2, Lam/b;

    sget-object v0, LbF/ax;->b:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lax/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/g;->a()Lam/b;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_15

    :cond_29
    const/4 v0, 0x3

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lam/b;->a(II)V

    iget-object v0, p0, Lax/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lam/b;->a(IJ)V

    goto :goto_34

    :cond_49
    invoke-virtual {v1, v7, v2}, Lam/b;->a(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->ao:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/h;->d:Lam/b;

    iget-object v0, p0, Lax/h;->d:Lam/b;

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iget-object v1, p0, Lax/h;->d:Lam/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    packed-switch v0, :pswitch_data_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/h;->c:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_28
    return v3

    :pswitch_29
    iput-boolean v3, p0, Lax/h;->c:Z

    goto :goto_28

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/h;->l()Lax/i;

    move-result-object v0

    return-object v0
.end method

.method public l()Lax/i;
    .registers 4

    new-instance v0, Lax/i;

    invoke-direct {v0}, Lax/i;-><init>()V

    iget-boolean v1, p0, Lax/h;->c:Z

    iput-boolean v1, v0, Lax/i;->a:Z

    iget-object v1, p0, Lax/h;->d:Lam/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    iput-object v1, v0, Lax/i;->b:Lam/b;

    return-object v0
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
