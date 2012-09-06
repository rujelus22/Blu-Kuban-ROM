.class final enum LagJ;
.super LagB;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LagB;-><init>(Ljava/lang/String;ILagv;)V

    return-void
.end method


# virtual methods
.method a(LagV;LagU;LagU;)LagU;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagV",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    invoke-super {p0, p1, p2, p3}, LagB;->a(LagV;LagU;LagU;)LagU;

    move-result-object v0

    .line 540
    invoke-virtual {p0, p2, v0}, LagJ;->a(LagU;LagU;)V

    .line 541
    invoke-virtual {p0, p2, v0}, LagJ;->b(LagU;LagU;)V

    .line 542
    return-object v0
.end method

.method a(LagV;Ljava/lang/Object;ILagU;)LagU;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagV",
            "<TK;TV;>;TK;I",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lahl;

    iget-object v1, p1, LagV;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lahl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V

    return-object v0
.end method
