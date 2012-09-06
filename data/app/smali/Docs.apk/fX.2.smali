.class public LfX;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LdO;)V
    .registers 2
    .parameter

    .prologue
    .line 1011
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lfe;->aj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LdO;->a:LanD;

    .line 1017
    invoke-static {}, LgE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeZ;

    iput-object v0, p0, LdO;->a:LeZ;

    .line 1023
    invoke-static {}, LgB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->al(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeO;

    iput-object v0, p0, LdO;->a:LeO;

    .line 1029
    return-void
.end method
