.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/fs;)V

    return-void
.end method


# virtual methods
.method final defaultEquivalence()Lcom/google/common/base/Equivalence;
    .registers 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/common/base/Equivalences;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Ljava/lang/Object;)Lcom/google/common/collect/gs;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    new-instance v0, Lcom/google/common/collect/gq;

    invoke-direct {v0, p3}, Lcom/google/common/collect/gq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
