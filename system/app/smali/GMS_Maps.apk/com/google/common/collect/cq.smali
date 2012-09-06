.class Lcom/google/common/collect/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/cp;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cp;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/google/common/collect/cq;->b:Lcom/google/common/collect/cp;

    iput-object p2, p0, Lcom/google/common/collect/cq;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/common/collect/cq;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 884
    new-instance v1, Lcom/google/common/collect/cr;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cr;-><init>(Lcom/google/common/collect/cq;Ljava/lang/Object;)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/common/collect/cq;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/common/collect/cq;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/common/collect/cq;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 898
    return-void
.end method
