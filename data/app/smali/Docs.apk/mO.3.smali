.class public LmO;
.super Ljava/lang/Object;
.source "DiscussionUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/SortedSet;)Lna;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Lna;",
            ">;)",
            "Lna;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-nez p1, :cond_8

    move-object v0, v1

    .line 40
    :goto_7
    return-object v0

    .line 34
    :cond_8
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 35
    invoke-interface {v0}, Lna;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_23
    move-object v0, v1

    .line 40
    goto :goto_7
.end method

.method public static a(Lna;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-interface {p0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_9
    const-string v3, "isDiscussionResolved only operates on a discussion subtree"

    invoke-static {v0, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 51
    invoke-interface {p0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LaiT;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 52
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lna;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_21
    return v1

    :cond_22
    move v0, v2

    .line 49
    goto :goto_9

    :cond_24
    move v1, v2

    .line 52
    goto :goto_21
.end method
