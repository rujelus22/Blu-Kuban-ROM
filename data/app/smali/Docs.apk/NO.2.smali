.class LNO;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LNN;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(LNN;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, LNO;->a:LNN;

    iput p2, p0, LNO;->a:I

    iput p3, p0, LNO;->b:I

    iput p4, p0, LNO;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 217
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing onApiExported(slideCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LNO;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slideWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LNO;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slideHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LNO;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, LNO;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNO;->a:LNN;

    iget-object v1, v1, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, LNO;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    const-string v1, ""

    iget v2, p0, LNO;->b:I

    iget v3, p0, LNO;->c:I

    iget v4, p0, LNO;->a:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, LNq;->a(Ljava/lang/String;IIII)V

    .line 222
    return-void
.end method
