.class Lcom/google/common/collect/ln;
.super Lcom/google/common/collect/ls;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/google/common/collect/ln;->b:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/common/collect/ln;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/common/collect/ln;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->keyIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 771
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/ln;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public size()I
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/common/collect/ln;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
