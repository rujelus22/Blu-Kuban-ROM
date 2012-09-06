.class final Lahk;
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

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V
    .registers 7
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
    .line 1452
    invoke-direct {p0, p1, p2, p3, p4}, Lahm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V

    .line 1457
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lahk;->a:J

    .line 1469
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahk;->a:LagU;

    .line 1482
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahk;->b:LagU;

    .line 1453
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1461
    iget-wide v0, p0, Lahk;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1466
    iput-wide p1, p0, Lahk;->a:J

    .line 1467
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
    .line 1479
    iput-object p1, p0, Lahk;->a:LagU;

    .line 1480
    return-void
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
    .line 1474
    iget-object v0, p0, Lahk;->a:LagU;

    return-object v0
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
    .line 1492
    iput-object p1, p0, Lahk;->b:LagU;

    .line 1493
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
    .line 1487
    iget-object v0, p0, Lahk;->b:LagU;

    return-object v0
.end method
