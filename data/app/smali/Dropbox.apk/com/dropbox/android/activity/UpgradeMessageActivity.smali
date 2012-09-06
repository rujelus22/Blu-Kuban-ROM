.class public Lcom/dropbox/android/activity/UpgradeMessageActivity;
.super Landroid/app/Activity;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 24
    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 25
    const v1, 0x7f09000e

    new-instance v2, Lcom/dropbox/android/activity/bU;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bU;-><init>(Lcom/dropbox/android/activity/UpgradeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    new-instance v1, Lcom/dropbox/android/activity/bV;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bV;-><init>(Lcom/dropbox/android/activity/UpgradeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UpgradeMessageActivity;->showDialog(I)V

    .line 18
    return-void
.end method
