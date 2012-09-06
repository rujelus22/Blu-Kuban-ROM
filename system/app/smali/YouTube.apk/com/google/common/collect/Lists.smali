.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/ArrayList;
    .registers 7
    .parameter

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    if-ltz p0, :cond_18

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    const-wide/16 v2, 0x5

    int-to-long v4, p0

    add-long/2addr v2, v4

    div-int/lit8 v0, p0, 0xa

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/cf;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 141
    :cond_16
    return-object v0
.end method
