.class final Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/af;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/common/collect/ah;->d:Lcom/google/common/collect/ag;

    invoke-direct {p0, p1}, Lcom/google/common/collect/af;-><init>(Lcom/google/common/collect/ae;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ag;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/google/common/collect/ah;->d:Lcom/google/common/collect/ag;

    .line 806
    invoke-virtual {p1}, Lcom/google/common/collect/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/af;-><init>(Lcom/google/common/collect/ae;Ljava/util/Iterator;)V

    .line 807
    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/common/collect/af;->a()V

    iget-object v0, p0, Lcom/google/common/collect/af;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/common/collect/ah;->d:Lcom/google/common/collect/ag;

    invoke-virtual {v0}, Lcom/google/common/collect/ag;->isEmpty()Z

    move-result v0

    .line 841
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 842
    iget-object v1, p0, Lcom/google/common/collect/ah;->d:Lcom/google/common/collect/ag;

    iget-object v1, v1, Lcom/google/common/collect/ag;->g:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 843
    if-eqz v0, :cond_1b

    .line 844
    iget-object v0, p0, Lcom/google/common/collect/ah;->d:Lcom/google/common/collect/ag;

    invoke-virtual {v0}, Lcom/google/common/collect/ag;->c()V

    .line 846
    :cond_1b
    return-void
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 836
    return-void
.end method
