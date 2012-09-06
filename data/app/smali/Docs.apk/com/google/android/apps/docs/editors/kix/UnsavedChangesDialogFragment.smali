.class public Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "UnsavedChangesDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a:Lck;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x2

    .line 24
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->unsaved_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->unsaved_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->unsaved_dialog_cancel:I

    new-instance v3, LyI;

    invoke-direct {v3, p0}, LyI;-><init>(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->unsaved_dialog_discard:I

    new-instance v3, LyH;

    invoke-direct {v3, p0}, LyH;-><init>(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 54
    return-object v0
.end method
