.class final Lale;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1b

    .line 50
    check-cast p1, Ljava/util/SortedSet;

    .line 51
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    if-nez v0, :cond_16

    .line 53
    invoke-static {}, LakG;->b()LakG;

    move-result-object v0

    .line 60
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_1b
    instance-of v0, p1, Lald;

    if-eqz v0, :cond_26

    .line 56
    check-cast p1, Lald;

    invoke-interface {p1}, Lald;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_16

    .line 58
    :cond_26
    const/4 v0, 0x0

    goto :goto_16
.end method
