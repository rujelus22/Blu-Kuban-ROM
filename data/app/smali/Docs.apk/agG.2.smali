.class final enum LagG;
.super LagB;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LagB;-><init>(Ljava/lang/String;ILagv;)V

    return-void
.end method


# virtual methods
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
    .line 496
    new-instance v0, Lahm;

    iget-object v1, p1, LagV;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lahm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILagU;)V

    return-object v0
.end method
