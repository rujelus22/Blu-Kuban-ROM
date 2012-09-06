.class final Lcom/google/common/collect/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/fl;

.field final synthetic b:Lcom/google/common/collect/ev;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ev;Lcom/google/common/collect/fl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/google/common/collect/ew;->b:Lcom/google/common/collect/ev;

    iput-object p2, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->a()Lcom/google/common/collect/fk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->b()Lcom/google/common/collect/fk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    invoke-virtual {v0}, Lcom/google/common/collect/fl;->remove()V

    .line 881
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 884
    iget-object v1, p0, Lcom/google/common/collect/ew;->a:Lcom/google/common/collect/fl;

    iget-object v0, v1, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    iget-object v0, v1, Lcom/google/common/collect/fl;->c:Lcom/google/common/collect/fk;

    iput-object p1, v0, Lcom/google/common/collect/fk;->b:Ljava/lang/Object;

    .line 885
    return-void

    .line 884
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method
