.class public LHp;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Llu;

    .line 234
    invoke-static {}, LmV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Lmw;

    .line 240
    invoke-static {}, Ln;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/os/Handler;

    .line 246
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LHc;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:LanD;

    .line 252
    return-void
.end method
