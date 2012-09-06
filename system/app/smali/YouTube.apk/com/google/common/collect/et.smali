.class final Lcom/google/common/collect/et;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/et;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .parameter

    .prologue
    .line 663
    new-instance v0, Lcom/google/common/collect/fm;

    iget-object v1, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/et;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/fm;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/google/common/collect/et;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/google/common/collect/et;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/et;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
