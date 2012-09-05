.class LK/as;
.super Ljava/util/AbstractQueue;


# instance fields
.field final a:LK/am;

.field final synthetic b:LK/an;


# direct methods
.method constructor <init>(LK/an;)V
    .registers 3

    iput-object p1, p0, LK/as;->b:LK/an;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, LK/at;

    invoke-direct {v0, p0}, LK/at;-><init>(LK/as;)V

    iput-object v0, p0, LK/as;->a:LK/am;

    return-void
.end method


# virtual methods
.method public a()LK/am;
    .registers 3

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    iget-object v1, p0, LK/as;->a:LK/am;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public a(LK/am;)Z
    .registers 4

    invoke-interface {p1}, LK/am;->g()LK/am;

    move-result-object v0

    invoke-interface {p1}, LK/am;->f()LK/am;

    move-result-object v1

    invoke-static {v0, v1}, LK/P;->b(LK/am;LK/am;)V

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->g()LK/am;

    move-result-object v0

    invoke-static {v0, p1}, LK/P;->b(LK/am;LK/am;)V

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-static {p1, v0}, LK/P;->b(LK/am;LK/am;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()LK/am;
    .registers 3

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    iget-object v1, p0, LK/as;->a:LK/am;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, LK/as;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    :goto_6
    iget-object v1, p0, LK/as;->a:LK/am;

    if-eq v0, v1, :cond_13

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v1

    invoke-static {v0}, LK/P;->e(LK/am;)V

    move-object v0, v1

    goto :goto_6

    :cond_13
    iget-object v0, p0, LK/as;->a:LK/am;

    iget-object v1, p0, LK/as;->a:LK/am;

    invoke-interface {v0, v1}, LK/am;->a(LK/am;)V

    iget-object v0, p0, LK/as;->a:LK/am;

    iget-object v1, p0, LK/as;->a:LK/am;

    invoke-interface {v0, v1}, LK/am;->b(LK/am;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, LK/am;

    invoke-interface {p1}, LK/am;->f()LK/am;

    move-result-object v0

    sget-object v1, LK/ak;->a:LK/ak;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    iget-object v1, p0, LK/as;->a:LK/am;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, LK/au;

    invoke-virtual {p0}, LK/as;->a()LK/am;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LK/au;-><init>(LK/as;LK/am;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, LK/am;

    invoke-virtual {p0, p1}, LK/as;->a(LK/am;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/as;->a()LK/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/as;->b()LK/am;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, LK/am;

    invoke-interface {p1}, LK/am;->g()LK/am;

    move-result-object v0

    invoke-interface {p1}, LK/am;->f()LK/am;

    move-result-object v1

    invoke-static {v0, v1}, LK/P;->b(LK/am;LK/am;)V

    invoke-static {p1}, LK/P;->e(LK/am;)V

    sget-object v0, LK/ak;->a:LK/ak;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public size()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, LK/as;->a:LK/am;

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    :goto_7
    iget-object v2, p0, LK/as;->a:LK/am;

    if-eq v0, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, LK/am;->f()LK/am;

    move-result-object v0

    goto :goto_7

    :cond_12
    return v1
.end method
