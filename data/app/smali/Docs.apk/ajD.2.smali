.class final enum LajD;
.super LajB;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LajB;-><init>(Ljava/lang/String;ILajy;)V

    return-void
.end method


# virtual methods
.method a(Lakb;Laka;Laka;)Laka;
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
            "Lakb",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, LajB;->a(Lakb;Laka;Laka;)Laka;

    move-result-object v0

    .line 479
    invoke-virtual {p0, p2, v0}, LajD;->a(Laka;Laka;)V

    .line 480
    return-object v0
.end method

.method a(Lakb;Ljava/lang/Object;ILaka;)Laka;
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
            "Lakb",
            "<TK;TV;>;TK;I",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lakv;

    iget-object v1, p1, Lakb;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lakv;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILaka;)V

    return-object v0
.end method
