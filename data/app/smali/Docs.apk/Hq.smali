.class public LHq;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LHc;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LanD;

    .line 127
    invoke-static {}, Ln;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/os/Handler;

    .line 133
    invoke-static {}, LmV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmw;

    .line 139
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LHc;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Llu;

    .line 145
    return-void
.end method
