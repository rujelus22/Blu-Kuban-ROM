.class public Lcom/google/android/apps/docs/view/PinWarningDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "PinWarningDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/PinWarningDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, LcY;->pin_warning_external_storage_not_ready:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, LcY;->pin_warning_external_storage_not_ready_ok:I

    new-instance v2, Labc;

    invoke-direct {v2, p0}, Labc;-><init>(Lcom/google/android/apps/docs/view/PinWarningDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
