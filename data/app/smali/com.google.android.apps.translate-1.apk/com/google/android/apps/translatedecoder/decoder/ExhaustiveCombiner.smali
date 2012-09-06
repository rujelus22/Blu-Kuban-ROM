.class public Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;
.super Ljava/lang/Object;
.source "ExhaustiveCombiner.java"

# interfaces
.implements Lcom/google/android/apps/translatedecoder/decoder/Combiner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/translatedecoder/decoder/Transition;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/translatedecoder/decoder/Combiner",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

.field private final lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;Lcom/google/android/apps/translatedecoder/decoder/Chart;)V
    .registers 3
    .parameter "lm"
    .parameter "chart"

    .prologue
    .line 22
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    .line 25
    return-void
.end method

.method private createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V
    .registers 9
    .parameter "src"
    .parameter "transition"
    .parameter "endPos"

    .prologue
    .line 56
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords()[I

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/apps/translatedecoder/decoder/Transition;->tgtWords()[I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->state([I[I)[I

    move-result-object v1

    .line 59
    .local v1, stateWords:[I
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->chart:Lcom/google/android/apps/translatedecoder/decoder/Chart;

    invoke-virtual {v2, p3, v1}, Lcom/google/android/apps/translatedecoder/decoder/Chart;->getNode(I[I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    move-result-object v0

    .line 60
    .local v0, dest:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)V

    .line 61
    return-void
.end method

.method private createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)V
    .registers 13
    .parameter "src"
    .parameter "transition"
    .parameter "dest"

    .prologue
    .line 65
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v3

    invoke-interface {p2}, Lcom/google/android/apps/translatedecoder/decoder/Transition;->cost()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords()[I

    move-result-object v6

    invoke-interface {p2}, Lcom/google/android/apps/translatedecoder/decoder/Transition;->tgtWords()[I

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->cost([I[I)D

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;

    invoke-virtual {v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModelFeature;->relativeLmWeight()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v3, v5

    .line 68
    .local v1, newInsideScore:D
    invoke-virtual {p3, v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->shouldUpdateVitberbi(D)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 69
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;-><init>(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;DLcom/google/android/apps/translatedecoder/decoder/Transition;)V

    .line 70
    .local v0, edge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    invoke-virtual {p3, v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->setVitberbiEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;)V

    .line 72
    .end local v0           #edge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    :cond_2e
    return-void
.end method


# virtual methods
.method public combine(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V
    .registers 7
    .parameter
    .parameter
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;TT;I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    .local p2, transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;,"TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 39
    .local v1, node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V

    goto :goto_4

    .line 41
    .end local v1           #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    :cond_14
    return-void
.end method

.method public combine(Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .parameter
    .parameter
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    .local p2, transitions:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 30
    .local v2, node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translatedecoder/decoder/Transition;

    .line 31
    .local v3, transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;
    invoke-direct {p0, v2, v3, p3}, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V

    goto :goto_14

    .line 34
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .end local v3           #transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;
    :cond_24
    return-void
.end method

.method public createGoalNode(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .registers 8
    .parameter
    .parameter "transition"
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;",
            "Lcom/google/android/apps/translatedecoder/decoder/Transition;",
            "I)",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;,"Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner<TT;>;"
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;>;"
    new-instance v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    const/4 v3, 0x0

    invoke-direct {v0, p3, v3}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;-><init>(I[I)V

    .line 49
    .local v0, goal:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 50
    .local v2, node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    invoke-direct {p0, v2, p2, v0}, Lcom/google/android/apps/translatedecoder/decoder/ExhaustiveCombiner;->createEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;Lcom/google/android/apps/translatedecoder/decoder/Transition;Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)V

    goto :goto_a

    .line 52
    .end local v2           #node:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    :cond_1a
    return-object v0
.end method
