.class public Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$1;,
        Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;
    }
.end annotation


# static fields
.field private static final ARG_LABEL:Ljava/lang/String; = "reader:label"

.field private static final ARG_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mQueryHandler:Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mResultCode:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "uri"
    .parameter "label"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mResultCode:I

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string v1, "reader:label"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method private disableTag()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 88
    .local v6, args:Landroid/os/Bundle;
    const-string v0, "reader:uri"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 89
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "reader:label"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 90
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mQueryHandler:Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_c

    .line 84
    :goto_3
    return-void

    .line 80
    :pswitch_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->setResult(I)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->disableTag()V

    goto :goto_3

    .line 78
    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;-><init>(Landroid/content/Context;Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mQueryHandler:Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog$QueryHandler;

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "reader:label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    const v3, 0x7f0d0062

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    const v3, 0x7f0d0061

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    const v0, 0x7f0d0063

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v0, 0x7f0d0064

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 101
    .local v1, target:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_13

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->getTargetRequestCode()I

    move-result v0

    .line 103
    .local v0, requestCode:I
    iget v2, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mResultCode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    .end local v0           #requestCode:I
    :cond_13
    return-void
.end method

.method public setResult(I)V
    .registers 2
    .parameter "resultCode"

    .prologue
    .line 94
    iput p1, p0, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;->mResultCode:I

    .line 95
    return-void
.end method
