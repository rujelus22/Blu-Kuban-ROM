.class abstract Lcom/google/common/collect/iw;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/iq;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->clear()V

    .line 808
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ix;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ix;-><init>(Lcom/google/common/collect/iw;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    .line 834
    if-lez v0, :cond_13

    .line 835
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;I)I

    .line 836
    const/4 v0, 0x1

    .line 838
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public size()I
    .registers 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/common/collect/iw;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
