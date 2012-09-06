.class final enum LajC;
.super LajB;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LajB;-><init>(Ljava/lang/String;ILajy;)V

    return-void
.end method


# virtual methods
.method a(Lakb;Ljava/lang/Object;ILaka;)Laka;
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
            "Lakb",
            "<TK;TV;>;TK;I",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lakl;

    invoke-direct {v0, p2, p3, p4}, Lakl;-><init>(Ljava/lang/Object;ILaka;)V

    return-object v0
.end method
