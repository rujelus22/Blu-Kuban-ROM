.class LagQ;
.super LagR;
.source "LocalCache.java"

# interfaces
.implements Lagt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LagR",
        "<TK;TV;>;",
        "Lagt",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lagk;Lagq;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagk",
            "<-TK;-TV;>;",
            "Lagq",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4858
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagq;

    invoke-direct {p0, p1, v0}, LagR;-><init>(Lagk;Lagq;)V

    .line 4859
    return-void
.end method
