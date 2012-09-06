.class public LHQ;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements LQn;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/PreviewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 869
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->f(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 870
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;Z)V

    .line 871
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 875
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->g(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 876
    const-string v0, "PreviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    sget-object v1, LHS;->b:LHS;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V

    .line 879
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 883
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->h(Lcom/google/android/apps/docs/fragment/PreviewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 884
    iget-object v0, p0, LHQ;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    sget-object v1, LHS;->a:LHS;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;LHS;)V

    .line 885
    return-void
.end method
