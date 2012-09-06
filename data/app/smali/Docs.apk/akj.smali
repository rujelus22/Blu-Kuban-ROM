.class final enum Lakj;
.super Lakh;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lakh;-><init>(Ljava/lang/String;ILajy;)V

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
    .line 318
    invoke-static {}, LafE;->b()LafD;

    move-result-object v0

    return-object v0
.end method

.method a(Lakb;Laka;Ljava/lang/Object;)Lakr;
    .registers 6
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
            "Lakb",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;TV;)",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lakg;

    iget-object v1, p1, Lakb;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lakg;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Laka;)V

    return-object v0
.end method
