.class public final Lcom/google/common/collect/bH;
.super Lcom/google/common/collect/bA;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/common/collect/bA;-><init>()V

    .line 200
    new-instance v0, Lcom/google/common/collect/bI;

    invoke-direct {v0}, Lcom/google/common/collect/bI;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/bH;->a:Lcom/google/common/collect/cL;

    .line 201
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/bG;
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/common/collect/bH;->a:Lcom/google/common/collect/cL;

    iget-object v1, p0, Lcom/google/common/collect/bH;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/bG;->a(Lcom/google/common/collect/cL;Ljava/util/Comparator;)Lcom/google/common/collect/bG;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/bH;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/common/collect/bH;->a:Lcom/google/common/collect/cL;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/cL;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 214
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 215
    invoke-static {v2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 217
    :cond_20
    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bH;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/collect/bH;->a:Lcom/google/common/collect/cL;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/cL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/bH;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/bH;

    move-result-object v0

    return-object v0
.end method
