.class public Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;
.super Landroid/support/v4/app/Fragment;
.source "OobInstantUploadFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# instance fields
.field private mUploadChoice:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private doNextStep()V
    .registers 8

    .prologue
    .line 178
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 182
    .local v3, option:I
    packed-switch v3, :pswitch_data_28

    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, uploadEnabled:Z
    const/4 v5, 0x1

    .line 203
    .local v5, wifiOnly:Z
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/OobDeviceActivity;

    .line 204
    .local v1, activity:Lcom/google/android/apps/plus/phone/OobDeviceActivity;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 205
    .local v2, myIntent:Landroid/content/Intent;
    const-string v6, "account"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 208
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-direct {p0, v1, v0, v4, v5}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->updateSystemSetting(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZZ)V

    .line 209
    return-void

    .line 184
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activity:Lcom/google/android/apps/plus/phone/OobDeviceActivity;
    .end local v2           #myIntent:Landroid/content/Intent;
    .end local v4           #uploadEnabled:Z
    .end local v5           #wifiOnly:Z
    :pswitch_21
    const/4 v4, 0x1

    .line 185
    .restart local v4       #uploadEnabled:Z
    const/4 v5, 0x1

    .line 186
    .restart local v5       #wifiOnly:Z
    goto :goto_b

    .line 190
    .end local v4           #uploadEnabled:Z
    .end local v5           #wifiOnly:Z
    :pswitch_24
    const/4 v4, 0x1

    .line 191
    .restart local v4       #uploadEnabled:Z
    const/4 v5, 0x0

    .line 192
    .restart local v5       #wifiOnly:Z
    goto :goto_b

    .line 182
    nop

    :pswitch_data_28
    .packed-switch 0x7f090177
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private isInstantUploadSyncEnabled()Z
    .registers 7

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 166
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 167
    .local v4, myIntent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 168
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v3, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 169
    .local v3, instantUploadAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 171
    .local v2, currentAccount:Landroid/accounts/Account;
    const-string v5, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private showEnablePhotoSyncDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 116
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v4, "photo_sync_dialog"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 129
    :goto_d
    return-void

    .line 120
    :cond_e
    const v4, 0x7f080045

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, syncName:Ljava/lang/String;
    const v4, 0x7f080061

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, message:Ljava/lang/String;
    const v4, 0x7f080060

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08020b

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08020e

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 127
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, p0, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 128
    const-string v4, "photo_sync_dialog"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private showMasterSyncDisabledDialog()V
    .registers 7

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 99
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "photo_master_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 109
    :goto_c
    return-void

    .line 103
    :cond_d
    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080209

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 107
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 108
    const-string v2, "photo_master_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private updateSystemSetting(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZZ)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "enabled"
    .parameter "wifiOnly"

    .prologue
    .line 216
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

    .line 225
    return-void
.end method


# virtual methods
.method public commit()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const v6, 0x7f090179

    if-ne v5, v6, :cond_20

    move v0, v3

    .line 74
    .local v0, iuDisabled:Z
    :goto_e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->isInstantUploadSyncEnabled()Z

    move-result v1

    .line 75
    .local v1, iuSyncEnabled:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 77
    .local v2, masterSyncEnabled:Z
    if-eqz v2, :cond_1a

    if-nez v1, :cond_1c

    :cond_1a
    if-eqz v0, :cond_22

    .line 79
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->doNextStep()V

    .line 90
    :goto_1f
    return v3

    .end local v0           #iuDisabled:Z
    .end local v1           #iuSyncEnabled:Z
    .end local v2           #masterSyncEnabled:Z
    :cond_20
    move v0, v4

    .line 73
    goto :goto_e

    .line 83
    .restart local v0       #iuDisabled:Z
    .restart local v1       #iuSyncEnabled:Z
    .restart local v2       #masterSyncEnabled:Z
    :cond_22
    if-nez v2, :cond_29

    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->showMasterSyncDisabledDialog()V

    :goto_27
    move v3, v4

    .line 90
    goto :goto_1f

    .line 88
    :cond_29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->showEnablePhotoSyncDialog()V

    goto :goto_27
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f090177

    .line 47
    const v3, 0x7f030079

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, view:Landroid/view/View;
    const v3, 0x7f090176

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    .line 50
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 53
    const-string v3, "ro.carrier"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, carrier:Ljava/lang/String;
    const-string v3, "wifi-only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 56
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, wifiMobileUploadOption:Landroid/view/View;
    if-eqz v2, :cond_37

    .line 60
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->removeView(Landroid/view/View;)V

    .line 63
    :cond_37
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->mUploadChoice:Landroid/widget/RadioGroup;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 66
    .end local v2           #wifiMobileUploadOption:Landroid/view/View;
    :cond_3f
    return-object v1
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 152
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 159
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 145
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->doNextStep()V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/OobDeviceActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onContinue()V

    .line 138
    return-void
.end method
