.class public Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;
.super Landroid/app/Activity;
.source "SnsAccountTwInformationActivity.java"


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    const/4 v2, -0x1

    .line 136
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    if-ne p2, v2, :cond_7

    .line 144
    :goto_6
    return-void

    .line 139
    :cond_7
    if-ne p2, v2, :cond_11

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    .end local v0           #i:Landroid/content/Intent;
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->finish()V

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 59
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "SnsAccountTw"

    const-string v8, "SnsAccountInformationActivity : onCreate - getParcelableExtra(manageAccount)!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v7, "manageAccount"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountAuthenticatorResponse;

    .line 64
    .local v6, response:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v6, :cond_1e

    .line 65
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 68
    :cond_1e
    const/4 v2, 0x0

    .line 71
    .local v2, disclaimerValue:I
    :try_start_1f
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SNS_DISCLAIMER_AGREE"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1f .. :try_end_28} :catch_82

    move-result v2

    .line 77
    :goto_29
    if-nez v2, :cond_38

    .line 78
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v4, i:Landroid/content/Intent;
    const-string v7, "com.sec.android.app.snsdisclaimer.snsacounttw"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v4, v11}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    .end local v4           #i:Landroid/content/Intent;
    :cond_38
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->setContentView(I)V

    .line 86
    iput-object p0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->mAppContext:Landroid/content/Context;

    .line 88
    iget-object v7, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 91
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v7, v1

    if-lez v7, :cond_8d

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060010

    invoke-virtual {p0, v8}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    const/high16 v10, 0x7f06

    invoke-virtual {p0, v10}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 98
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v7, "com.sec.android.app.sns.action.CHECK_SESSION_VALIDITY"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v7, "ServiceProvider"

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v5}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->finish()V

    .line 133
    :goto_81
    return-void

    .line 72
    .end local v1           #accounts:[Landroid/accounts/Account;
    :catch_82
    move-exception v3

    .line 74
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SNS_DISCLAIMER_AGREE"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29

    .line 107
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    :cond_8d
    const v7, 0x7f06000f

    :try_start_90
    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->setTitle(I)V

    .line 109
    const/high16 v7, 0x7f07

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060011

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const v7, 0x7f070001

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060012

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v7, 0x7f070002

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060013

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 114
    const v7, 0x7f070003

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060014

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 115
    const v7, 0x7f070004

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060015

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 117
    const v7, 0x7f070005

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f060016

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ec} :catch_fe

    .line 123
    :goto_ec
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    .local v0, NextButton:Landroid/widget/Button;
    new-instance v7, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity$1;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_81

    .line 118
    .end local v0           #NextButton:Landroid/widget/Button;
    :catch_fe
    move-exception v3

    .line 119
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "SnsAccountTw"

    const-string v8, "SnsAccountInformationActivity : onCreate - Invalid SP Type!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ec
.end method
