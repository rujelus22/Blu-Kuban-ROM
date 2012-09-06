.class LNR;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LNN;


# direct methods
.method constructor <init>(LNN;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, LNR;->a:LNN;

    iput p2, p0, LNR;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 299
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing  onNavigation(slideIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LNR;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, LNR;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->e(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNR;->a:LNN;

    iget-object v1, v1, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, LNR;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    iget v1, p0, LNR;->a:I

    invoke-virtual {v0, v1}, LNq;->c(I)V

    .line 303
    return-void
.end method
