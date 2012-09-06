.class final Lcom/google/common/collect/jc;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method
