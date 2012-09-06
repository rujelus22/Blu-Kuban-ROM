.class public Lcom/google/android/apps/plus/phone/SignOnActivity;
.super Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.source "SignOnActivity.java"


# instance fields
.field private mCallingActivity:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;-><init>()V

    return-void
.end method

.method public static finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 8
    .parameter "activity"
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    if-eqz p1, :cond_47

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 201
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_signup"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v4, "no_account"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 224
    .end local v0           #resultIntent:Landroid/content/Intent;
    :goto_2d
    return v2

    .line 212
    :cond_2e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 213
    .local v1, target:Landroid/content/Intent;
    if-eqz v1, :cond_43

    .line 214
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 219
    :cond_43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .end local v1           #target:Landroid/content/Intent;
    :cond_47
    move v2, v3

    .line 224
    goto :goto_2d
.end method

.method private fireIntent(I)V
    .registers 5
    .parameter "resultCode"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_9
    invoke-static {p0, v2, v1}, Lcom/google/android/apps/plus/phone/Intents;->getTargetIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1d

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    .line 187
    :goto_15
    return-void

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 169
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_28

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_15

    .line 183
    :cond_28
    const-string v1, "from_signup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x2000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_15
.end method


# virtual methods
.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 233
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onAccountSet(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "oobResponse"
    .parameter "account"

    .prologue
    .line 90
    invoke-static {p0, p2, p1}, Lcom/google/android/apps/plus/phone/Intents;->getOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, nextIntent:Landroid/content/Intent;
    if-eqz p2, :cond_12

    .line 92
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONNECT_SELECT_ACCOUNT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->recordEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 93
    if-eqz p1, :cond_12

    .line 94
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONNECT_SHOW_OOB:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->recordEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 97
    :cond_12
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_3c

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    :goto_6
    return-void

    .line 121
    :pswitch_7
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 122
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(I)V

    goto :goto_6

    .line 125
    :cond_e
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_6

    .line 132
    :pswitch_15
    if-eqz p3, :cond_34

    const-string v1, "no_account"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 134
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 135
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v1

    if-nez v1, :cond_30

    .line 136
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->showAccountList()V

    goto :goto_6

    .line 138
    :cond_30
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(I)V

    goto :goto_6

    .line 143
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_34
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finish()V

    goto :goto_6

    .line 119
    nop

    :pswitch_data_3c
    .packed-switch 0xa
        :pswitch_7
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    if-eqz p1, :cond_1f

    .line 55
    const-string v1, "SignOnActivity#callingActivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    .line 60
    :goto_f
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 62
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v1

    if-nez v1, :cond_26

    .line 64
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->showAccountSelectionOrUpgradeAccount(Landroid/os/Bundle;)V

    .line 70
    :cond_1e
    :goto_1e
    return-void

    .line 57
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    goto :goto_f

    .line 66
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_26
    if-nez p1, :cond_1e

    .line 67
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/SignOnActivity;->fireIntent(I)V

    goto :goto_1e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "SignOnActivity#callingActivity"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    return-void
.end method

.method recordEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 15
    .parameter "account"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 102
    .local v11, customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_34

    move-object v3, v1

    .line 103
    .local v3, pkg:Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_2a

    .line 105
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v4, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 108
    .local v4, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v4}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v11

    .line 110
    .end local v0           #sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .end local v4           #info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :cond_2a
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/SignOnActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONNECT_SELECT_ACCOUNT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 112
    return-void

    .line 102
    .end local v3           #pkg:Ljava/lang/String;
    :cond_34
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnActivity;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method
