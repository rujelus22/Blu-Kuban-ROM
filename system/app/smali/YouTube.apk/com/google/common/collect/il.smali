.class final Lcom/google/common/collect/il;
.super Lcom/google/common/collect/cu;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/google/common/collect/cu;-><init>()V

    .line 621
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/il;->a:Ljava/util/Collection;

    .line 622
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/google/common/collect/il;->standardContains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lcom/google/common/collect/il;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/il;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/il;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/il;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    new-instance v1, Lcom/google/common/collect/im;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/im;-><init>(Lcom/google/common/collect/il;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/common/collect/il;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/google/common/collect/il;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
