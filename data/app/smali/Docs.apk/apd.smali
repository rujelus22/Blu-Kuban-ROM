.class final Lapd;
.super Ljava/lang/Object;
.source "InternalFactoryToProviderAdapter.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LanD;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "provider"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lapd;->a:LanD;

    .line 34
    const-string v0, "source"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lapd;->a:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk",
            "<*>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lapd;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lapd;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, p3}, Laoy;->a(Ljava/lang/Object;Ljava/lang/Object;Laqk;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 42
    :catch_d
    move-exception v0

    .line 43
    iget-object v1, p0, Lapd;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoy;->a(Ljava/lang/RuntimeException;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lapd;->a:LanD;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
