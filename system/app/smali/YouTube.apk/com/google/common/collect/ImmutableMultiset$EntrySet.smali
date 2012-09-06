.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient multiset:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 369
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 388
    instance-of v1, p1, Lcom/google/common/collect/ir;

    if-eqz v1, :cond_d

    .line 389
    check-cast p1, Lcom/google/common/collect/ir;

    .line 390
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v1

    if-gtz v1, :cond_e

    .line 396
    :cond_d
    :goto_d
    return v0

    .line 393
    :cond_e
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 394
    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->entryIterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->distinctElements()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 406
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    .line 416
    array-length v1, p1

    if-ge v1, v0, :cond_23

    .line 417
    invoke-static {p1, v0}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 424
    :cond_b
    :goto_b
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 426
    add-int/lit8 v2, v1, 0x1

    aput-object v0, p1, v1

    move v1, v2

    goto :goto_11

    .line 418
    :cond_23
    array-length v1, p1

    if-le v1, v0, :cond_b

    .line 419
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b

    .line 428
    :cond_2a
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 439
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
