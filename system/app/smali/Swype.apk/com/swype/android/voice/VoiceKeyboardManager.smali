.class public abstract Lcom/swype/android/voice/VoiceKeyboardManager;
.super Lcom/swype/android/voice/VoiceManager;
.source "VoiceKeyboardManager.java"


# static fields
.field private static final RESULTS_DELAY:I = 0x32


# instance fields
.field protected volatile isSwypeViewShown:Z

.field protected volatile isViewShown:Z

.field protected view:Lcom/swype/android/voice/VoiceKeyboardView;


# direct methods
.method protected constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 3
    .parameter "ime"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/swype/android/voice/VoiceManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isSwypeViewShown:Z

    .line 27
    return-void
.end method

.method protected static removeFromParent(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_b

    .line 113
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    :cond_b
    return-void
.end method


# virtual methods
.method protected abstract cancel()V
.end method

.method protected hideVoiceKeyboard()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    if-eqz v1, :cond_1a

    .line 77
    new-instance v1, Lcom/swype/android/voice/VoiceKeyboardManager$1;

    invoke-direct {v1, p0}, Lcom/swype/android/voice/VoiceKeyboardManager$1;-><init>(Lcom/swype/android/voice/VoiceKeyboardManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_1a
    return-void
.end method

.method public isViewShowing()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    return v0
.end method

.method public onCreateView()V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swype/android/voice/VoiceKeyboardView;

    iput-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    .line 38
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0, p0}, Lcom/swype/android/voice/VoiceKeyboardView;->init(Lcom/swype/android/voice/VoiceKeyboardManager;)V

    .line 39
    return-void
.end method

.method protected final sendResultsToIME(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_19

    .line 121
    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    :cond_19
    return-void
.end method

.method protected showVoiceKeyboard()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isSwypeViewShown:Z

    .line 50
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    if-nez v0, :cond_1b

    .line 51
    invoke-virtual {p0}, Lcom/swype/android/voice/VoiceKeyboardManager;->onCreateView()V

    .line 52
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setInputView(Landroid/view/View;)V

    .line 55
    :cond_1b
    iget-boolean v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    if-nez v0, :cond_58

    .line 56
    iput-boolean v2, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->isViewShown:Z

    .line 62
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 63
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/voice/VoiceKeyboardView;->setMinimumHeight(I)V

    .line 65
    :cond_38
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateFullscreenMode()V

    .line 66
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateInputViewShown()V

    .line 67
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-static {v0}, Lcom/swype/android/voice/VoiceKeyboardManager;->removeFromParent(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setInputView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->setPreparing()V

    .line 70
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showWindow(Z)V

    .line 72
    :cond_58
    return-void
.end method

.method protected abstract stopListening()Z
.end method
