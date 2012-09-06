.class public LoV;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    invoke-static {p0}, LoZ;->a(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    .line 319
    invoke-static {}, LSk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRS;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:LRS;

    .line 325
    return-void
.end method
