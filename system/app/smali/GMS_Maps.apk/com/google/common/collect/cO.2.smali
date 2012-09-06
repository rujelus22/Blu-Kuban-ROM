.class public final Lcom/google/common/collect/cO;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Iterable;)Lcom/google/common/collect/cM;
    .registers 1
    .parameter

    .prologue
    .line 711
    check-cast p0, Lcom/google/common/collect/cM;

    return-object p0
.end method

.method static a(Lcom/google/common/collect/cM;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 566
    new-instance v0, Lcom/google/common/collect/cQ;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cQ;-><init>(Lcom/google/common/collect/cM;)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/cM;Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 484
    :goto_5
    return v0

    .line 465
    :cond_6
    instance-of v0, p1, Lcom/google/common/collect/cM;

    if-eqz v0, :cond_50

    .line 466
    check-cast p1, Lcom/google/common/collect/cM;

    .line 473
    invoke-interface {p0}, Lcom/google/common/collect/cM;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/cM;->size()I

    move-result v3

    if-ne v0, v3, :cond_28

    invoke-interface {p0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2a

    :cond_28
    move v0, v2

    .line 475
    goto :goto_5

    .line 477
    :cond_2a
    invoke-interface {p1}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    .line 478
    invoke-interface {v0}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/common/collect/cM;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/cN;->b()I

    move-result v0

    if-eq v4, v0, :cond_32

    move v0, v2

    .line 479
    goto :goto_5

    :cond_4e
    move v0, v1

    .line 482
    goto :goto_5

    :cond_50
    move v0, v2

    .line 484
    goto :goto_5
.end method

.method static a(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    const/4 v0, 0x0

    .line 503
    :goto_7
    return v0

    .line 495
    :cond_8
    instance-of v0, p1, Lcom/google/common/collect/cM;

    if-eqz v0, :cond_30

    .line 496
    invoke-static {p1}, Lcom/google/common/collect/cO;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/cM;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    .line 498
    invoke-interface {v0}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/cN;->b()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/collect/cM;->a(Ljava/lang/Object;I)I

    goto :goto_18

    .line 501
    :cond_30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/bZ;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 503
    :cond_37
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static b(Lcom/google/common/collect/cM;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 639
    new-instance v0, Lcom/google/common/collect/cS;

    invoke-interface {p0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/cS;-><init>(Lcom/google/common/collect/cM;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 511
    instance-of v0, p1, Lcom/google/common/collect/cM;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/cM;

    invoke-interface {p1}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object p1

    .line 514
    :cond_a
    invoke-interface {p0}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/cM;)I
    .registers 7
    .parameter

    .prologue
    .line 696
    const-wide/16 v0, 0x0

    .line 697
    invoke-interface {p0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    .line 698
    invoke-interface {v0}, Lcom/google/common/collect/cN;->b()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_b

    .line 700
    :cond_20
    invoke-static {v1, v2}, LJ/a;->a(J)I

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/cM;Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 522
    instance-of v0, p1, Lcom/google/common/collect/cM;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/cM;

    invoke-interface {p1}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object p1

    .line 525
    :cond_a
    invoke-interface {p0}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
