.class final Lcom/google/common/collect/dn;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fj;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/dn;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/fj;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 672
    new-instance v0, Lcom/google/common/collect/dp;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dp;-><init>(Lcom/google/common/collect/dn;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 617
    new-instance v0, Lcom/google/common/collect/dt;

    iget-object v1, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .line 618
    new-instance v1, Lcom/google/common/collect/do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/do;-><init>(Lcom/google/common/collect/dn;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 640
    if-ltz p2, :cond_23

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dn;->count(Ljava/lang/Object;)I

    move-result v1

    .line 642
    new-instance v2, Lcom/google/common/collect/du;

    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v0, p1}, Lcom/google/common/collect/du;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 643
    :goto_11
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 644
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 645
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move p2, v0

    goto :goto_11

    .line 640
    :cond_23
    const/4 v0, 0x0

    goto :goto_3

    .line 647
    :cond_25
    return v1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/common/collect/dn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cr;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/google/common/collect/dn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cr;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/fj;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/fj;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/fj;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/fj;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
