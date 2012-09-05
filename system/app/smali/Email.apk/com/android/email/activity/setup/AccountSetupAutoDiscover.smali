.class public Lcom/android/email/activity/setup/AccountSetupAutoDiscover;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAutoDiscover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mEasFlowMode:Z

.field mFragment:Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

.field private mMakeDefault:Z

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z

.field mStartedAutoDiscovery:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionAccountSetupAutoDiscoverIntent(Landroid/app/Activity;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method private readArgumentsFromIntent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_15

    .line 200
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->TAG:Ljava/lang/String;

    const-string v1, "Expecting Account in KEY_EXTRA_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->finish()V

    .line 203
    :cond_15
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mMakeDefault:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mEasFlowMode:Z

    .line 205
    return-void
.end method

.method private startAutoDiscover()V
    .registers 6

    .prologue
    .line 181
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mStartedAutoDiscovery:Z

    .line 183
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v3

    if-nez v3, :cond_a

    .line 195
    :cond_9
    :goto_9
    return-void

    .line 187
    :cond_a
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 190
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 191
    .local v2, username:Ljava/lang/String;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 192
    .local v1, password:Ljava/lang/String;
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 193
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mFragment:Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_9
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 6
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 228
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 229
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->finish()V

    .line 235
    :cond_11
    if-nez p1, :cond_29

    .line 236
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 237
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iput-object p2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 238
    iput-object p2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 239
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionAutoDiscoverIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->finish()V

    .line 243
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_29
    return-void
.end method

.method public onCheckSettingsComplete(II)V
    .registers 3
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 175
    :goto_7
    return-void

    .line 168
    :pswitch_8
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_7

    .line 172
    :pswitch_14
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mFragment:Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->onNext()V

    goto :goto_7

    .line 166
    :pswitch_data_1a
    .packed-switch 0x7f10002c
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0c0178

    .line 141
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .local v0, manualButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .local v1, nextButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_22

    .line 149
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    :cond_22
    if-eqz v1, :cond_2e

    .line 153
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    :cond_2e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f040011

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10002b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mFragment:Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

    .line 115
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mFragment:Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 119
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 122
    const v1, 0x7f10002c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mManualButton:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f10002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    .line 126
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->readArgumentsFromIntent()V

    .line 129
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mStartedAutoDiscovery:Z

    .line 130
    if-eqz p1, :cond_5e

    .line 131
    const-string v1, "AccountSetupExchange.StartedAutoDiscovery"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mStartedAutoDiscovery:Z

    .line 132
    const-string v1, "AccountSetupExchange.next"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButtonEnabled:Z

    .line 134
    :cond_5e
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mStartedAutoDiscovery:Z

    if-nez v1, :cond_65

    .line 135
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->startAutoDiscover()V

    .line 137
    :cond_65
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButtonEnabled:Z

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 101
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 103
    :goto_b
    return v0

    .line 98
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->onBackPressed()V

    .line 103
    const/4 v0, 0x1

    goto :goto_b

    .line 96
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 6
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 247
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 249
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 250
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 251
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 252
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 253
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v0, "AccountSetupExchange.next"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->mNextButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-void
.end method
