.class public abstract Lcom/swype/android/inputmethod/SwypeDialog;
.super Ljava/lang/Object;
.source "SwypeDialog.java"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field protected dismissOnSleep:Z

.field protected lastToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dismissOnSleep:Z

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/swype/android/inputmethod/SwypeDialog;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dialog:Landroid/app/Dialog;

    .line 44
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    :cond_11
    return-void
.end method

.method protected abstract doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDismissOnSleep()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeDialog;->dismissOnSleep:Z

    return v0
.end method

.method public onOrientationChange()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 5
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeDialog;->lastToken:Landroid/os/IBinder;

    .line 74
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 76
    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 77
    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 78
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 85
    :try_start_34
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_34 .. :try_end_3b} :catch_3c

    .line 96
    :cond_3b
    :goto_3b
    return-void

    .line 91
    :catch_3c
    move-exception v0

    const-string v0, "Swype"

    const-string v1, "Token exception when showing dialog, dialog will not show"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
