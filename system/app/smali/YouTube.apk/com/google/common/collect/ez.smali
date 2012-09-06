.class final Lcom/google/common/collect/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Ljava/util/ListIterator;

.field final synthetic b:Lcom/google/common/collect/ey;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ey;Ljava/util/ListIterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/google/common/collect/ez;->b:Lcom/google/common/collect/ey;

    iput-object p2, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 944
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1100(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1100(Lcom/google/common/collect/fk;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 958
    return-void
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 944
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
