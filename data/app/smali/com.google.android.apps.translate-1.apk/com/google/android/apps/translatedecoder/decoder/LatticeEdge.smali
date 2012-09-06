.class public Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
.super Ljava/lang/Object;
.source "LatticeEdge.java"


# static fields
.field private static final EPSILON:D = 0.01


# instance fields
.field private final insideViterbiCost:D

.field private final src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

.field private final transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;DLcom/google/android/apps/translatedecoder/decoder/Transition;)V
    .registers 5
    .parameter "src"
    .parameter "insideViterbiCost"
    .parameter "transition"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    .line 23
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost:D

    .line 24
    iput-object p4, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 41
    instance-of v2, p1, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    if-eqz v2, :cond_1a

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;

    .line 43
    .local v0, to:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    iget-wide v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost:D

    iget-wide v4, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1b

    .line 62
    .end local v0           #to:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    :cond_1a
    :goto_1a
    return v1

    .line 46
    .restart local v0       #to:Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    if-nez v2, :cond_2d

    .line 47
    iget-object v2, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    if-nez v2, :cond_1a

    .line 56
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    if-nez v2, :cond_38

    .line 57
    iget-object v2, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1a

    .line 51
    :cond_2d
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    iget-object v3, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    .line 59
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    iget-object v2, v0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1a
.end method

.method public insideViterbiCost()D
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->insideViterbiCost:D

    return-wide v0
.end method

.method public src()Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->src:Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;

    return-object v0
.end method

.method public transition()Lcom/google/android/apps/translatedecoder/decoder/Transition;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/LatticeEdge;->transition:Lcom/google/android/apps/translatedecoder/decoder/Transition;

    return-object v0
.end method
