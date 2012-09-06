.class final Lcom/google/common/collect/az;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ay;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ay;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/common/collect/az;->a:Lcom/google/common/collect/ay;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/common/collect/az;->a:Lcom/google/common/collect/ay;

    iget-object v0, v0, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/at;

    iget-object v2, p0, Lcom/google/common/collect/az;->a:Lcom/google/common/collect/ay;

    iget-object v2, v2, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/at;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
