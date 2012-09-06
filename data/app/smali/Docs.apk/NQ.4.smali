.class LNQ;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LNN;

.field final synthetic a:Z


# direct methods
.method constructor <init>(LNN;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, LNQ;->a:LNN;

    iput-boolean p2, p0, LNQ;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 277
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing onFinishedLoading(isLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LNQ;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, LNQ;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->d(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNQ;->a:LNN;

    iget-object v1, v1, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, LNQ;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    iget-boolean v1, p0, LNQ;->a:Z

    invoke-virtual {v0, v1}, LNq;->a(Z)V

    .line 281
    iget-object v0, p0, LNQ;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 282
    return-void
.end method
