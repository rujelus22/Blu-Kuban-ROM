.class Lcom/google/common/collect/L;
.super Lcom/google/common/collect/J;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/common/collect/K;


# direct methods
.method constructor <init>(Lcom/google/common/collect/K;)V
    .registers 2
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/common/collect/L;->d:Lcom/google/common/collect/K;

    invoke-direct {p0, p1}, Lcom/google/common/collect/J;-><init>(Lcom/google/common/collect/I;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/K;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/common/collect/L;->d:Lcom/google/common/collect/K;

    .line 805
    invoke-virtual {p1}, Lcom/google/common/collect/K;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/J;-><init>(Lcom/google/common/collect/I;Ljava/util/Iterator;)V

    .line 806
    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/common/collect/L;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/common/collect/L;->d:Lcom/google/common/collect/K;

    invoke-virtual {v0}, Lcom/google/common/collect/K;->isEmpty()Z

    move-result v0

    .line 840
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 841
    iget-object v1, p0, Lcom/google/common/collect/L;->d:Lcom/google/common/collect/K;

    iget-object v1, v1, Lcom/google/common/collect/K;->g:Lcom/google/common/collect/z;

    invoke-static {v1}, Lcom/google/common/collect/z;->c(Lcom/google/common/collect/z;)I

    .line 842
    if-eqz v0, :cond_1b

    .line 843
    iget-object v0, p0, Lcom/google/common/collect/L;->d:Lcom/google/common/collect/K;

    invoke-virtual {v0}, Lcom/google/common/collect/K;->d()V

    .line 845
    :cond_1b
    return-void
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/google/common/collect/L;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 835
    return-void
.end method
