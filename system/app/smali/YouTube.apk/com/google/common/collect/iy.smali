.class abstract Lcom/google/common/collect/iy;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/iq;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/google/common/collect/iy;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->clear()V

    .line 871
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 850
    instance-of v1, p1, Lcom/google/common/collect/ir;

    if-eqz v1, :cond_d

    .line 852
    check-cast p1, Lcom/google/common/collect/ir;

    .line 853
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v1

    if-gtz v1, :cond_e

    .line 860
    :cond_d
    :goto_d
    return v0

    .line 856
    :cond_e
    invoke-virtual {p0}, Lcom/google/common/collect/iy;->a()Lcom/google/common/collect/iq;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v1

    .line 857
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/google/common/collect/iy;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/common/collect/iy;->a()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Lcom/google/common/collect/ir;

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
