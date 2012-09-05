.class Lcom/swype/android/voice/VoiceKeyboardManager$1;
.super Ljava/lang/Object;
.source "VoiceKeyboardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/voice/VoiceKeyboardManager;->hideVoiceKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/voice/VoiceKeyboardManager;


# direct methods
.method constructor <init>(Lcom/swype/android/voice/VoiceKeyboardManager;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-boolean v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    if-eqz v0, :cond_3d

    .line 80
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutView()Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_3e

    .line 82
    invoke-static {v0}, Lcom/swype/android/voice/VoiceKeyboardManager;->removeFromParent(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v1, v1, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setInputView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-boolean v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->isSwypeViewShown:Z

    if-nez v0, :cond_31

    .line 85
    :cond_2a
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideWindow()V

    .line 102
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    .line 103
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateInputViewShown()V

    .line 105
    :cond_3d
    return-void

    .line 87
    :cond_3e
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    if-eqz v0, :cond_31

    .line 94
    const-string v0, "Swype"

    const-string v1, "hideVoiceKeyboard() HIDING AND DESTROYING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-static {v0}, Lcom/swype/android/voice/VoiceKeyboardManager;->removeFromParent(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager$1;->this$0:Lcom/swype/android/voice/VoiceKeyboardManager;

    iget-object v0, v0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideWindow()V

    goto :goto_31
.end method
