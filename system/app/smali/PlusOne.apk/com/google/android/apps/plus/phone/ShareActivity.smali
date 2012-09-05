.class public Lcom/google/android/apps/plus/phone/ShareActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mApiKey:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mExternalId:Ljava/lang/String;

.field private mFooter:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

.field private mText:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private recordErrorSetCancelledAndFinish()V
    .registers 2

    .prologue
    .line 205
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_ERROR_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    .line 208
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 393
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public invalidateMenu()V
    .registers 3

    .prologue
    .line 275
    const v0, 0x7f10001f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->createTitlebarButtons(I)V

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->invalidateOptionsMenu()V

    .line 279
    :cond_f
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 227
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ShareFragment;

    if-eqz v0, :cond_1a

    .line 228
    check-cast p1, Lcom/google/android/apps/plus/fragments/ShareFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mImageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mExternalId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setData(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;)V

    .line 233
    :cond_1a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 398
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 399
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    .line 400
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 370
    packed-switch p2, :pswitch_data_c

    .line 377
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 378
    return-void

    .line 372
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    goto :goto_3

    .line 370
    nop

    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 89
    .local v18, intent:Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 90
    .local v15, data:Landroid/net/Uri;
    if-eqz v15, :cond_113

    const-string v3, "http"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "https"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 93
    :cond_22
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mUrl:Ljava/lang/String;

    .line 98
    :goto_2a
    sget-object v3, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v19

    .line 100
    .local v19, ourApiKey:Ljava/lang/String;
    const-string v3, "com.google.android.apps.plus.API_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mApiKey:Ljava/lang/String;

    .line 101
    const-string v3, "com.google.android.apps.plus.CLIENT_ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mClientId:Ljava/lang/String;

    .line 102
    const-string v3, "com.google.android.apps.plus.EXTERNAL_ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mExternalId:Ljava/lang/String;

    .line 103
    const-string v3, "com.google.android.apps.plus.FOOTER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mFooter:Ljava/lang/String;

    .line 104
    const-string v3, "com.google.android.apps.plus.VERSION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mVersion:Ljava/lang/String;

    .line 105
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mText:Ljava/lang/String;

    .line 107
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 108
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 111
    .local v22, streamData:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v3, v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_a3

    move-object/from16 v23, v22

    .line 112
    check-cast v23, Ljava/util/ArrayList;

    .line 113
    .local v23, streamDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a3

    .line 114
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 118
    .end local v23           #streamDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_a3
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/net/Uri;

    if-eqz v3, :cond_b1

    .line 119
    check-cast v22, Landroid/net/Uri;

    .end local v22           #streamData:Ljava/lang/Object;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/ShareActivity;->mImageUri:Landroid/net/Uri;

    .line 124
    :cond_b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_bc

    .line 125
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mUrl:Ljava/lang/String;

    .line 128
    :cond_bc
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v3, 0x7f030091

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/ShareActivity;->setContentView(I)V

    .line 132
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/ShareActivity;->showTitlebar(Z)V

    .line 133
    const v3, 0x7f0200cf

    const v4, 0x7f070033

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/phone/ShareActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 138
    .local v20, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, callingPackage:Ljava/lang/String;
    const-string v3, "from_signup"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 140
    .local v16, fromSignup:Z
    const-string v3, "calling_package"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, thirdPartyPackageName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    if-nez v16, :cond_11a

    .line 143
    :cond_10f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    .line 202
    :cond_112
    :goto_112
    return-void

    .line 95
    .end local v5           #thirdPartyPackageName:Ljava/lang/String;
    .end local v14           #callingPackage:Ljava/lang/String;
    .end local v16           #fromSignup:Z
    .end local v19           #ourApiKey:Ljava/lang/String;
    .end local v20           #packageManager:Landroid/content/pm/PackageManager;
    :cond_113
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mUrl:Ljava/lang/String;

    goto/16 :goto_2a

    .line 145
    .restart local v5       #thirdPartyPackageName:Ljava/lang/String;
    .restart local v14       #callingPackage:Ljava/lang/String;
    .restart local v16       #fromSignup:Z
    .restart local v19       #ourApiKey:Ljava/lang/String;
    .restart local v20       #packageManager:Landroid/content/pm/PackageManager;
    :cond_11a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b3

    .line 150
    const-string v3, "com.android.vending"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_136

    const-string v3, "com.google.android.music"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 152
    :cond_136
    const-string v19, "AIzaSyBJmYFqC5rPGCtL-HxQ0m_C_M7zQxGfIHE"

    .line 167
    :cond_138
    if-eqz p1, :cond_148

    .line 168
    const-string v3, "ShareActivity.mInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 170
    :cond_148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-nez v3, :cond_17d

    .line 172
    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mApiKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mClientId:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mVersion:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v2, theirInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v6, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mVersion:Ljava/lang/String;

    move-object/from16 v7, v19

    move-object v9, v5

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 181
    .end local v2           #theirInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :cond_17d
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v3, :cond_195

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v3

    if-nez v3, :cond_1cc

    .line 183
    :cond_195
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    goto/16 :goto_112

    .line 154
    :cond_19a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mApiKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ae

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mClientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 155
    :cond_1ae
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    goto/16 :goto_112

    .line 161
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mApiKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mClientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 162
    :cond_1c7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    goto/16 :goto_112

    .line 185
    :cond_1cc
    if-nez p1, :cond_206

    .line 186
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v13, args:Landroid/os/Bundle;
    const-string v3, "account"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    new-instance v21, Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/apps/plus/fragments/ShareFragment;-><init>()V

    .line 189
    .local v21, shareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setArguments(Landroid/os/Bundle;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mFooter:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setFooterMessage(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    .line 192
    .local v17, ft:Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0d0166

    const-string v4, "share"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 195
    .end local v13           #args:Landroid/os/Bundle;
    .end local v17           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v21           #shareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;
    :cond_206
    if-nez p1, :cond_112

    .line 196
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHOW_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_112

    .line 198
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_PREVIEW_SHOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto/16 :goto_112
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const v4, 0x104000a

    const/4 v3, 0x0

    .line 329
    sparse-switch p1, :sswitch_data_68

    .line 362
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 331
    :sswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070135

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_8

    .line 340
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070136

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_8

    .line 347
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_3a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070137

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_8

    .line 354
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_52
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 355
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f07011a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 357
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_8

    .line 329
    :sswitch_data_68
    .sparse-switch
        0x409e -> :sswitch_52
        0x5339 -> :sswitch_9
        0x58a1 -> :sswitch_3a
        0x6e27 -> :sswitch_21
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 319
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 308
    :sswitch_a
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    goto :goto_9

    .line 314
    :sswitch_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->post()Z

    goto :goto_9

    .line 305
    nop

    :sswitch_data_1a
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01ee -> :sswitch_13
        0x7f0d01ef -> :sswitch_a
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 266
    const v1, 0x7f0d01ee

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, postItem:Landroid/view/MenuItem;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_13

    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    return v2

    .line 267
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 295
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 296
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d01ee

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 298
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_e

    .line 243
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-eqz v0, :cond_19

    .line 247
    const-string v0, "ShareActivity.mInfo"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 249
    :cond_19
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    .line 287
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 8
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v4, 0x0

    .line 407
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 409
    const v2, 0x7f0d0187

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, titleLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 412
    .local v0, paddingLeft:I
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 413
    return-void
.end method
