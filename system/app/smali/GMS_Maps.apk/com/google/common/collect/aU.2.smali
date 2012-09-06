.class Lcom/google/common/collect/aU;
.super Lcom/google/common/base/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field final a:Lcom/google/common/collect/X;

.field final b:I

.field final c:Lcom/google/common/collect/au;

.field volatile d:Lcom/google/common/collect/aS;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1343
    sget-object v0, Lcom/google/common/collect/at;->a:Lcom/google/common/base/w;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/C;-><init>(Ljava/lang/Object;Lcom/google/common/base/w;)V

    .line 1416
    invoke-static {}, Lcom/google/common/collect/X;->f()Lcom/google/common/collect/aS;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aU;->d:Lcom/google/common/collect/aS;

    .line 1344
    iput-object p1, p0, Lcom/google/common/collect/aU;->a:Lcom/google/common/collect/X;

    .line 1345
    iput p3, p0, Lcom/google/common/collect/aU;->b:I

    .line 1346
    iput-object p4, p0, Lcom/google/common/collect/aU;->c:Lcom/google/common/collect/au;

    .line 1347
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/aS;
    .registers 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/google/common/collect/aU;->d:Lcom/google/common/collect/aS;

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/common/collect/aU;->d:Lcom/google/common/collect/aS;

    .line 1425
    iput-object p1, p0, Lcom/google/common/collect/aU;->d:Lcom/google/common/collect/aS;

    .line 1426
    invoke-interface {v0}, Lcom/google/common/collect/aS;->clear()V

    .line 1427
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/common/collect/aU;->c:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/aS;)V
    .registers 3
    .parameter

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/common/collect/aU;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/aS;)V

    .line 1431
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1434
    iget v0, p0, Lcom/google/common/collect/aU;->b:I

    return v0
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/google/common/collect/aU;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 1408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .registers 2

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finalizeReferent()V
    .registers 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/google/common/collect/aU;->j()V

    .line 1357
    return-void
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/google/common/collect/aU;->a:Lcom/google/common/collect/X;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;)V

    .line 1362
    return-void
.end method
