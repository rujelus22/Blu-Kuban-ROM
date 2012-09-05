.class final LK/bC;
.super LK/bn;


# instance fields
.field private final transient a:LK/bD;

.field private final transient b:LK/bn;


# direct methods
.method constructor <init>(LK/bD;LK/bn;)V
    .registers 3

    invoke-direct {p0}, LK/bn;-><init>()V

    iput-object p1, p0, LK/bC;->a:LK/bD;

    iput-object p2, p0, LK/bC;->b:LK/bn;

    return-void
.end method


# virtual methods
.method public a(II)LK/bn;
    .registers 6

    invoke-virtual {p0}, LK/bC;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/v;->a(III)V

    if-ne p1, p2, :cond_e

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, LK/cu;

    iget-object v1, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v1, p1, p2}, LK/bn;->a(II)LK/bn;

    move-result-object v1

    iget-object v2, p0, LK/bC;->a:LK/bD;

    invoke-virtual {v2}, LK/bD;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LK/cu;-><init>(LK/bn;Ljava/util/Comparator;)V

    invoke-virtual {v0}, LK/cu;->d()LK/bn;

    move-result-object v0

    goto :goto_d
.end method

.method public a(I)LK/cD;
    .registers 3

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0, p1}, LK/bn;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->a()Z

    move-result v0

    return v0
.end method

.method public b()LK/cC;
    .registers 2

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public c()LK/cD;
    .registers 2

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->c()LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/bC;->a:LK/bD;

    invoke-virtual {v0, p1}, LK/bD;->c(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0, p1}, LK/bn;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0, p1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, LK/bC;->a:LK/bD;

    invoke-virtual {v0, p1}, LK/bD;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bC;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, LK/bC;->a:LK/bD;

    invoke-virtual {v0, p1}, LK/bD;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, LK/bC;->c()LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, LK/bC;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/bC;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2}, LK/bC;->a(II)LK/bn;

    move-result-object v0

    return-object v0
.end method
