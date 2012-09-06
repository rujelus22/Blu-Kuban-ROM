.class public interface abstract Lcom/google/research/handwriting/gui/UIHandlerCallback;
.super Ljava/lang/Object;
.source "UIHandlerCallback.java"


# virtual methods
.method public abstract deleteText()V
.end method

.method public abstract getCursorSelectionEnd()I
.end method

.method public abstract getCursorSelectionStart()I
.end method

.method public abstract getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract getRecognizerLanguage()Ljava/lang/String;
.end method

.method public abstract getSourceTextToTranslate()Ljava/lang/String;
.end method

.method public abstract onCommitText(Ljava/lang/CharSequence;)V
.end method

.method public abstract sendKeyChar(C)V
.end method

.method public abstract setImeCandidatesViewShown(Z)V
.end method

.method public abstract setSuggestedWords(Lcom/google/research/handwriting/gui/SuggestedWords;)V
.end method
