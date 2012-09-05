.class Lx/S;
.super Lat/a;


# instance fields
.field private final a:Lt/r;

.field private final b:Ljava/util/List;

.field private c:Lam/b;

.field private d:Z


# direct methods
.method public constructor <init>(Lt/r;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lx/S;->a:Lt/r;

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lx/S;->b:Ljava/util/List;

    return-void
.end method

.method private k()I
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lx/S;->c:Lam/b;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lx/S;->c:Lam/b;

    invoke-virtual {v1, v0}, Lam/b;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_14

    :pswitch_f
    goto :goto_5

    :pswitch_10
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_12
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x76

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/cX;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lx/S;->a:Lt/r;

    invoke-virtual {v2}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Lt/q;)V
    .registers 6

    invoke-direct {p0}, Lx/S;->k()I

    move-result v0

    if-nez p1, :cond_23

    if-nez v0, :cond_23

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    iget-object v0, p0, Lx/S;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/R;

    iget-object v3, p0, Lx/S;->a:Lt/r;

    invoke-interface {v0, v3, v1, p1}, Lx/R;->a(Lt/r;ILt/q;)V

    goto :goto_10

    :cond_22
    return-void

    :cond_23
    move v1, v0

    goto :goto_a
.end method

.method public a(Lx/R;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lx/S;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/cX;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lx/S;->c:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public c()Lt/r;
    .registers 2

    iget-object v0, p0, Lx/S;->a:Lt/r;

    return-object v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/S;->d:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lx/S;->d:Z

    return v0
.end method

.method public g()Lam/b;
    .registers 3

    iget-object v0, p0, Lx/S;->c:Lam/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lx/S;->c:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_5
.end method

.method public h()Z
    .registers 3

    invoke-direct {p0}, Lx/S;->k()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
