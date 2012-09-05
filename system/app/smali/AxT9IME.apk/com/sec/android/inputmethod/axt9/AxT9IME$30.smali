.class Lcom/sec/android/inputmethod/axt9/AxT9IME$30;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field final synthetic val$configChanged:Z


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8950
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iput-boolean p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->val$configChanged:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 8952
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z
    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$3102(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 8953
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$3200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    .line 8954
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8955
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_23

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_23

    .line 8956
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8958
    :cond_23
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputView(Landroid/view/View;)V

    .line 8959
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateInputViewShown()V

    .line 8960
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->val$configChanged:Z

    if-eqz v2, :cond_3a

    .line 8961
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$3200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->onConfigurationChanged()V

    .line 8963
    :cond_3a
    return-void
.end method
