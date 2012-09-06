.class final enum LagF;
.super LagB;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 475
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
    .line 485
    invoke-super {p0, p1, p2, p3}, LagB;->a(LagV;LagU;LagU;)LagU;

    move-result-object v0

    .line 486
    invoke-virtual {p0, p2, v0}, LagF;->a(LagU;LagU;)V

    .line 487
    invoke-virtual {p0, p2, v0}, LagF;->b(LagU;LagU;)V

    .line 488
    return-object v0
.end method

.method a(LagV;Ljava/lang/Object;ILagU;)LagU;
    .registers 6
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
    .line 479
    new-instance v0, Lahd;

    invoke-direct {v0, p2, p3, p4}, Lahd;-><init>(Ljava/lang/Object;ILagU;)V

    return-object v0
.end method
