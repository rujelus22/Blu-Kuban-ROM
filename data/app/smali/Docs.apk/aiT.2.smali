.class public final LaiT;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method static synthetic a(Ljava/lang/Iterable;)Lalu;
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-static {p0}, LaiT;->b(Ljava/lang/Iterable;)Lalu;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v0, LaiU;

    invoke-direct {v0, p0}, LaiU;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;LafH;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "LafH",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, LaiW;

    invoke-direct {v0, p0, p1}, LaiW;-><init>(Ljava/lang/Iterable;LafH;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LaiT;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 822
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 823
    check-cast v0, Ljava/util/Collection;

    .line 824
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 844
    :goto_d
    return-object p1

    .line 829
    :cond_e
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_19

    .line 830
    check-cast p0, Ljava/util/List;

    .line 831
    invoke-static {p0}, LaiT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_d

    .line 839
    :cond_19
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_24

    .line 840
    check-cast p0, Ljava/util/SortedSet;

    .line 841
    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    goto :goto_d

    .line 844
    :cond_24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, LaiY;->a(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_d
.end method

.method private static a(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 848
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Iterable;)Lalu;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lalu",
            "<",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    new-instance v1, LaiV;

    invoke-direct {v1, v0}, LaiV;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 792
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_17

    .line 793
    check-cast p0, Ljava/util/List;

    .line 794
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 795
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 797
    :cond_12
    invoke-static {p0}, LaiT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 810
    :goto_16
    return-object v0

    .line 805
    :cond_17
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_22

    .line 806
    check-cast p0, Ljava/util/SortedSet;

    .line 807
    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    .line 810
    :cond_22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiY;->b(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16
.end method
