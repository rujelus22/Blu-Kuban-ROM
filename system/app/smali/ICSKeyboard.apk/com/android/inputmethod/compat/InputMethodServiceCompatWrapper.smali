.class public Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceCompatWrapper.java"


# static fields
.field public static final CAN_HANDLE_ON_CURRENT_INPUT_METHOD_SUBTYPE_CHANGED:Z


# instance fields
.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field protected mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 5
    .parameter "newSubtype"

    .prologue
    .line 83
    if-nez p1, :cond_21

    .line 84
    iget-object v1, p0, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    .line 86
    .local v0, subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :goto_8
    if-eqz v0, :cond_20

    .line 89
    sget-boolean v1, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-nez v1, :cond_19

    .line 90
    invoke-static {}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->getInstance()Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->setLocale(Ljava/lang/String;)V

    .line 92
    :cond_19
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 94
    :cond_20
    return-void

    .end local v0           #subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_21
    move-object v0, p1

    .line 85
    goto :goto_8
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 66
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 67
    return-void
.end method

.method public showOptionDialogInternal(Landroid/app/AlertDialog;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 47
    .local v2, windowToken:Landroid/os/IBinder;
    if-nez v2, :cond_10

    .line 61
    :goto_f
    return-void

    .line 49
    :cond_10
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 53
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 54
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 55
    const/16 v3, 0x3eb

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 59
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_f
.end method
