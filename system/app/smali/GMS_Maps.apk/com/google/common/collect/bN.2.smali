.class Lcom/google/common/collect/bN;
.super Lcom/google/common/collect/dE;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/dE;

.field final synthetic b:Lcom/google/common/collect/bK;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bK;Lcom/google/common/collect/dE;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/common/collect/bN;->b:Lcom/google/common/collect/bK;

    iput-object p2, p0, Lcom/google/common/collect/bN;->a:Lcom/google/common/collect/dE;

    invoke-direct {p0}, Lcom/google/common/collect/dE;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/common/collect/bN;->a:Lcom/google/common/collect/dE;

    invoke-virtual {v0}, Lcom/google/common/collect/dE;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/common/collect/bN;->a:Lcom/google/common/collect/dE;

    invoke-virtual {v0}, Lcom/google/common/collect/dE;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
