.class final Lcom/google/common/collect/bh;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 2
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/google/common/collect/bh;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ArrayTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 823
    new-instance v0, Lcom/google/common/collect/bi;

    invoke-virtual {p0}, Lcom/google/common/collect/bh;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bi;-><init>(Lcom/google/common/collect/bh;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v0

    return v0
.end method
