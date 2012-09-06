.class final Lcom/google/common/collect/aq;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/google/common/collect/aq;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 501
    instance-of v0, p1, Lcom/google/common/collect/ma;

    if-eqz v0, :cond_4b

    .line 502
    check-cast p1, Lcom/google/common/collect/ma;

    .line 503
    iget-object v0, p0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 504
    iget-object v1, p0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 505
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    iget-object v3, p0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    .line 509
    :goto_48
    return v0

    :cond_49
    move v0, v2

    .line 505
    goto :goto_48

    :cond_4b
    move v0, v2

    .line 509
    goto :goto_48
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 474
    new-instance v0, Lcom/google/common/collect/ar;

    invoke-virtual {p0}, Lcom/google/common/collect/aq;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ar;-><init>(Lcom/google/common/collect/aq;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v0

    return v0
.end method
