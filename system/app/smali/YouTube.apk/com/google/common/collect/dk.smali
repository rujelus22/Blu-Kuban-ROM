.class final Lcom/google/common/collect/dk;
.super Lcom/google/common/collect/mu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/mu;

.field final synthetic b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/mu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-direct {p0}, Lcom/google/common/collect/mu;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v0}, Lcom/google/common/collect/mu;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v0}, Lcom/google/common/collect/mu;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v0}, Lcom/google/common/collect/mu;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v1}, Lcom/google/common/collect/mu;->previousIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v0}, Lcom/google/common/collect/mu;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/common/collect/dk;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dk;->a:Lcom/google/common/collect/mu;

    invoke-virtual {v1}, Lcom/google/common/collect/mu;->nextIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method
