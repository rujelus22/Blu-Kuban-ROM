.class Lcom/google/common/collect/cD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Ljava/util/ListIterator;

.field final synthetic b:Lcom/google/common/collect/cC;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cC;Ljava/util/ListIterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/common/collect/cD;->b:Lcom/google/common/collect/cC;

    iput-object p2, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/collect/cD;->b:Lcom/google/common/collect/cC;

    iget-object v0, v0, Lcom/google/common/collect/cC;->b:Lcom/google/common/base/D;

    iget-object v1, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/collect/cD;->b:Lcom/google/common/collect/cC;

    iget-object v0, v0, Lcom/google/common/collect/cC;->b:Lcom/google/common/base/D;

    iget-object v1, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/common/collect/cD;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 414
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
