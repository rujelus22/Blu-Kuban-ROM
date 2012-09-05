.class public Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionInfoDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static showInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "fragmentManager"
    .parameter "label"
    .parameter "description"

    .prologue
    .line 241
    const-string v2, "permission_info_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 250
    :goto_8
    return-void

    .line 244
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;-><init>()V

    .line 248
    .local v1, dialog:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 249
    const-string v2, "permission_info_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 254
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070162

    new-instance v3, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 263
    .local v0, result:Landroid/app/Dialog;
    return-object v0
.end method
