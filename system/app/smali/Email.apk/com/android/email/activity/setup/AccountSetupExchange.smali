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
    .line 67
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 81
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private startAutoDiscover()V
    .registers 6

    .prologue
    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 144
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v3

    if-nez v3, :cond_a

    .line 155
    :cond_9
    :goto_9
    return-void

    .line 148
    :cond_a
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 150
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 151
    .local v2, username:Ljava/lang/String;
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 152
    .local v1, password:Ljava/lang/String;
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 153
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSetupExchange;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_9
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .registers 5
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 164
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 165
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    .line 178
    :cond_6
    :goto_6
    return-void

    .line 170
    :cond_7
    if-nez p1, :cond_6

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setHostAuthFromAutodiscover(Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v0

    .line 172
    .local v0, valid:Z
    if-eqz v0, :cond_6

    .line 174
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_6
.end method

.method public onCheckSettingsComplete(II)V
    .registers 3
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_10

    .line 220
    :goto_3
    :pswitch_3
    return-void

    .line 209
    :pswitch_4
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_3

    .line 213
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_3

    .line 207
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 122
    :goto_7
    :pswitch_7
    return-void

    .line 116
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_7

    .line 119
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onBackPressed()V

    goto :goto_7

    .line 114
    :pswitch_data_12
    .packed-switch 0x7f0e000d
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 89
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 95
    const v0, 0x7f0e0010

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0e000d

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 101
    if-eqz p1, :cond_47

    .line 102
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 104
    :cond_47
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    if-nez v0, :cond_4e

    .line 105
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->startAutoDiscover()V

    .line 107
    :cond_4e
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 6
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 184
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 186
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 187
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 188
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 189
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method
