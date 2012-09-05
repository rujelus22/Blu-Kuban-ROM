.class Lcom/sec/android/inputmethod/axt9/AxT9IME$12;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 2
    .parameter

    .prologue
    .line 4294
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 4299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4300
    .local v0, respInt:Landroid/content/Intent;
    const-string v1, "ResponseAxT9InfoAllHeight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4301
    const-string v3, "ResponseAxT9InfoAllHeight"

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    if-nez v1, :cond_28

    move v1, v2

    :goto_16
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v4

    if-nez v4, :cond_41

    :cond_1e
    :goto_1e
    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4302
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 4304
    return-void

    .line 4301
    :cond_28
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShown()Z

    move-result v1

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_16

    :cond_36
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getHeight()I

    move-result v1

    goto :goto_16

    :cond_41
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getHeight()I

    move-result v2

    goto :goto_1e
.end method
