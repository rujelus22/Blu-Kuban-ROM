.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 846
    const-string v0, "CheckProgressDialog.Progress"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .registers 4
    .parameter "progress"

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, stringId:I
    packed-switch p1, :pswitch_data_1a

    .line 955
    :goto_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 946
    :pswitch_d
    const v0, 0x7f0800d3

    .line 947
    goto :goto_4

    .line 949
    :pswitch_11
    const v0, 0x7f0800d4

    .line 950
    goto :goto_4

    .line 952
    :pswitch_15
    const v0, 0x7f0800d5

    goto :goto_4

    .line 944
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .registers 3
    .parameter "parentFragment"
    .parameter "progress"

    .prologue
    .line 858
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    .line 859
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 860
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 921
    .local v2, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 922
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 923
    const/4 v0, 0x0

    .line 925
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_start_d
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_19

    move-result-object v0

    .line 930
    :goto_11
    if-eqz v0, :cond_18

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 931
    :cond_18
    return-void

    .line 926
    :catch_19
    move-exception v1

    .line 927
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CheckProgressDialog"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 878
    .local v0, context:Landroid/content/Context;
    if-eqz p1, :cond_e

    .line 879
    const-string v3, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 881
    :cond_e
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 882
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 884
    :cond_1c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 886
    .local v2, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 887
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 888
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 889
    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 890
    const v3, 0x7f0800d6

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 891
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 892
    const/4 v3, -0x2

    const v4, 0x7f080043

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 910
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 936
    const-string v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public updateProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 870
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 871
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_13

    .line 872
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 873
    :cond_13
    return-void
.end method