.class public abstract Lcom/google/common/collect/br;
.super Lcom/google/common/collect/bm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fj;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/common/collect/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/fj;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/fj;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 62
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/fj;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/fj;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/br;->delegate()Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/fj;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
