.class public Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmRemoveFromLibraryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 50
    new-instance v2, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;-><init>(Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;)V

    .line 63
    .local v2, okListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0e0060

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$Arguments;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0063

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
