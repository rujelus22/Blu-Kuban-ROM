.class public Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
.super Ljava/lang/Object;
.source "LatticeNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final INIT_COST:D


# instance fields
.field private final endPos:I

.field private final stateWords:[I

.field private viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;


# direct methods
.method public constructor <init>(I[I)V
    .registers 4
    .parameter "endPos"
    .parameter "stateWords"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    .line 26
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    .line 28
    return-void
.end method

.method public static getSignature([II)Ljava/lang/String;
    .registers 5
    .parameter "stateWords"
    .parameter "endPos"

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_1b

    .line 68
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_18

    .line 70
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 73
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)I
    .registers 6
    .parameter "o"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_e

    .line 106
    const/4 v0, 0x0

    .line 112
    :goto_d
    return v0

    .line 107
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 110
    const/4 v0, -0x1

    goto :goto_d

    .line 112
    :cond_1c
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->compareTo(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;)I

    move-result v0

    return v0
.end method

.method public endPos()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 78
    instance-of v2, p1, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    if-eqz v2, :cond_18

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 80
    .local v0, to:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    iget v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    iget v3, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    if-ne v2, v3, :cond_18

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    iget-object v3, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    .end local v0           #to:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    :cond_18
    :goto_18
    return v1

    .line 83
    .restart local v0       #to:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    :cond_19
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    if-nez v2, :cond_23

    .line 84
    iget-object v2, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    if-nez v2, :cond_18

    const/4 v1, 0x1

    goto :goto_18

    .line 86
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    iget-object v2, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_18
.end method

.method public getSignature()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    iget v1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    invoke-static {v0, v1}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->getSignature([II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insideViterbiCost()D
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost()D

    move-result-wide v0

    .line 46
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public setVitberbiEdge(Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;)V
    .registers 2
    .parameter "edge"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    .line 36
    return-void
.end method

.method public shouldUpdateVitberbi(D)Z
    .registers 5
    .parameter "newInsideCost"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public stateWords()[I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "========= Node Info ============\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->endPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateWords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->stateWords:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViterbiCost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->insideViterbiCost()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public viterbiEdge()Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->viterbiEdge:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    return-object v0
.end method
