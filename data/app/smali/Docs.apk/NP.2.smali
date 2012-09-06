.class LNP;
.super Ljava/lang/Object;
.source "PunchWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LNN;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(LNN;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, LNP;->a:LNN;

    iput p2, p0, LNP;->a:I

    iput p3, p0, LNP;->b:I

    iput-object p4, p0, LNP;->a:Ljava/lang/String;

    iput-object p5, p0, LNP;->b:Ljava/lang/String;

    iput-object p6, p0, LNP;->c:Ljava/lang/String;

    iput-object p7, p0, LNP;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 247
    iget-object v0, p0, LNP;->a:LNN;

    iget-object v0, v0, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->c(Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LNP;->a:LNN;

    iget-object v1, v1, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 249
    iget v0, p0, LNP;->a:I

    invoke-static {v0}, LNM;->a(I)LNM;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing onSlideLoadStateChange(slideIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LNP;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", loadState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", slideContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LNP;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", slideContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LNP;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", slideTitle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LNP;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", slideSpeakerNotesConverted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LNP;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, LNs;

    iget-object v1, p0, LNP;->a:Ljava/lang/String;

    iget-object v2, p0, LNP;->b:Ljava/lang/String;

    iget-object v3, p0, LNP;->d:Ljava/lang/String;

    iget-object v4, p0, LNP;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, LNs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, LNP;->a:LNN;

    iget-object v1, v1, LNN;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a:LNq;

    iget v2, p0, LNP;->b:I

    invoke-virtual {v1, v2, v0}, LNq;->a(ILNs;)V

    .line 262
    return-void
.end method
