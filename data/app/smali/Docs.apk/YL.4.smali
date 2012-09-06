.class public LYL;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LZE;)V
    .registers 2
    .parameter

    .prologue
    .line 1629
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LXU;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LZE;->a:LanD;

    .line 1635
    invoke-static {}, LZd;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LXU;->Y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LZE;->b:LanD;

    .line 1641
    invoke-static {}, LZg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZy;

    iput-object v0, p0, LZE;->a:LZy;

    .line 1647
    invoke-static {}, LtA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtI;

    iput-object v0, p0, LZE;->a:LtI;

    .line 1653
    return-void
.end method
