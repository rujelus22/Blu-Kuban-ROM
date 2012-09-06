.class public LMW;
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

.method public static a(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    invoke-static {}, LNd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LME;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNn;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LNn;

    .line 476
    invoke-static {}, LNc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LME;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMD;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMD;

    .line 482
    return-void
.end method
