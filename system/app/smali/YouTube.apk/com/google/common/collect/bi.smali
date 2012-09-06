.class final Lcom/google/common/collect/bi;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/bh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bh;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/common/collect/bi;->a:Lcom/google/common/collect/bh;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Lcom/google/common/collect/bh;

    iget-object v0, v0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    div-int v0, p1, v0

    .line 826
    iget-object v1, p0, Lcom/google/common/collect/bi;->a:Lcom/google/common/collect/bh;

    iget-object v1, v1, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int v1, p1, v1

    .line 827
    iget-object v2, p0, Lcom/google/common/collect/bi;->a:Lcom/google/common/collect/bh;

    iget-object v2, v2, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    return-object v0
.end method
