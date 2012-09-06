.class public LYJ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXk;)V
    .registers 2
    .parameter

    .prologue
    .line 1692
    invoke-static {}, LgE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->af(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeZ;

    iput-object v0, p0, LXk;->a:LeZ;

    .line 1698
    return-void
.end method
