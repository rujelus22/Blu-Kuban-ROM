.class public Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadSizeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
    .registers 4
    .parameter "targetFragment"

    .prologue
    .line 50
    instance-of v1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    if-nez v1, :cond_c

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "targetFragment must implement DownloadSizeDialogListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_c
    new-instance v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;-><init>()V

    .line 55
    .local v0, dialog:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    if-eqz v0, :cond_15

    .line 108
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;->onDownloadCancel()V

    .line 112
    :goto_14
    return-void

    .line 110
    :cond_15
    const-string v0, "Target fragment does not implement DownloadSizeDialogListener."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 61
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070170

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070171

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070162

    new-instance v5, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070060

    new-instance v5, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, test:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, settings:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_55

    .line 83
    const v3, 0x7f070172

    new-instance v4, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$3;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    :cond_55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    if-eqz v0, :cond_15

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;->onDownloadCancel()V

    .line 102
    :goto_14
    return-void

    .line 100
    :cond_15
    const-string v0, "Target fragment does not implement DownloadSizeDialogListener."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method
