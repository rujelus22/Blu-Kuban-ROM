.class final Lcom/google/common/collect/ba;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:I

.field b:Lcom/google/common/collect/bb;

.field final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 682
    iput p2, p0, Lcom/google/common/collect/ba;->a:I

    .line 683
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/common/collect/ba;->b:Lcom/google/common/collect/bb;

    .line 689
    if-nez v0, :cond_f

    new-instance v0, Lcom/google/common/collect/bb;

    iget-object v1, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ba;->a:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/bb;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    iput-object v0, p0, Lcom/google/common/collect/ba;->b:Lcom/google/common/collect/bb;

    :cond_f
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 694
    iget-object v1, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ba;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/google/common/collect/ArrayTable;->getIndexed(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    invoke-static {v1, v2, v0}, Lcom/google/common/collect/ArrayTable;->access$600(Lcom/google/common/collect/ArrayTable;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 702
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 704
    if-eqz v0, :cond_33

    move v1, v2

    :goto_14
    const-string v4, "Column %s not in %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    iget-object v3, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v3}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 706
    iget-object v1, p0, Lcom/google/common/collect/ba;->c:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ba;->a:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_33
    move v1, v3

    .line 704
    goto :goto_14
.end method
