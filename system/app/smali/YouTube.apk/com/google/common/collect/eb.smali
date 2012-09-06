.class public final Lcom/google/common/collect/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/v;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/google/common/collect/ec;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ec;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/v;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 328
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/cf;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 330
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 332
    :goto_c
    return v0

    :cond_d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ee;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_c
.end method

.method static a(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 306
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Collection;

    :goto_6
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_6
.end method
