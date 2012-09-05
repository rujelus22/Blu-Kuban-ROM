.class Lcom/sec/android/inputmethod/axt9/AxT9IME$7;
.super Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
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
    .registers 3
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputViewhandler:Z
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1002(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 725
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestarting:Z
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onStartInputViewContinue(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 726
    return-void
.end method
