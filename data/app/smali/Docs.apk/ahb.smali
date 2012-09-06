.class final enum Lahb;
.super LagY;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LagY;-><init>(Ljava/lang/String;ILagv;)V

    return-void
.end method


# virtual methods
.method a()LafD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, LafE;->b()LafD;

    move-result-object v0

    return-object v0
.end method

.method a(LagV;LagU;Ljava/lang/Object;I)Lahi;
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
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;TV;I)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x1

    if-ne p4, v0, :cond_b

    new-instance v0, Lahn;

    iget-object v1, p1, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lahn;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lahr;

    iget-object v1, p1, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lahr;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;I)V

    goto :goto_a
.end method
