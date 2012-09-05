.class public Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;
.super Landroid/support/v4/app/Fragment;
.source "OobInstantUploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mUploadChoice:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private doNextStep()V
    .registers 12

    .prologue
    .line 138
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 142
    .local v4, option:I
    packed-switch v4, :pswitch_data_46

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, uploadEnabled:Z
    const/4 v8, 0x1

    .line 163
    .local v8, wifiOnly:Z
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 164
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 165
    .local v2, myIntent:Landroid/content/Intent;
    const-string v9, "account"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 166
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v9, "step_num"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 168
    .local v6, step:I
    const-string v9, "intent"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 169
    .local v5, startIntent:Landroid/content/Intent;
    invoke-static {v1, v6, v0, v5}, Lcom/google/android/apps/plus/oob/OobUtils;->getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 172
    .local v3, nextIntent:Landroid/content/Intent;
    invoke-direct {p0, v1, v0, v7, v8}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->updateSystemSetting(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZZ)V

    .line 174
    if-eqz v3, :cond_3e

    .line 176
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    :goto_37
    return-void

    .line 144
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #myIntent:Landroid/content/Intent;
    .end local v3           #nextIntent:Landroid/content/Intent;
    .end local v5           #startIntent:Landroid/content/Intent;
    .end local v6           #step:I
    .end local v7           #uploadEnabled:Z
    .end local v8           #wifiOnly:Z
    :pswitch_38
    const/4 v7, 0x1

    .line 145
    .restart local v7       #uploadEnabled:Z
    const/4 v8, 0x1

    .line 146
    .restart local v8       #wifiOnly:Z
    goto :goto_b

    .line 150
    .end local v7           #uploadEnabled:Z
    .end local v8           #wifiOnly:Z
    :pswitch_3b
    const/4 v7, 0x1

    .line 151
    .restart local v7       #uploadEnabled:Z
    const/4 v8, 0x0

    .line 152
    .restart local v8       #wifiOnly:Z
    goto :goto_b

    .line 179
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v2       #myIntent:Landroid/content/Intent;
    .restart local v3       #nextIntent:Landroid/content/Intent;
    .restart local v5       #startIntent:Landroid/content/Intent;
    .restart local v6       #step:I
    :cond_3e
    const/4 v9, -0x1

    invoke-virtual {v1, v9, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_37

    .line 142
    :pswitch_data_46
    .packed-switch 0x7f0d00f9
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method

.method private isPhotoSyncEnabled()Z
    .registers 7

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 126
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 127
    .local v3, myIntent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 128
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, picasaAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 131
    .local v2, currentAccount:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private updateSystemSetting(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZZ)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "enabled"
    .parameter "wifiOnly"

    .prologue
    .line 189
    new-instance v0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;Landroid/content/Context;ZLcom/google/android/apps/plus/content/EsAccount;Z)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "startIntent"

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_1e

    .line 221
    :cond_3
    :goto_3
    return-void

    .line 207
    :pswitch_4
    if-eqz p2, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 209
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 211
    .local v1, myStartIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 205
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    packed-switch p2, :pswitch_data_c

    .line 118
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    return-void

    .line 108
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->doNextStep()V

    goto :goto_3

    .line 105
    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0d00fb

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    .line 91
    .local v0, isIUDisabled:Z
    :goto_c
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->isPhotoSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v0, :cond_1a

    .line 93
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->doNextStep()V

    .line 98
    :goto_17
    return-void

    .line 90
    .end local v0           #isIUDisabled:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_c

    .line 96
    .restart local v0       #isIUDisabled:Z
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_17
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 54
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;

    if-eqz v1, :cond_10

    .line 55
    check-cast v0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->setDialogOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    :cond_10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const v5, 0x7f030054

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f07004e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v5, 0x7f0d00fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, desc:Landroid/widget/TextView;
    const v5, 0x7f07004f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 73
    const v5, 0x7f0d0101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 74
    .local v1, items:Landroid/widget/LinearLayout;
    const v5, 0x7f030052

    invoke-virtual {p1, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v5, 0x7f0d00f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    .line 77
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    const v6, 0x7f0d00f9

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 79
    const v5, 0x7f0d00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 80
    .local v2, mContinueButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v4
.end method
