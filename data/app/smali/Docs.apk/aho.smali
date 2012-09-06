.class final Laho;
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
    .line 1500
    invoke-direct {p0, p1, p2, p3, p4}, Lahm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V

    .line 1505
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Laho;->a:J

    .line 1517
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Laho;->a:LagU;

    .line 1530
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Laho;->b:LagU;

    .line 1501
    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    .prologue
    .line 1509
    iget-wide v0, p0, Laho;->a:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 1514
    iput-wide p1, p0, Laho;->a:J

    .line 1515
    return-void
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
    .line 1527
    iput-object p1, p0, Laho;->a:LagU;

    .line 1528
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
    .line 1522
    iget-object v0, p0, Laho;->a:LagU;

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
    .line 1540
    iput-object p1, p0, Laho;->b:LagU;

    .line 1541
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
    .line 1535
    iget-object v0, p0, Laho;->b:LagU;

    return-object v0
.end method
