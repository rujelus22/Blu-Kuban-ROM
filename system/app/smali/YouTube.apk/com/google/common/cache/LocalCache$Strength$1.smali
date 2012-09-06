.class final enum Lcom/google/common/cache/LocalCache$Strength$1;
.super Lcom/google/common/cache/LocalCache$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method final defaultEquivalence()Lcom/google/common/base/Equivalence;
    .registers 2

    .prologue
    .line 384
    invoke-static {}, Lcom/google/common/base/Equivalences;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Ljava/lang/Object;I)Lcom/google/common/cache/ag;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x1

    if-ne p4, v0, :cond_9

    new-instance v0, Lcom/google/common/cache/ad;

    invoke-direct {v0, p3}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;)V

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/cache/ao;

    invoke-direct {v0, p3, p4}, Lcom/google/common/cache/ao;-><init>(Ljava/lang/Object;I)V

    goto :goto_8
.end method
