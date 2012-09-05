.class public Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;
.super Landroid/app/DialogFragment;
.source "CountryNotSupportedDialogFragment.java"


# instance fields
.field private mDismissClick:Landroid/content/DialogInterface$OnClickListener;

.field private mMoreClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;-><init>(Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->mMoreClick:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    new-instance v0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$2;-><init>(Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->mDismissClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e00af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v1, 0x7f0e0088

    iget-object v2, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->mMoreClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    const v1, 0x7f0e00b1

    iget-object v2, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->mDismissClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
