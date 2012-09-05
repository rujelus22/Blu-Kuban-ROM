.class public Lcom/infraware/polarisoffice/common/ImmManager;
.super Ljava/lang/Object;
.source "ImmManager.java"


# instance fields
.field private final DELAY_TIME:I

.field private mActivity:Landroid/app/Activity;

.field private mDelayHandleTask:Ljava/lang/Runnable;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDiaglog:Landroid/app/AlertDialog;

.field private mInputFlag:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "a_activity"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x12c

    iput v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->DELAY_TIME:I

    .line 37
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ImmManager;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 4
    .parameter "a_activity"
    .parameter "a_dialog"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x12c

    iput v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->DELAY_TIME:I

    .line 44
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    .line 46
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ImmManager;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/infraware/polarisoffice/common/ImmManager$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ImmManager$1;-><init>(Lcom/infraware/polarisoffice/common/ImmManager;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandleTask:Ljava/lang/Runnable;

    .line 60
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputFlag:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputFlag:I

    .line 65
    return-void
.end method


# virtual methods
.method public hideForcedIme()V
    .registers 5

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, focusedView:Landroid/view/View;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    if-nez v1, :cond_25

    .line 109
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 114
    :goto_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandleTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 116
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    :cond_24
    return-void

    .line 111
    :cond_25
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    :cond_10
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 74
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public resetImeParameter(Landroid/app/Activity;)V
    .registers 2
    .parameter "a_activity"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    .line 127
    return-void
.end method

.method public resetImeParameter(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter "a_activity"
    .parameter "a_dialog"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    .line 122
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    .line 123
    return-void
.end method

.method public showDelayedIme()V
    .registers 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDelayHandleTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public showForcedIme()V
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, focusedView:Landroid/view/View;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    if-nez v1, :cond_15

    .line 90
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 94
    :goto_b
    if-eqz v0, :cond_14

    .line 95
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mInputFlag:I

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 96
    :cond_14
    return-void

    .line 92
    :cond_15
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ImmManager;->mDiaglog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method
