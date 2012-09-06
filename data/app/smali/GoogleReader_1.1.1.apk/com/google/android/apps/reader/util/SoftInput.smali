.class public final Lcom/google/android/apps/reader/util/SoftInput;
.super Ljava/lang/Object;
.source "SoftInput.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static hide(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SystemService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_12

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 41
    :cond_12
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SystemService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_e

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 34
    :cond_e
    return-void
.end method
