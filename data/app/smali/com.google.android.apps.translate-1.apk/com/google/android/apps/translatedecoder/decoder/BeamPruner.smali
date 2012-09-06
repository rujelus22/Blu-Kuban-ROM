.class public Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;
.super Ljava/lang/Object;
.source "BeamPruner.java"


# instance fields
.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final topN:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "topN"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->topN:I

    .line 21
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->queue:Ljava/util/PriorityQueue;

    .line 22
    return-void
.end method


# virtual methods
.method public sortAndPruneList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, inList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    iget v0, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->topN:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->sortAndPruneList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sortAndPruneList(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .parameter
    .parameter "topN"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, inList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, res:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p2, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 33
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 35
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 36
    return-object v1
.end method
