.class final Lcom/google/common/collect/ay;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 2
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/google/common/collect/ay;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 645
    new-instance v0, Lcom/google/common/collect/az;

    invoke-virtual {p0}, Lcom/google/common/collect/ay;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/az;-><init>(Lcom/google/common/collect/ay;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
