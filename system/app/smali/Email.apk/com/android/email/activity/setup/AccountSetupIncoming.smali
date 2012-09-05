.class public Lcom/android/email/activity/setup/AccountSetupIncoming;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 51
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .registers 5
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 167
    if-nez p1, :cond_10

    .line 168
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    .line 172
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 131
    :goto_7
    return-void

    .line 128
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onNext()V

    goto :goto_7

    .line 126
    :pswitch_data_e
    .packed-switch 0x7f10002d
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    const v2, 0x7f10002d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    .local v0, nextButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v1, nextButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_21

    .line 114
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 79
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10002b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    .line 85
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 97
    const v1, 0x7f10002d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButtonEnabled:Z

    .line 157
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 62
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 64
    :goto_b
    return v0

    .line 59
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onBackPressed()V

    .line 64
    const/4 v0, 0x1

    goto :goto_b

    .line 57
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 8
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 138
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 140
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 141
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 142
    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 144
    :try_start_16
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 149
    :goto_19
    return-void

    .line 145
    :catch_1a
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email >> AccountSetupIncoming"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method
