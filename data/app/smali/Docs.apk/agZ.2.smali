.class final enum LagZ;
.super LagY;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
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
    .line 384
    invoke-static {}, LafE;->a()LafD;

    move-result-object v0

    return-object v0
.end method

.method a(LagV;LagU;Ljava/lang/Object;I)Lahi;
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
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;TV;I)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x1

    if-ne p4, v0, :cond_9

    new-instance v0, Lahf;

    invoke-direct {v0, p3}, Lahf;-><init>(Ljava/lang/Object;)V

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lahq;

    invoke-direct {v0, p3, p4}, Lahq;-><init>(Ljava/lang/Object;I)V

    goto :goto_8
.end method
