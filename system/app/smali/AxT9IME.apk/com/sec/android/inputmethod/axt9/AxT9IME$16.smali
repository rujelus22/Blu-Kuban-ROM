.class Lcom/sec/android/inputmethod/axt9/AxT9IME$16;
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
    .line 4386
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4391
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 4393
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4394
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4396
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4399
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 4400
    const-string v0, "AxT9IME"

    const-string v1, "AxT9IME.onReceive:Closing add word popup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 4404
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    .line 4405
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 4408
    :cond_7d
    return-void
.end method
