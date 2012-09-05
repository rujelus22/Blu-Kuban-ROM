.class final LK/cu;
.super LK/bD;


# instance fields
.field private final transient b:LK/bn;


# direct methods
.method constructor <init>(LK/bn;Ljava/util/Comparator;)V
    .registers 4

    invoke-direct {p0, p2}, LK/bD;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, LK/cu;->b:LK/bn;

    invoke-virtual {p1}, LK/bn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(II)LK/bD;
    .registers 6

    if-ge p1, p2, :cond_10

    new-instance v0, LK/cu;

    iget-object v1, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v1, p1, p2}, LK/bn;->a(II)LK/bn;

    move-result-object v1

    iget-object v2, p0, LK/cu;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, LK/cu;-><init>(LK/bn;Ljava/util/Comparator;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, LK/cu;->a:Ljava/util/Comparator;

    invoke-static {v0}, LK/cu;->a(Ljava/util/Comparator;)LK/bD;

    move-result-object v0

    goto :goto_f
.end method

.method private g(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, LK/cu;->a:Ljava/util/Comparator;

    iget-object v1, p0, LK/cu;->b:LK/bn;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, LK/cu;->g(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/Object;)LK/bD;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, LK/cu;->h(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, LK/cu;->a(II)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;
    .registers 5

    invoke-direct {p0, p1}, LK/cu;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, LK/cu;->h(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, LK/cu;->a(II)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->a()Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/Object;)LK/bD;
    .registers 4

    invoke-direct {p0, p1}, LK/cu;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, LK/cu;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, LK/cu;->a(II)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method public b()LK/cC;
    .registers 2

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, -0x1

    if-nez p1, :cond_4

    :goto_3
    return v1

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, LK/cu;->g(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_1a

    move-result v0

    if-ltz v0, :cond_18

    iget-object v2, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v2, v0}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_16
    move v1, v0

    goto :goto_3

    :cond_18
    move v0, v1

    goto :goto_16

    :catch_1a
    move-exception v0

    goto :goto_3
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, LK/cu;->g(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LK/cu;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, LK/cu;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_17

    :cond_12
    invoke-super {p0, p1}, LK/bD;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, LK/cu;->b()LK/cC;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, LK/cu;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    goto :goto_16

    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_3e} :catch_44
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_3e} :catch_47

    move-result-object v0

    goto :goto_23

    :cond_40
    if-lez v5, :cond_23

    move v0, v2

    goto :goto_16

    :catch_44
    move-exception v0

    move v0, v2

    goto :goto_16

    :catch_47
    move-exception v0

    move v0, v2

    goto :goto_16

    :cond_4a
    move v0, v2

    goto :goto_16
.end method

.method e()LK/bn;
    .registers 3

    new-instance v0, LK/bC;

    iget-object v1, p0, LK/cu;->b:LK/bn;

    invoke-direct {v0, p0, v1}, LK/bC;-><init>(LK/bD;LK/bn;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, LK/cu;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v2, p0, LK/cu;->a:Ljava/util/Comparator;

    invoke-static {p1, v2}, LK/cu;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :try_start_25
    invoke-virtual {p0}, LK/cu;->b()LK/cC;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3f

    invoke-virtual {p0, v4, v5}, LK/cu;->c(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_3c} :catch_41
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_3c} :catch_44

    move-result v4

    if-eqz v4, :cond_29

    :cond_3f
    move v0, v1

    goto :goto_4

    :catch_41
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_44
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_47
    invoke-virtual {p0, p1}, LK/cu;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4
.end method

.method public first()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/cu;->b:LK/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/cu;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {p0}, LK/cu;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/cu;->b:LK/bn;

    invoke-virtual {v0, p1}, LK/bn;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
