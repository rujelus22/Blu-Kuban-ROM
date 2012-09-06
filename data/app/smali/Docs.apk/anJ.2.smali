.class final LanJ;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements LanG;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lant;LanD;)LanD;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LanD",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, LanK;

    invoke-direct {v0, p0, p2}, LanK;-><init>(LanJ;LanD;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const-string v0, "Scopes.SINGLETON"

    return-object v0
.end method
