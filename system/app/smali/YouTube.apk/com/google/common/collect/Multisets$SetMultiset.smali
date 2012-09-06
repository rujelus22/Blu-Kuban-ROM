.class Lcom/google/common/collect/Multisets$SetMultiset;
.super Lcom/google/common/collect/cu;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/Set;

.field transient elementSet:Ljava/util/Set;

.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/common/collect/cu;-><init>()V

    .line 345
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    .line 346
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    .line 376
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/jc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/jc;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    .line 383
    if-nez v0, :cond_b

    .line 384
    new-instance v0, Lcom/google/common/collect/ja;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ja;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    .line 403
    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 434
    instance-of v1, p1, Lcom/google/common/collect/iq;

    if-eqz v1, :cond_1e

    .line 435
    check-cast p1, Lcom/google/common/collect/iq;

    .line 436
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/iq;->size()I

    move-result v2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 438
    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 444
    if-nez v2, :cond_17

    move v2, v1

    :goto_13
    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_6

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    .line 446
    :cond_1c
    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    if-nez p2, :cond_9

    .line 365
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 368
    :cond_8
    :goto_8
    return v1

    .line 367
    :cond_9
    if-lez p2, :cond_19

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v1, v2

    goto :goto_8

    :cond_19
    move v0, v2

    .line 367
    goto :goto_c
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 416
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 422
    :goto_b
    return p2

    .line 420
    :cond_c
    if-nez p2, :cond_13

    .line 421
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->remove(Ljava/lang/Object;)Z

    .line 422
    const/4 p2, 0x1

    goto :goto_b

    .line 424
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
