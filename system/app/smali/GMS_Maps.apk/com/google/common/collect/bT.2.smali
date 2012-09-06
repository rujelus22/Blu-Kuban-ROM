.class public final Lcom/google/common/collect/bT;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;)I
    .registers 2
    .parameter

    .prologue
    .line 80
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Lcom/google/common/collect/bX;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bX;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/D;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 155
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_15

    .line 156
    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Q;

    invoke-static {p0, v0}, Lcom/google/common/collect/bT;->a(Ljava/util/List;Lcom/google/common/base/Q;)Z

    move-result v0

    .line 159
    :goto_14
    return v0

    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Lcom/google/common/base/Q;)Z

    move-result v0

    goto :goto_14
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/Q;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 164
    move v0, v1

    move v2, v1

    .line 167
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 168
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 169
    invoke-interface {p1, v3}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 170
    if-le v2, v0, :cond_18

    .line 171
    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 178
    :cond_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 179
    if-eq v2, v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static b(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v0, Lcom/google/common/collect/bW;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bW;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Q;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 199
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 210
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bZ;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .parameter

    .prologue
    .line 426
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v0, Lcom/google/common/collect/bU;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bU;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Iterable;)Lcom/google/common/collect/dE;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/common/collect/bT;->f(Ljava/lang/Iterable;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/Iterable;)Lcom/google/common/collect/dE;
    .registers 3
    .parameter

    .prologue
    .line 440
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/google/common/collect/bV;

    invoke-direct {v1, v0}, Lcom/google/common/collect/bV;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
