.class public LMZ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 561
    invoke-static {}, LNk;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LME;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a:LanD;

    .line 567
    return-void
.end method
