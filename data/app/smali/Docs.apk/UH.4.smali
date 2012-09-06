.class public LUH;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LTP;)V
    .registers 2
    .parameter

    .prologue
    .line 1002
    invoke-static {}, LZf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZw;

    iput-object v0, p0, LTP;->a:LZw;

    .line 1008
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, LTP;->a:Llu;

    .line 1014
    return-void
.end method
