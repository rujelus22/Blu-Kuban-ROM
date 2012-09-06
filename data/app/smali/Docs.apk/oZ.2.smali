.class public LoZ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    invoke-static {p0}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 391
    invoke-static {}, LlL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a:Lmi;

    .line 397
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a:Llu;

    .line 403
    return-void
.end method
