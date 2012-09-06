.class final Lcom/google/common/collect/ff;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lcom/google/common/collect/ff;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 783
    new-instance v0, Lcom/google/common/collect/fh;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fh;-><init>(Lcom/google/common/collect/ff;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 718
    new-instance v0, Lcom/google/common/collect/fl;

    iget-object v1, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .line 719
    new-instance v1, Lcom/google/common/collect/fg;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fg;-><init>(Lcom/google/common/collect/ff;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 747
    if-ltz p2, :cond_23

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 748
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ff;->count(Ljava/lang/Object;)I

    move-result v1

    .line 749
    new-instance v2, Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v0, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 750
    :goto_11
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 751
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 752
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move p2, v0

    goto :goto_11

    .line 747
    :cond_23
    const/4 v0, 0x0

    goto :goto_3

    .line 754
    :cond_25
    return v1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/common/collect/ff;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/google/common/collect/ff;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 759
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
