.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 792
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 793
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .registers 7
    .parameter "context"
    .parameter "target"
    .parameter "ex"

    .prologue
    .line 797
    new-instance v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>()V

    .line 798
    .local v1, fragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "ErrorDialog.Message"

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v2, "ErrorDialog.ExceptionId"

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 802
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 803
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 809
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 810
    .local v0, arguments:Landroid/os/Bundle;
    const-string v6, "ErrorDialog.Message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, message:Ljava/lang/String;
    const-string v6, "ErrorDialog.ExceptionId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 812
    .local v3, exceptionId:I
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 815
    .local v5, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080100

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 821
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/16 v6, 0x10

    if-ne v3, v6, :cond_60

    .line 824
    const v6, 0x104000a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;

    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    const/high16 v6, 0x104

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;

    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    :goto_5b
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 843
    :cond_60
    const v6, 0x7f080124

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;

    invoke-direct {v7, p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5b
.end method
