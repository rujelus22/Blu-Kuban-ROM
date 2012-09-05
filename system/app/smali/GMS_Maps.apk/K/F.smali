.class LK/F;
.super LK/A;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:LK/r;


# direct methods
.method constructor <init>(LK/r;Ljava/lang/Object;Ljava/util/SortedSet;LK/A;)V
    .registers 5

    iput-object p1, p0, LK/F;->a:LK/r;

    invoke-direct {p0, p1, p2, p3, p4}, LK/A;-><init>(LK/r;Ljava/lang/Object;Ljava/util/Collection;LK/A;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/F;->a()V

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/SortedSet;
    .registers 2

    invoke-virtual {p0}, LK/F;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7

    invoke-virtual {p0}, LK/F;->a()V

    new-instance v0, LK/F;

    iget-object v1, p0, LK/F;->a:LK/r;

    invoke-virtual {p0}, LK/F;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LK/F;-><init>(LK/r;Ljava/lang/Object;Ljava/util/SortedSet;LK/A;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object p0

    goto :goto_19
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/F;->a()V

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 8

    invoke-virtual {p0}, LK/F;->a()V

    new-instance v0, LK/F;

    iget-object v1, p0, LK/F;->a:LK/r;

    invoke-virtual {p0}, LK/F;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LK/F;-><init>(LK/r;Ljava/lang/Object;Ljava/util/SortedSet;LK/A;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object p0

    goto :goto_19
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7

    invoke-virtual {p0}, LK/F;->a()V

    new-instance v0, LK/F;

    iget-object v1, p0, LK/F;->a:LK/r;

    invoke-virtual {p0}, LK/F;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, LK/F;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object v4

    if-nez v4, :cond_1d

    :goto_19
    invoke-direct {v0, v1, v2, v3, p0}, LK/F;-><init>(LK/r;Ljava/lang/Object;Ljava/util/SortedSet;LK/A;)V

    return-object v0

    :cond_1d
    invoke-virtual {p0}, LK/F;->f()LK/A;

    move-result-object p0

    goto :goto_19
.end method
