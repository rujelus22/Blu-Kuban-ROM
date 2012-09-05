.class public final LK/bA;
.super LK/bs;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LK/bs;-><init>()V

    new-instance v0, LK/bB;

    invoke-direct {v0}, LK/bB;-><init>()V

    iput-object v0, p0, LK/bA;->a:LK/cd;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)LK/bA;
    .registers 6

    iget-object v0, p0, LK/bA;->a:LK/cd;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LK/cd;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_20
    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LK/bA;
    .registers 6

    iget-object v0, p0, LK/bA;->a:LK/cd;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LK/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;
    .registers 4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LK/bA;->a(Ljava/lang/Object;Ljava/lang/Iterable;)LK/bA;

    move-result-object v0

    return-object v0
.end method

.method public a()LK/bz;
    .registers 3

    iget-object v0, p0, LK/bA;->a:LK/cd;

    iget-object v1, p0, LK/bA;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, LK/bz;->a(LK/cd;Ljava/util/Comparator;)LK/bz;

    move-result-object v0

    return-object v0
.end method
