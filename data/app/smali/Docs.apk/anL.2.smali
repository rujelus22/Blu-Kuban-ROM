.class final LanL;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements LanG;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lant;LanD;)LanD;
    .registers 3
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
    .line 116
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    const-string v0, "Scopes.NO_SCOPE"

    return-object v0
.end method
