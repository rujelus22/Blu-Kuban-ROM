.class final enum Lcom/google/common/cache/LocalCache$Strength$2;
.super Lcom/google/common/cache/LocalCache$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method final defaultEquivalence()Lcom/google/common/base/Equivalence;
    .registers 2

    .prologue
    .line 400
    invoke-static {}, Lcom/google/common/base/Equivalences;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Ljava/lang/Object;I)Lcom/google/common/cache/ag;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x1

    if-ne p4, v0, :cond_b

    new-instance v0, Lcom/google/common/cache/z;

    iget-object v1, p1, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/cache/z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/cache/an;

    iget-object v1, p1, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lcom/google/common/cache/an;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;I)V

    goto :goto_a
.end method
