.class abstract Lcom/google/common/collect/bE;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    .line 469
    iput p2, p0, Lcom/google/common/collect/bE;->b:I

    .line 470
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 3

    .prologue
    .line 484
    new-instance v0, Lcom/google/common/collect/bF;

    iget-object v1, p0, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bF;-><init>(Lcom/google/common/collect/bE;I)V

    return-object v0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/google/common/collect/bE;->b:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/google/common/collect/bE;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/common/collect/bE;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bE;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/common/collect/bE;->size()I

    move-result v0

    .line 497
    array-length v1, p1

    if-ge v1, v0, :cond_1e

    .line 498
    invoke-static {p1, v0}, Lcom/google/common/collect/cU;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 505
    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 506
    iget-object v1, p0, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/bE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 499
    :cond_1e
    array-length v1, p1

    if-le v1, v0, :cond_b

    .line 500
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b

    .line 508
    :cond_25
    return-object p1
.end method
