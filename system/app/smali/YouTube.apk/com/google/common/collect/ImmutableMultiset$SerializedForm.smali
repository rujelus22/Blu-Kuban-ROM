.class Lcom/google/common/collect/ImmutableMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final counts:[I

.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iq;)V
    .registers 7
    .parameter

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 463
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 464
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    .line 465
    const/4 v0, 0x0

    .line 466
    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 467
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 468
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    aput v0, v3, v1

    .line 469
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 471
    :cond_3d
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v1

    .line 476
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 477
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/LinkedHashMultiset;->add(Ljava/lang/Object;I)I

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 479
    :cond_1b
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
