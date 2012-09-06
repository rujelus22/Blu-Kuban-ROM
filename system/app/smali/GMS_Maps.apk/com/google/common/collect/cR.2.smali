.class Lcom/google/common/collect/cR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/cQ;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cQ;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/common/collect/cR;->b:Lcom/google/common/collect/cQ;

    iput-object p2, p0, Lcom/google/common/collect/cR;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/common/collect/cR;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/common/collect/cR;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cN;

    invoke-interface {v0}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/cR;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 615
    return-void
.end method
