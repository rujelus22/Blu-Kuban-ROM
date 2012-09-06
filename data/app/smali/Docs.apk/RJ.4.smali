.class public LRJ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LRE;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    invoke-static {}, LSl;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LRF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LRE;->a:LanD;

    .line 86
    return-void
.end method
