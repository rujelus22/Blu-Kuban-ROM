.class public Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 832
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
    .registers 4
    .parameter "accountName"

    .prologue
    .line 840
    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;-><init>()V

    .line 841
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 842
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 844
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->dismiss()V

    .line 866
    const/4 v0, -0x2

    if-ne p2, v0, :cond_d

    .line 867
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 869
    :cond_d
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 852
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 853
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08012e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 855
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 856
    const v4, 0x7f08012f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 858
    const v4, 0x7f080009

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 859
    const v4, 0x7f08000a

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
