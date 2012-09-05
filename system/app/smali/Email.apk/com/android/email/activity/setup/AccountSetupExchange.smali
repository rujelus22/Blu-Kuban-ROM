.class public Lcom/android/email/activity/setup/AccountSetupExchange;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z

.field mStartedAutoDiscovery:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionAutoDiscoverIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 116
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "Autodiscover.OK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 109
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    if-nez p4, :cond_1e

    .line 102
    const-string v1, "disableAutoDiscover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 3
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 267
    return-void
.end method

.method public onCheckSettingsComplete(II)V
    .registers 3
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 300
    packed-switch p1, :pswitch_data_10

    .line 313
    :goto_3
    :pswitch_3
    return-void

    .line 302
    :pswitch_4
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_3

    .line 306
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_3

    .line 300
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_24

    .line 204
    :goto_7
    return-void

    .line 194
    :pswitch_8
    const-string v0, "AndroidMail.Main"

    .line 195
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "isCheckIMEI"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 198
    .local v1, checkIMEI:Z
    if-eqz v1, :cond_1d

    .line 199
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupExchange;->showDialog(I)V

    goto :goto_7

    .line 201
    :cond_1d
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_7

    .line 192
    nop

    :pswitch_data_24
    .packed-switch 0x7f10002d
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    const v2, 0x7f10002d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 179
    .local v0, nextButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    .local v1, nextButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_21

    .line 183
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 145
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10002b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    .line 158
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 160
    const v1, 0x7f10002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    .line 161
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Autodiscover.OK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 164
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    if-eqz v1, :cond_58

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 166
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    .line 168
    :cond_58
    if-eqz p1, :cond_62

    .line 169
    const-string v1, "AccountSetupExchange.next"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 171
    :cond_62
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x3

    if-ne p1, v7, :cond_59

    .line 216
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 217
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f040065

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 219
    .local v4, textEntryView:Landroid/view/View;
    const v6, 0x7f100132

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    .local v5, textLegalInfo:Landroid/widget/TextView;
    const v6, 0x7f100133

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 230
    .local v1, checkboxImei:Landroid/widget/CheckBox;
    const-string v0, "AndroidMail.Main"

    .line 231
    .local v0, PREFERENCES_FILE:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupExchange$3;

    invoke-direct {v8, p0, v3, v1}, Lcom/android/email/activity/setup/AccountSetupExchange$3;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupExchange$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$2;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupExchange$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 257
    .end local v0           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v1           #checkboxImei:Landroid/widget/CheckBox;
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v4           #textEntryView:Landroid/view/View;
    .end local v5           #textLegalInfo:Landroid/widget/TextView;
    :cond_59
    return-object v6
.end method

.method public onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 129
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 131
    :goto_b
    return v0

    .line 126
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onBackPressed()V

    .line 131
    const/4 v0, 0x1

    goto :goto_b

    .line 124
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 7
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 273
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 276
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 277
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 278
    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 279
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 283
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :goto_19
    return-void

    .line 280
    :catch_1a
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_19
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v0, "AccountSetupExchange.next"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    return-void
.end method
