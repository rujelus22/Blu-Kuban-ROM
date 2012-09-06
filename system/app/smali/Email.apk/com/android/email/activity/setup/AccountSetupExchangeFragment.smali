.class public Lcom/android/email/activity/setup/AccountSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/email/view/CertificateSelector$HostCallback;


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field private mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

.field mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mStarted:Z

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private forceLoadSettings(Lcom/android/emailcommon/provider/Account;)Z
    .registers 3
    .parameter "account"

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .registers 4
    .parameter "usernameView"

    .prologue
    .line 304
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private validateFields()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-nez v1, :cond_6

    .line 322
    :goto_5
    return v0

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    .line 317
    .local v0, enabled:Z
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->enableNextButton(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_5
.end method


# virtual methods
.method loadSettings(Lcom/android/emailcommon/provider/Account;)Z
    .registers 11
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 258
    iget-boolean v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-eqz v7, :cond_b

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v5

    .line 300
    :goto_a
    return v5

    .line 260
    :cond_b
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 262
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 263
    .local v4, userName:Ljava/lang/String;
    if-eqz v4, :cond_31

    .line 266
    const/16 v7, 0x5c

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_2c

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_2c
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_31
    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v7, :cond_45

    .line 273
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSettingsMode:Z

    if-eqz v7, :cond_45

    .line 276
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 280
    :cond_45
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 281
    .local v1, protocol:Ljava/lang/String;
    if-eqz v1, :cond_51

    const-string v7, "eas"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 282
    :cond_51
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown account type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_6a
    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v7, :cond_75

    .line 286
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_75
    iget v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a5

    move v2, v5

    .line 290
    .local v2, ssl:Z
    :goto_7c
    iget v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_a7

    move v3, v5

    .line 291
    .local v3, trustCertificates:Z
    :goto_83
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    iget-object v6, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v6, :cond_98

    .line 294
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    iget-object v7, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 296
    :cond_98
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onUseSslChanged(Z)V

    .line 298
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 299
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 300
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v5

    goto/16 :goto_a

    .end local v2           #ssl:Z
    .end local v3           #trustCertificates:Z
    :cond_a5
    move v2, v6

    .line 289
    goto :goto_7c

    .restart local v2       #ssl:Z
    :cond_a7
    move v3, v6

    .line 290
    goto :goto_83
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 156
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v0, p0}, Lcom/android/email/view/CertificateSelector;->setHostActivity(Lcom/android/email/view/CertificateSelector$HostCallback;)V

    .line 160
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 446
    if-nez p1, :cond_12

    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    .line 447
    const-string v1, "CertificateRequestor.alias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, certAlias:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 449
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 452
    .end local v0           #certAlias:Ljava/lang/String;
    :cond_12
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    .line 394
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    .line 395
    return-void
.end method

.method public onCertificateRequested()V
    .registers 3

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.emailcommon.REQUEST_CERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eas://com.android.emailcommon/certrequest"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 442
    return-void
.end method

.method public onCheckSettingsComplete(I)V
    .registers 4
    .parameter "result"

    .prologue
    .line 342
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 343
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCertificateRequested()V

    .line 348
    :goto_c
    return-void

    .line 347
    :cond_d
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(I)V

    goto :goto_c
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0e001a

    if-ne v0, v1, :cond_c

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onUseSslChanged(Z)V

    .line 330
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 85
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_25

    .line 90
    const-string v0, "AccountSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 91
    const-string v0, "AccountSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 93
    :cond_25
    const-string v0, "eas"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 99
    sget-boolean v6, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v6, :cond_f

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_f

    .line 100
    const-string v6, "Email"

    const-string v7, "AccountSetupExchangeFragment onCreateView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_f
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSettingsMode:Z

    if-eqz v6, :cond_a7

    const v3, 0x7f040003

    .line 106
    .local v3, layoutId:I
    :goto_16
    const/4 v6, 0x0

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 107
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0e0018

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    .line 110
    const v6, 0x7f0e0012

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    .line 111
    const v6, 0x7f0e0019

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 112
    const v6, 0x7f0e001a

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 113
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const v6, 0x7f0e001b

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 115
    const v6, 0x7f0e001c

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/email/view/CertificateSelector;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    .line 119
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V

    .line 128
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSettingsMode:Z

    if-eqz v6, :cond_7b

    .line 129
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    const v7, 0x7f08011c

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 132
    :cond_7b
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 137
    .local v2, lastView:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 139
    const-string v1, ""

    .line 141
    .local v1, deviceId:Ljava/lang/String;
    :try_start_93
    invoke-static {v0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_ac

    move-result-object v1

    .line 145
    :goto_97
    const v6, 0x7f0e001d

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 150
    return-object v5

    .line 102
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v2           #lastView:Landroid/widget/EditText;
    .end local v3           #layoutId:I
    .end local v4           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v5           #view:Landroid/view/View;
    :cond_a7
    const v3, 0x7f04000b

    goto/16 :goto_16

    .line 142
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #deviceId:Ljava/lang/String;
    .restart local v2       #lastView:Landroid/widget/EditText;
    .restart local v3       #layoutId:I
    .restart local v4       #validationTextWatcher:Landroid/text/TextWatcher;
    .restart local v5       #view:Landroid/view/View;
    :catch_ac
    move-exception v6

    goto :goto_97
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 213
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 216
    return-void
.end method

.method public onNext()V
    .registers 18

    .prologue
    .line 402
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v14

    .line 404
    .local v14, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 405
    .local v15, userName:Ljava/lang/String;
    const-string v2, "\\"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 406
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 408
    :cond_21
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, userPassword:Ljava/lang/String;
    const/4 v5, 0x0

    .line 412
    .local v5, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 413
    or-int/lit8 v5, v5, 0x1

    .line 415
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 416
    or-int/lit8 v5, v5, 0x8

    .line 418
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v2}, Lcom/android/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, certAlias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, serverAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_ae

    const/16 v4, 0x1bb

    .line 422
    .local v4, port:I
    :goto_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 423
    .local v1, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v7

    .line 428
    .local v7, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    move-object v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 430
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 433
    iget-wide v9, v14, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v11, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V

    .line 435
    return-void

    .line 421
    .end local v1           #sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v4           #port:I
    .end local v7           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_ae
    const/16 v4, 0x50

    goto :goto_6e
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 190
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 193
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 180
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 181
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    .line 185
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 221
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    const-string v0, "AccountSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "AccountSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 168
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 172
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    .line 173
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 201
    const-string v0, "Email"

    const-string v1, "AccountSetupExchangeFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 205
    return-void
.end method

.method public onUseSslChanged(Z)V
    .registers 5
    .parameter "useSsl"

    .prologue
    .line 333
    if-eqz p1, :cond_22

    const/4 v0, 0x0

    .line 334
    .local v0, mode:I
    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 335
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e001e

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 336
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mClientCertificateSelector:Lcom/android/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/android/email/view/CertificateSelector;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e001f

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 338
    return-void

    .line 333
    .end local v0           #mode:I
    :cond_22
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 357
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 358
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 359
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 362
    :try_start_1e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->hostChanged(J)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2a} :catch_30

    .line 367
    :goto_2a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 368
    return-void

    .line 363
    :catch_30
    move-exception v1

    goto :goto_2a
.end method

.method public saveSettingsAfterSetup()V
    .registers 1

    .prologue
    .line 375
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_e

    .line 236
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/Account;)Z

    .line 238
    :cond_e
    return-void
.end method

.method public setHostAuthFromAutodiscover(Lcom/android/emailcommon/provider/HostAuth;)Z
    .registers 4
    .parameter "newHostAuth"

    .prologue
    .line 381
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 382
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 383
    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 385
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->forceLoadSettings(Lcom/android/emailcommon/provider/Account;)Z

    move-result v1

    return v1
.end method
