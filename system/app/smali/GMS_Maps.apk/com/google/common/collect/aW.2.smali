.class Lcom/google/common/collect/aW;
.super Lcom/google/common/collect/aU;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/au;

.field g:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aU;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1451
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aW;->e:J

    .line 1461
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aW;->f:Lcom/google/common/collect/au;

    .line 1472
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aW;->g:Lcom/google/common/collect/au;

    .line 1447
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1458
    iput-wide p1, p0, Lcom/google/common/collect/aW;->e:J

    .line 1459
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/google/common/collect/aW;->f:Lcom/google/common/collect/au;

    .line 1470
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/common/collect/aW;->g:Lcom/google/common/collect/au;

    .line 1481
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 1454
    iget-wide v0, p0, Lcom/google/common/collect/aW;->e:J

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/google/common/collect/aW;->f:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/google/common/collect/aW;->g:Lcom/google/common/collect/au;

    return-object v0
.end method
