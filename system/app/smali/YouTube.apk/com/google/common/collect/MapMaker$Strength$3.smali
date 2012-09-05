.class final enum Lcom/google/common/collect/MapMaker$Strength$3;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 400
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
    .line 422
    check-cast p2, Lcom/google/common/collect/ek;

    .line 423
    if-nez p3, :cond_e

    new-instance v0, Lcom/google/common/collect/ek;

    iget-object v1, p2, Lcom/google/common/collect/ek;->c:Lcom/google/common/collect/bj;

    iget v2, p2, Lcom/google/common/collect/ek;->d:I

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/collect/ek;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/collect/ea;

    iget-object v1, p2, Lcom/google/common/collect/ek;->c:Lcom/google/common/collect/bj;

    iget v2, p2, Lcom/google/common/collect/ek;->d:I

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/google/common/collect/ea;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)V

    goto :goto_d
.end method

.method final equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final hash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

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
    .line 414
    if-nez p4, :cond_8

    new-instance v0, Lcom/google/common/collect/ek;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/ek;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/collect/ea;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/ea;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)V

    goto :goto_7
.end method

.method final referenceValue(Lcom/google/common/collect/ee;Ljava/lang/Object;)Lcom/google/common/collect/em;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/collect/el;

    invoke-direct {v0, p2}, Lcom/google/common/collect/el;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
