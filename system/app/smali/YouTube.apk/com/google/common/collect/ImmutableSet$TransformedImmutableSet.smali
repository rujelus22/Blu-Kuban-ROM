.class abstract Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final hashCode:I

.field final source:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    .line 364
    iput p2, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 365
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/gf;
    .registers 2

    .prologue
    .line 378
    new-instance v0, Lcom/google/common/collect/ck;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ck;-><init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    .line 394
    array-length v1, p1

    if-ge v1, v0, :cond_1e

    .line 395
    invoke-static {p1, v0}, Lcom/google/common/collect/fq;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 402
    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 403
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 396
    :cond_1e
    array-length v1, p1

    if-le v1, v0, :cond_b

    .line 397
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b

    .line 405
    :cond_25
    return-object p1
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
.end method
