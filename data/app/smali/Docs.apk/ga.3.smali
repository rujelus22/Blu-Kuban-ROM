.class public Lga;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 903
    invoke-static {}, Lgz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdQ;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LdQ;

    .line 909
    invoke-static {}, Lgx;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lfe;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LanD;

    .line 915
    invoke-static {}, LIs;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIk;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LIk;

    .line 921
    return-void
.end method
