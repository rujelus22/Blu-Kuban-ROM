.class public final Lajk;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method static a(I)I
    .registers 5
    .parameter

    .prologue
    .line 99
    if-ltz p0, :cond_13

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 102
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, LalA;->a(J)I

    move-result v0

    return v0

    .line 99
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static a(Ljava/util/List;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 892
    const/4 v0, 0x1

    .line 893
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 894
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_16

    const/4 v0, 0x0

    :goto_14
    add-int/2addr v0, v3

    goto :goto_5

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    .line 896
    :cond_1b
    return v0
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lajk;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, LahZ;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lajk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 141
    :cond_15
    return-object v0
.end method

.method public static a()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 903
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 912
    :cond_8
    :goto_8
    return v0

    .line 906
    :cond_9
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_f

    move v0, v1

    .line 907
    goto :goto_8

    .line 910
    :cond_f
    check-cast p1, Ljava/util/List;

    .line 912
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_29

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, LaiY;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_29
    move v0, v1

    goto :goto_8
.end method
