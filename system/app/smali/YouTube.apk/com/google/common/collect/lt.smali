.class final Lcom/google/common/collect/lt;
.super Lcom/google/common/collect/lr;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/common/collect/lt;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/lr;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/google/common/collect/lt;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/common/collect/lt;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 914
    new-instance v1, Lcom/google/common/collect/lu;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/lu;-><init>(Lcom/google/common/collect/lt;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/collect/lt;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
