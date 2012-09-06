.class LaoR;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaoP;

.field final synthetic a:Laoc;

.field final synthetic a:Laqk;


# direct methods
.method constructor <init>(LaoP;Laqk;Laoc;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, LaoR;->a:LaoP;

    iput-object p2, p0, LaoR;->a:Laqk;

    iput-object p3, p0, LaoR;->a:Laoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v1, Laoy;

    iget-object v0, p0, LaoR;->a:Laqk;

    invoke-direct {v1, v0}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 998
    :try_start_7
    iget-object v0, p0, LaoR;->a:LaoP;

    new-instance v2, LaoS;

    invoke-direct {v2, p0, v1}, LaoS;-><init>(LaoR;Laoy;)V

    invoke-virtual {v0, v2}, LaoP;->a(Laov;)Ljava/lang/Object;

    move-result-object v0

    .line 1008
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoy;->a(I)V
    :try_end_16
    .catch LaoE; {:try_start_7 .. :try_end_16} :catch_17

    .line 1009
    return-object v0

    .line 1010
    :catch_17
    move-exception v0

    .line 1011
    new-instance v2, LanF;

    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v1, v0}, Laoy;->a(Laoy;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, LanF;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, LaoR;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lapc;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
