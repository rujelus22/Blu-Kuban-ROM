.class Lcom/google/common/collect/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/I;


# direct methods
.method constructor <init>(Lcom/google/common/collect/I;)V
    .registers 4
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    iget-object v0, v0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/J;->b:Ljava/util/Collection;

    .line 503
    iget-object v0, p1, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    iget-object v1, p1, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    .line 504
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/I;Ljava/util/Iterator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    iget-object v0, v0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/J;->b:Ljava/util/Collection;

    .line 507
    iput-object p2, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    .line 508
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->a()V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    iget-object v0, v0, Lcom/google/common/collect/I;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/J;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_13

    .line 517
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 519
    :cond_13
    return-void
.end method

.method b()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/common/collect/J;->a()V

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/google/common/collect/J;->a()V

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/common/collect/J;->a()V

    .line 530
    iget-object v0, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/common/collect/J;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    iget-object v0, v0, Lcom/google/common/collect/I;->f:Lcom/google/common/collect/z;

    invoke-static {v0}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;)I

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/I;

    invoke-virtual {v0}, Lcom/google/common/collect/I;->b()V

    .line 538
    return-void
.end method
