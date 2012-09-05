.class Lcom/sec/android/inputmethod/axt9/AxT9IME$8;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreate()V
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
    .line 898
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    move-result-object v1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 903
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 905
    :cond_32
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 906
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 908
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 909
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    .line 910
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->dismissPreview()V

    .line 912
    :cond_69
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 913
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 915
    :cond_7a
    return-void
.end method
