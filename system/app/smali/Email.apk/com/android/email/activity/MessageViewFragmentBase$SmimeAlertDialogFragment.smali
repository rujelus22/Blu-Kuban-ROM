.class public Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmimeAlertDialogFragment"
.end annotation


# instance fields
.field public mAlwaysDecryptOrVerifyMails:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9801
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 9803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->mAlwaysDecryptOrVerifyMails:Z

    return-void
.end method

.method public static newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;
    .registers 5
    .parameter "title"
    .parameter "dialogType"

    .prologue
    .line 9806
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;-><init>()V

    .line 9807
    .local v1, frag:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9808
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9809
    const-string v2, "DialogType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9810
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 9811
    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/email/activity/MessageViewFragmentBase;
    .registers 2

    .prologue
    .line 9815
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 9820
    const-string v8, "NULL"

    const-string v9, "Inside onCreateDialog:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9821
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 9822
    .local v5, title:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DialogType"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 9824
    .local v1, dialogType:I
    packed-switch v1, :pswitch_data_138

    .line 9906
    const-string v8, "NULL"

    const-string v9, "Inside default:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9907
    :goto_28
    :pswitch_28
    return-object v7

    .line 9826
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 9828
    .local v2, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f040066

    invoke-virtual {v2, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 9829
    .local v4, textEntryView:Landroid/view/View;
    const v7, 0x7f100134

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9830
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f100135

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 9833
    .local v0, checkboxsmime:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080042

    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;

    invoke-direct {v10, p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080043

    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    .line 9854
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    goto :goto_28

    .line 9858
    .end local v0           #checkboxsmime:Landroid/widget/CheckBox;
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v4           #textEntryView:Landroid/view/View;
    .end local v6           #tv:Landroid/widget/TextView;
    :pswitch_84
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    .line 9859
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 9861
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 9862
    const/16 v7, 0xc

    if-ne v1, v7, :cond_c1

    const v3, 0x7f080500

    .line 9864
    .local v3, msgId:I
    :goto_ac
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9865
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_28

    .line 9862
    .end local v3           #msgId:I
    :cond_c1
    const v3, 0x7f0804ff

    goto :goto_ac

    .line 9872
    :pswitch_c5
    const-string v7, "NULL"

    const-string v8, "Inside MAIL_LOAD_MORE_DIALOG:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9873
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 9876
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_12d

    .line 9877
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080346

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9879
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 9880
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 9881
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 9882
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;

    invoke-direct {v8, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 9903
    :cond_12d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v7

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v7

    goto/16 :goto_28

    .line 9824
    nop

    :pswitch_data_138
    .packed-switch 0xb
        :pswitch_84
        :pswitch_84
        :pswitch_28
        :pswitch_c5
        :pswitch_29
    .end packed-switch
.end method
