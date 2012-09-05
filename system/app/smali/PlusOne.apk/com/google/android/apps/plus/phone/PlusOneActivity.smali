.class public Lcom/google/android/apps/plus/phone/PlusOneActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private recordErrorAndFinish()V
    .registers 2

    .prologue
    .line 122
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_ERROR_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->finish()V

    .line 124
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 142
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 189
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 191
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 192
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 193
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 198
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 199
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    packed-switch p2, :pswitch_data_c

    .line 182
    :goto_3
    return-void

    .line 177
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->finish()V

    goto :goto_3

    .line 175
    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v12, 0x7f03006f

    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setContentView(I)V

    .line 52
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->showTitlebar(Z)V

    .line 53
    const v12, 0x7f0200cf

    const v13, 0x7f070033

    invoke-virtual {p0, v13}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 56
    .local v7, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v1, args:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 61
    iget-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v12}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 119
    :cond_31
    :goto_31
    return-void

    .line 65
    :cond_32
    const-string v12, "PlusOneFragment#mAccount"

    iget-object v13, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, callingPackage:Ljava/lang/String;
    const-string v12, "from_signup"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    .local v3, fromSignup:Z
    const-string v12, "calling_package"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, thirdPartyPackageName:Ljava/lang/String;
    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 73
    :cond_5c
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto :goto_31

    .line 77
    :cond_60
    sget-object v12, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v7, v12, v13, v9}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generateApiaryApiInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    .line 79
    .local v5, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v8

    .line 80
    .local v8, source:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    if-eqz v8, :cond_a8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 85
    :cond_a8
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto :goto_31

    .line 88
    :cond_ac
    const-string v12, "PlusOneFragment#mApiaryApiInfo"

    invoke-virtual {v1, v12, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    const-string v12, "com.google.circles.platform.intent.extra.TOKEN"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, token:Ljava/lang/String;
    const-string v12, "com.google.circles.platform.intent.extra.ENTITY"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, url:Ljava/lang/String;
    const-string v12, "com.google.circles.platform.intent.extra.ACTION"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_da

    .line 98
    :cond_d5
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordErrorAndFinish()V

    goto/16 :goto_31

    .line 101
    :cond_da
    const-string v12, "delete"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12e

    const/4 v6, 0x1

    .line 103
    .local v6, insert:Z
    :goto_e3
    const-string v12, "PlusOneFragment#mToken"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v12, "PlusOneFragment#mUrl"

    invoke-virtual {v1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v12, "PlusOneFragment#mInsert"

    invoke-virtual {v1, v12, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    const-string v13, "PlusOneActivity#Fragment"

    invoke-virtual {v12, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    iput-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    .line 109
    iget-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    if-nez v12, :cond_125

    .line 110
    new-instance v12, Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {v12}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;-><init>()V

    iput-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    .line 111
    iget-object v12, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v12, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 113
    .local v4, ft:Landroid/support/v4/app/FragmentTransaction;
    const v12, 0x7f0d0133

    iget-object v13, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    const-string v14, "PlusOneActivity#Fragment"

    invoke-virtual {v4, v12, v13, v14}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 114
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 116
    .end local v4           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_125
    if-nez p1, :cond_31

    .line 117
    sget-object v12, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHOW_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto/16 :goto_31

    .line 101
    .end local v6           #insert:Z
    :cond_12e
    const/4 v6, 0x0

    goto :goto_e3
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_22

    .line 167
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 160
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 158
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    :cond_b
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 8
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 208
    const v2, 0x7f0d0187

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, titleLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 211
    .local v0, paddingLeft:I
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    return-void
.end method
