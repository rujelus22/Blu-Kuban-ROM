.class final Lcom/google/common/collect/aT;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;)V
    .registers 2
    .parameter

    .prologue
    .line 3625
    iput-object p1, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->clear()V

    .line 3645
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/X;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 3628
    new-instance v0, Lcom/google/common/collect/aR;

    iget-object v1, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-direct {v0, v1}, Lcom/google/common/collect/aR;-><init>(Lcom/google/common/collect/X;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/google/common/collect/aT;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->size()I

    move-result v0

    return v0
.end method
