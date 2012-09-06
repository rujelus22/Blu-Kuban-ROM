.class Lcom/google/common/collect/ck;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/cj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cj;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/cj;

    iput-object p2, p0, Lcom/google/common/collect/ck;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .parameter

    .prologue
    .line 599
    new-instance v0, Lcom/google/common/collect/cv;

    iget-object v1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/cj;

    iget-object v2, p0, Lcom/google/common/collect/ck;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/cv;-><init>(Lcom/google/common/collect/cj;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/common/collect/ck;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/ck;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ck;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/cM;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
