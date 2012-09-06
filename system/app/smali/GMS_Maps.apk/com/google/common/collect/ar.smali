.class final Lcom/google/common/collect/ar;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;)V
    .registers 2
    .parameter

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->clear()V

    .line 3622
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/X;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 3601
    new-instance v0, Lcom/google/common/collect/aq;

    iget-object v1, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-direct {v0, v1}, Lcom/google/common/collect/aq;-><init>(Lcom/google/common/collect/X;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/X;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->size()I

    move-result v0

    return v0
.end method
