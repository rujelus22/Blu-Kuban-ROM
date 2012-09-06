.class final Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field comparator:Ljava/util/Comparator;

.field counts:[I

.field elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kg;)V
    .registers 7
    .parameter

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    invoke-interface {p1}, Lcom/google/common/collect/kg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 580
    invoke-interface {p1}, Lcom/google/common/collect/kg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 581
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 582
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    .line 583
    const/4 v0, 0x0

    .line 584
    invoke-interface {p1}, Lcom/google/common/collect/kg;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 585
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 586
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    aput v0, v3, v1

    .line 587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 589
    :cond_43
    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v1, v0

    .line 594
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/dz;

    move-result-object v2

    .line 595
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1a

    .line 596
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/dz;->b(Ljava/lang/Object;I)Lcom/google/common/collect/dz;

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 598
    :cond_1a
    invoke-virtual {v2}, Lcom/google/common/collect/dz;->b()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
