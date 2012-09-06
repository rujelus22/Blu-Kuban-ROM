.class final Lcom/google/common/collect/ao;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;)V
    .registers 2
    .parameter

    .prologue
    .line 3648
    iput-object p1, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->clear()V

    .line 3688
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3655
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 3665
    :cond_5
    :goto_5
    return v0

    .line 3658
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 3659
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3660
    if-eqz v1, :cond_5

    .line 3663
    iget-object v2, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3665
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    iget-object v2, v2, Lcom/google/common/collect/X;->f:Lcom/google/common/base/q;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 3651
    new-instance v0, Lcom/google/common/collect/an;

    iget-object v1, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-direct {v0, v1}, Lcom/google/common/collect/an;-><init>(Lcom/google/common/collect/X;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3669
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 3674
    :cond_5
    :goto_5
    return v0

    .line 3672
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 3673
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3674
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/collect/X;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->size()I

    move-result v0

    return v0
.end method
