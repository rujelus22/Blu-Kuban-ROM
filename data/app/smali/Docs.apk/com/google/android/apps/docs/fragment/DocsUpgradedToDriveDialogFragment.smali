.class public Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "DocsUpgradedToDriveDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lx;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->d(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "DocsUpgradedToDriveDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a()Lans;

    move-result-object v0

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v0, LcU;->migration_checkout_drive:I

    invoke-static {v1, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 42
    sget v4, LcY;->migration_checkout_drive_title_drivev2:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v4, LcY;->migration_checkout_drive_positive_button_drivev2:I

    new-instance v5, LHb;

    invoke-direct {v5, p0, v1, v2}, LHb;-><init>(Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, LcY;->migration_checkout_drive_negative_button_drivev2:I

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    return-object v0
.end method
