.class Lcom/google/common/collect/co;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/cj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/cj;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/cj;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 931
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/cj;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/cj;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/cj;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/cj;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/common/collect/co;->a:Ljava/util/Set;

    .line 916
    if-nez v0, :cond_e

    .line 917
    new-instance v0, Lcom/google/common/collect/cp;

    iget-object v1, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/cp;-><init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V

    iput-object v0, p0, Lcom/google/common/collect/co;->a:Ljava/util/Set;

    .line 919
    :cond_e
    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lcom/google/common/collect/co;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lcom/google/common/collect/co;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
