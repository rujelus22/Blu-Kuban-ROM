.class public Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CustomProgressFragmentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$CustomProgressDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, args:Landroid/os/Bundle;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, newDialog:Landroid/app/ProgressDialog;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 91
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1e
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    const-string v3, "cancelable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, cancelable:Z
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;->setCancelable(Z)V

    .line 100
    if-eqz v1, :cond_40

    .line 101
    new-instance v3, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;-><init>(Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 116
    :cond_40
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 117
    return-object v2
.end method
