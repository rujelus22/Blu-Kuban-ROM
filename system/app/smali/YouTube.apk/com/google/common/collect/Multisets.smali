.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/common/collect/fj;Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 443
    invoke-interface {p0, p1}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v0

    .line 445
    sub-int v1, p2, v0

    .line 446
    if-lez v1, :cond_11

    .line 447
    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;I)I

    .line 452
    :cond_10
    :goto_10
    return v0

    .line 448
    :cond_11
    if-gez v1, :cond_10

    .line 449
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/fj;->remove(Ljava/lang/Object;I)I

    goto :goto_10
.end method

.method static a(Ljava/lang/Iterable;)I
    .registers 2
    .parameter

    .prologue
    .line 320
    instance-of v0, p0, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_f

    .line 321
    check-cast p0, Lcom/google/common/collect/fj;

    invoke-interface {p0}, Lcom/google/common/collect/fj;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 323
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0xb

    goto :goto_e
.end method

.method public static a(Ljava/lang/Object;I)Lcom/google/common/collect/fk;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 156
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 157
    new-instance v0, Lcom/google/common/collect/fl;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fl;-><init>(Ljava/lang/Object;I)V

    return-object v0

    .line 156
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static a(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    if-ltz p0, :cond_16

    move v0, v1

    :goto_5
    const-string v3, "%s cannot be negative: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 470
    return-void

    :cond_16
    move v0, v2

    .line 469
    goto :goto_5
.end method

.method static a(Lcom/google/common/collect/fj;Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 458
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 460
    invoke-interface {p0, p1}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 461
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/fj;->setCount(Ljava/lang/Object;I)I

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
