.class final enum Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/String;ILcom/google/common/collect/Y;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/X;Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/aa;->a(Lcom/google/common/collect/X;Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 393
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/ah;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 394
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/ah;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 395
    return-object v0
.end method

.method a(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    new-instance v0, Lcom/google/common/collect/aP;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/aP;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    return-object v0
.end method
