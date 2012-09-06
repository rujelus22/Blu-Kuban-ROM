.class public Lpc;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    invoke-static {p0}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 371
    invoke-static {}, Lph;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LoC;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpL;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:LpL;

    .line 377
    return-void
.end method
