.class public LHu;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/fragment/ErrorFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    invoke-static {}, LZa;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXJ;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/ErrorFragment;->a:LXJ;

    .line 382
    return-void
.end method
