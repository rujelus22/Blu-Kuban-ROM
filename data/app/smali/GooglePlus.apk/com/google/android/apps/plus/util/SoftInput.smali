.class public final Lcom/google/android/apps/plus/util/SoftInput;
.super Ljava/lang/Object;
.source "SoftInput.java"


# direct methods
.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static hide(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 31
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_12

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 34
    :cond_12
    return-void
.end method

.method public static restart(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 38
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 39
    :cond_d
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 24
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 27
    :cond_e
    return-void
.end method
