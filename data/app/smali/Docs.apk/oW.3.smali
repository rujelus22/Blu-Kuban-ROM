.class public LoW;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 330
    invoke-static {p0}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 332
    invoke-static {}, Lpe;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Low;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a:Low;

    .line 338
    invoke-static {}, Lgx;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LoC;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->b:LanD;

    .line 344
    return-void
.end method
