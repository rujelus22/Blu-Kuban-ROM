.class final Lcom/google/common/collect/fp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Ljava/util/ListIterator;

.field final synthetic b:Lcom/google/common/collect/Lists$TransformingSequentialList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/common/collect/fp;->b:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iput-object p2, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/common/collect/fp;->b:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/v;

    iget-object v1, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/common/collect/fp;->b:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/v;

    iget-object v1, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/common/collect/fp;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 417
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
