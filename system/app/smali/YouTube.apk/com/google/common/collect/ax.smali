.class final Lcom/google/common/collect/ax;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field transient a:Lcom/google/common/collect/ay;

.field final synthetic b:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/google/common/collect/ax;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/ay;

    .line 622
    if-nez v0, :cond_e

    new-instance v0, Lcom/google/common/collect/ay;

    iget-object v1, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ay;-><init>(Lcom/google/common/collect/ArrayTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/ay;

    :cond_e
    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lcom/google/common/collect/at;

    iget-object v2, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/at;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    move-object v0, v1

    goto :goto_f
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 617
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
