.class public Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .registers 7
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"
    .parameter "negativeButtonText"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, args:Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 66
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_c
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz p2, :cond_18

    .line 71
    const-string v2, "positive"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_18
    if-eqz p3, :cond_1f

    .line 75
    const-string v2, "negative"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1f
    new-instance v1, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 79
    .local v1, frag:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 128
    .local v0, listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    if-eqz v0, :cond_13

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 131
    :cond_13
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 112
    .local v0, listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    if-eqz v0, :cond_b

    .line 113
    packed-switch p2, :pswitch_data_24

    .line 122
    :cond_b
    :goto_b
    return-void

    .line 115
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_b

    .line 118
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_b

    .line 113
    :pswitch_data_24
    .packed-switch -0x2
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 92
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    :cond_1e
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 98
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    :cond_38
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 102
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :cond_49
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
