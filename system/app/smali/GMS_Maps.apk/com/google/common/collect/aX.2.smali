.class Lcom/google/common/collect/aX;
.super Lcom/google/common/collect/aU;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/au;

.field g:Lcom/google/common/collect/au;

.field h:Lcom/google/common/collect/au;

.field i:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1520
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aU;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1525
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aX;->e:J

    .line 1535
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aX;->f:Lcom/google/common/collect/au;

    .line 1546
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aX;->g:Lcom/google/common/collect/au;

    .line 1559
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aX;->h:Lcom/google/common/collect/au;

    .line 1570
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aX;->i:Lcom/google/common/collect/au;

    .line 1521
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1532
    iput-wide p1, p0, Lcom/google/common/collect/aX;->e:J

    .line 1533
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/google/common/collect/aX;->f:Lcom/google/common/collect/au;

    .line 1544
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/google/common/collect/aX;->g:Lcom/google/common/collect/au;

    .line 1555
    return-void
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/google/common/collect/aX;->h:Lcom/google/common/collect/au;

    .line 1568
    return-void
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/google/common/collect/aX;->i:Lcom/google/common/collect/au;

    .line 1579
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 1528
    iget-wide v0, p0, Lcom/google/common/collect/aX;->e:J

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/common/collect/aX;->f:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/common/collect/aX;->g:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/google/common/collect/aX;->h:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/google/common/collect/aX;->i:Lcom/google/common/collect/au;

    return-object v0
.end method
