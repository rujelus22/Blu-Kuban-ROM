.class public Ljl;
.super Ljava/lang/Object;
.source "NavigationPathUtil.java"


# direct methods
.method public static a(Ljava/util/List;LhW;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "LhW;",
            ")",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 39
    invoke-interface {p1}, LhW;->a()LhX;

    move-result-object v2

    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 41
    invoke-interface {v0}, LhW;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 42
    invoke-interface {v0}, LhK;->a()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 43
    invoke-virtual {v2, v0}, LhX;->a(LhK;)LhX;

    goto :goto_25

    .line 46
    :cond_3b
    invoke-virtual {v2}, LhX;->a()LhW;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_42
    return-object v1

    .line 48
    :cond_43
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method
