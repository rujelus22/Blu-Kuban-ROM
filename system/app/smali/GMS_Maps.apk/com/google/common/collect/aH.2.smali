.class Lcom/google/common/collect/aH;
.super Lcom/google/common/base/B;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/aS;


# instance fields
.field final a:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/au;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1626
    sget-object v0, Lcom/google/common/collect/at;->a:Lcom/google/common/base/w;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/B;-><init>(Ljava/lang/Object;Lcom/google/common/base/w;)V

    .line 1627
    iput-object p2, p0, Lcom/google/common/collect/aH;->a:Lcom/google/common/collect/au;

    .line 1628
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)Lcom/google/common/collect/aS;
    .registers 4
    .parameter

    .prologue
    .line 1642
    new-instance v0, Lcom/google/common/collect/aH;

    invoke-virtual {p0}, Lcom/google/common/collect/aH;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/aH;-><init>(Ljava/lang/Object;Lcom/google/common/collect/au;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/google/common/collect/aH;->finalizeReferent()V

    .line 1633
    return-void
.end method

.method public finalizeReferent()V
    .registers 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/common/collect/aH;->a:Lcom/google/common/collect/au;

    invoke-interface {v0, p0}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/aS;)V

    .line 1638
    return-void
.end method
