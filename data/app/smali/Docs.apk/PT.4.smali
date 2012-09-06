.class public LPT;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LQp;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LPr;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LQp;->a:Landroid/content/Context;

    .line 476
    invoke-static {}, LPV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LPr;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOR;

    iput-object v0, p0, LQp;->a:LOR;

    .line 482
    invoke-static {}, LPX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LPr;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPj;

    iput-object v0, p0, LQp;->a:LPj;

    .line 488
    return-void
.end method
