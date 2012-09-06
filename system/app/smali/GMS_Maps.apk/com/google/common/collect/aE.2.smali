.class Lcom/google/common/collect/aE;
.super Lcom/google/common/collect/aD;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field e:Lcom/google/common/collect/au;

.field f:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aD;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1247
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aE;->e:Lcom/google/common/collect/au;

    .line 1258
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aE;->f:Lcom/google/common/collect/au;

    .line 1243
    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/google/common/collect/aE;->e:Lcom/google/common/collect/au;

    .line 1256
    return-void
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/google/common/collect/aE;->f:Lcom/google/common/collect/au;

    .line 1267
    return-void
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/common/collect/aE;->e:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/common/collect/aE;->f:Lcom/google/common/collect/au;

    return-object v0
.end method
