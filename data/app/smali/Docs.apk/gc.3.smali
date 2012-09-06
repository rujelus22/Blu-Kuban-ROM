.class public Lgc;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 926
    invoke-static {p0}, LfZ;->a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V

    .line 928
    invoke-static {}, LgE;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->Y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeZ;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LeZ;

    .line 934
    invoke-static {}, LdD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdE;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:LdE;

    .line 940
    invoke-static {}, Ln;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->b:Landroid/os/Handler;

    .line 946
    invoke-static {}, LmV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->ab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Lmw;

    .line 952
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->ac(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CommentStreamActivity;->a:Llu;

    .line 958
    return-void
.end method
