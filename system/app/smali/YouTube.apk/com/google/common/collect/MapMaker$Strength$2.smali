.class final enum Lcom/google/common/collect/MapMaker$Strength$2;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/dx;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Ljava/lang/Object;Lcom/google/common/collect/ee;Lcom/google/common/collect/ee;)Lcom/google/common/collect/ee;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    check-cast p2, Lcom/google/common/collect/ef;

    .line 393
    if-nez p3, :cond_e

    new-instance v0, Lcom/google/common/collect/ef;

    iget-object v1, p2, Lcom/google/common/collect/ef;->b:Lcom/google/common/collect/bj;

    iget v2, p2, Lcom/google/common/collect/ef;->c:I

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/collect/ef;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/collect/dz;

    iget-object v1, p2, Lcom/google/common/collect/ef;->b:Lcom/google/common/collect/bj;

    iget v2, p2, Lcom/google/common/collect/ef;->c:I

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/google/common/collect/dz;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)V

    goto :goto_d
.end method

.method final equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method final hash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final newEntry(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)Lcom/google/common/collect/ee;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    if-nez p4, :cond_8

    new-instance v0, Lcom/google/common/collect/ef;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/ef;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/collect/dz;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/dz;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)V

    goto :goto_7
.end method

.method final referenceValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)Lcom/google/common/collect/em;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 380
    new-instance v0, Lcom/google/common/collect/eg;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/eg;-><init>(Ljava/lang/Object;Lcom/google/common/collect/ee;)V

    return-object v0
.end method
