.class public LoT;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    invoke-static {p0}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 262
    invoke-static {}, LUY;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVo;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LVo;

    .line 268
    invoke-static {}, LZk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZJ;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LZJ;

    .line 274
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:Llu;

    .line 280
    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LHW;

    .line 286
    return-void
.end method
