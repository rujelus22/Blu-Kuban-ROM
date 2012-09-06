.class public LYK;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LZy;)V
    .registers 2
    .parameter

    .prologue
    .line 1681
    invoke-static {}, LZr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laah;

    iput-object v0, p0, LZy;->a:Laah;

    .line 1687
    return-void
.end method
