.class Lcom/google/common/collect/cl;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/cM;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 621
    new-instance v0, Lcom/google/common/collect/cs;

    iget-object v1, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/cs;-><init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 627
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
