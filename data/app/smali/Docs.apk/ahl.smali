.class final Lahl;
.super Lahm;
.source "LocalCache.java"

# interfaces
.implements LagU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lahm",
        "<TK;TV;>;",
        "LagU",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:J

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1548
    invoke-direct {p0, p1, p2, p3, p4}, Lahm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V

    .line 1553
    iput-wide v1, p0, Lahl;->a:J

    .line 1565
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahl;->a:LagU;

    .line 1578
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahl;->b:LagU;

    .line 1593
    iput-wide v1, p0, Lahl;->b:J

    .line 1605
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahl;->c:LagU;

    .line 1618
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahl;->d:LagU;

    .line 1549
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1557
    iget-wide v0, p0, Lahl;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1562
    iput-wide p1, p0, Lahl;->a:J

    .line 1563
    return-void
.end method

.method public a(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1575
    iput-object p1, p0, Lahl;->a:LagU;

    .line 1576
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 1597
    iget-wide v0, p0, Lahl;->b:J

    return-wide v0
.end method

.method public b()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lahl;->a:LagU;

    return-object v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 1602
    iput-wide p1, p0, Lahl;->b:J

    .line 1603
    return-void
.end method

.method public b(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1588
    iput-object p1, p0, Lahl;->b:LagU;

    .line 1589
    return-void
.end method

.method public c()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1583
    iget-object v0, p0, Lahl;->b:LagU;

    return-object v0
.end method

.method public c(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1615
    iput-object p1, p0, Lahl;->c:LagU;

    .line 1616
    return-void
.end method

.method public d()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1610
    iget-object v0, p0, Lahl;->c:LagU;

    return-object v0
.end method

.method public d(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1628
    iput-object p1, p0, Lahl;->d:LagU;

    .line 1629
    return-void
.end method

.method public e()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1623
    iget-object v0, p0, Lahl;->d:LagU;

    return-object v0
.end method
