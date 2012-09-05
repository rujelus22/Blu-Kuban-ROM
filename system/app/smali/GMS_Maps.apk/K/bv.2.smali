.class abstract LK/bv;
.super LK/bu;


# instance fields
.field final transient a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, LK/bu;-><init>()V

    iput-object p1, p0, LK/bv;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()LK/cC;
    .registers 2

    iget-object v0, p0, LK/bv;->a:[Ljava/lang/Object;

    invoke-static {v0}, LK/bI;->a([Ljava/lang/Object;)LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, LK/bv;

    if-nez v2, :cond_e

    invoke-super {p0, p1}, LK/bu;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4

    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, LK/bv;->size()I

    move-result v3

    if-le v2, v3, :cond_1a

    move v0, v1

    goto :goto_4

    :cond_1a
    check-cast p1, LK/bv;

    iget-object v3, p1, LK/bv;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_20
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, LK/bv;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    move v0, v1

    goto :goto_4

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method e()LK/bn;
    .registers 3

    new-instance v0, LK/bh;

    iget-object v1, p0, LK/bv;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, LK/bh;-><init>([Ljava/lang/Object;LK/bi;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bv;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/bv;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, LK/bv;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LK/bv;->a:[Ljava/lang/Object;

    invoke-virtual {p0}, LK/bv;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, LK/bv;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_12

    invoke-static {p1, v0}, LK/cf;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_c
    :goto_c
    iget-object v1, p0, LK/bv;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_12
    array-length v1, p1

    if-le v1, v0, :cond_c

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_c
.end method
