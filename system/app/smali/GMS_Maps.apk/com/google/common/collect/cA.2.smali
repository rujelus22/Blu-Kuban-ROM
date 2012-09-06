.class Lcom/google/common/collect/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Ljava/util/ListIterator;

.field final synthetic d:Lcom/google/common/collect/cz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cz;Ljava/util/ListIterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/google/common/collect/cA;->d:Lcom/google/common/collect/cz;

    iput-object p2, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->b:Z

    .line 825
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/google/common/collect/cA;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 837
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 839
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->b:Z

    .line 840
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/cA;->d:Lcom/google/common/collect/cz;

    iget-object v1, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/cz;->a(Lcom/google/common/collect/cz;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/common/collect/cA;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 849
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 851
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->b:Z

    .line 852
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/google/common/collect/cA;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/google/common/collect/cA;->a:Z

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->b:Z

    iput-boolean v0, p0, Lcom/google/common/collect/cA;->a:Z

    .line 863
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/google/common/collect/cA;->b:Z

    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/cA;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 868
    return-void
.end method
