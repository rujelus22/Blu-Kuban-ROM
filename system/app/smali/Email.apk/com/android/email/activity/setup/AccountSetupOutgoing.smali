.class public Lcom/android/email/activity/setup/AccountSetupOutgoing;
.super Landroid/app/Activity;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionOutgoingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 47
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .registers 3
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 111
    if-nez p1, :cond_8

    .line 112
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    .line 115
    :cond_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 81
    :goto_7
    :pswitch_7
    return-void

    .line 75
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onNext()V

    goto :goto_7

    .line 78
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->onBackPressed()V

    goto :goto_7

    .line 73
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
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 55
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mFragment:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 63
    const v0, 0x7f0e0010

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0e000d

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButtonEnabled:Z

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 6
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 91
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 92
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 94
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    return-void
.end method
