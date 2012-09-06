.class public abstract Lcom/google/common/collect/cV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/cV;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/common/collect/cT;->a:Lcom/google/common/collect/cT;

    return-object v0
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/cV;
    .registers 2
    .parameter

    .prologue
    .line 95
    instance-of v0, p0, Lcom/google/common/collect/cV;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/collect/cV;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/collect/W;

    invoke-direct {v0, p0}, Lcom/google/common/collect/W;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 593
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 594
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/cV;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    .line 597
    :cond_17
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/cV;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p2

    goto :goto_6
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method
