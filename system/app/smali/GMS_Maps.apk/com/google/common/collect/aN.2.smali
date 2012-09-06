.class Lcom/google/common/collect/aN;
.super Lcom/google/common/collect/aM;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field f:Lcom/google/common/collect/au;

.field g:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aM;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1001
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aN;->f:Lcom/google/common/collect/au;

    .line 1012
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aN;->g:Lcom/google/common/collect/au;

    .line 997
    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/google/common/collect/aN;->f:Lcom/google/common/collect/au;

    .line 1010
    return-void
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/common/collect/aN;->g:Lcom/google/common/collect/au;

    .line 1021
    return-void
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/common/collect/aN;->f:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/aN;->g:Lcom/google/common/collect/au;

    return-object v0
.end method
