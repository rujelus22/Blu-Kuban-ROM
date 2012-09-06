.class public Lcom/google/android/apps/translatedecoder/decoder/Chart;
.super Ljava/lang/Object;
.source "Chart.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final latticeNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nodesForEndPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final pruner:Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Chart;-><init>(Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;)V
    .registers 3
    .parameter "pruner"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodesForEndPosition:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->pruner:Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;

    .line 42
    return-void
.end method

.method private printLatticeNodes(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 86
    .local v1, node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 87
    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 89
    :cond_26
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 91
    .end local v1           #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    :cond_2c
    sget-object v3, Lcom/google/android/apps/translatedecoder/decoder/Chart;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public finishProcess(I)V
    .registers 7
    .parameter "endPos"

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processed endPos= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodesForEndPosition:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->hasNode(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 81
    :goto_23
    return-void

    .line 77
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->pruner:Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;

    if-eqz v0, :cond_43

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->pruner:Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;

    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/translatedecoder/decoder/BeamPruner;->sortAndPruneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->printLatticeNodes(Ljava/util/List;)V

    goto :goto_23
.end method

.method public getNode(I[I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .registers 7
    .parameter "endPos"
    .parameter "stateWords"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodesForEndPosition:Ljava/util/Map;

    invoke-static {p2, p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->getSignature([II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 47
    .local v0, node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    if-nez v0, :cond_3b

    .line 48
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .end local v0           #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;-><init>(I[I)V

    .line 49
    .restart local v0       #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->nodesForEndPosition:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 51
    .local v1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    if-nez v1, :cond_38

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .restart local v1       #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1           #nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    :cond_3b
    return-object v0
.end method

.method public hasNode(I)Z
    .registers 5
    .parameter "endPos"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public nodes(I)Ljava/util/List;
    .registers 4
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/Chart;->latticeNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
