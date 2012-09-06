.class public LYI;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi;)V
    .registers 2
    .parameter

    .prologue
    .line 1658
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->ab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, LXi;->a:Llu;

    .line 1664
    invoke-static {}, LSK;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->ac(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSw;

    iput-object v0, p0, LXi;->a:LSw;

    .line 1670
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LXU;->ad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LXi;->a:LanD;

    .line 1676
    return-void
.end method
