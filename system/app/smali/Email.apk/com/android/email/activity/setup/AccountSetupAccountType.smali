.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method private onExchange()V
    .registers 8

    .prologue
    .line 119
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 120
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 121
    .local v1, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v3, "eas"

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 124
    .local v2, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v3, "eas"

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v6, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 126
    const-string v3, "eas"

    invoke-static {v0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 127
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 128
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 130
    return-void
.end method

.method private onImap()V
    .registers 6

    .prologue
    .line 102
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 103
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 104
    .local v1, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v2, "imap"

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 106
    iget-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v3, "imap"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 108
    const-string v2, "imap"

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 110
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 112
    return-void
.end method

.method private onPop()V
    .registers 6

    .prologue
    .line 85
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 86
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 87
    .local v1, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v2, "pop3"

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 89
    iget-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const-string v3, "pop3"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 91
    const-string v2, "pop3"

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->setFlagsForProtocol(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 93
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/Account;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 147
    :goto_7
    :pswitch_7
    return-void

    .line 135
    :pswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_7

    .line 138
    :pswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_7

    .line 141
    :pswitch_10
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_7

    .line 144
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_7

    .line 133
    :pswitch_data_18
    .packed-switch 0x7f0e0006
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 49
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    .line 52
    .local v1, flowMode:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    .line 78
    :cond_10
    :goto_10
    return-void

    .line 58
    :cond_11
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 59
    const v3, 0x7f0e0006

    invoke-static {p0, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v3, 0x7f0e0007

    invoke-static {p0, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f0e0008

    invoke-static {p0, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, exchangeButton:Landroid/widget/Button;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    const v3, 0x7f0e000d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    .local v2, previousButton:Landroid/widget/Button;
    if-eqz v2, :cond_46

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_46
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 73
    const v3, 0x7f0800c9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_10
.end method
