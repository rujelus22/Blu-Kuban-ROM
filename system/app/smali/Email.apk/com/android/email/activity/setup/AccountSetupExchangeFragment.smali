.class public Lcom/android/email/activity/setup/AccountSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private RETURN_FROM_CERTIFICATE_LIST:I

.field private activity:Landroid/app/Activity;

.field mAccId:Ljava/lang/Long;

.field private mCBAButton:Landroid/widget/Button;

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mCbaCertificateAlias:Ljava/lang/String;

.field mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSslSecurityString:Landroid/widget/TextView;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mStarted:Z

.field private mTrustCertificatesString:Landroid/widget/TextView;

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUseClientCertificateStirng:Landroid/widget/TextView;

.field private mUseClientCertificateView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private onCBA()V
    .registers 1

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onOwnCertificate()V

    .line 689
    return-void
.end method

.method private onOwnCertificate()V
    .registers 6

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    const-class v2, Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    :try_start_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 674
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_44

    .line 680
    const-string v2, "KEYSTORE_PASSWORD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v1, "CERTIFICATE_ALIAS"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v1, "EMAIL_ADDRESS"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 685
    :goto_43
    return-void

    .line 675
    :catch_44
    move-exception v0

    .line 676
    const-string v0, "AccountSettings"

    const-string v1, "Error while getting device id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .registers 4
    .parameter "usernameView"

    .prologue
    .line 522
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
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 533
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_6

    .line 550
    :goto_5
    return v0

    .line 535
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    .line 538
    .local v0, enabled:Z
    :cond_1f
    if-eqz v0, :cond_24

    .line 540
    :try_start_21
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_24
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_24} :catch_2f

    .line 545
    :cond_24
    :goto_24
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->enableNextButton(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_5

    .line 541
    :catch_2f
    move-exception v1

    .line 542
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 635
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 636
    .local v8, sslRequired:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 637
    .local v9, trustCertificates:Z
    if-eqz v8, :cond_67

    if-eqz v9, :cond_64

    const-string v1, "eas+ssl+trustallcerts"

    .line 639
    .local v1, scheme:Ljava/lang/String;
    :goto_13
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 643
    .local v10, userName:Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 644
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 646
    :cond_2e
    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, userInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 651
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .local v0, uri:Ljava/net/URI;
    return-object v0

    .line 637
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #userName:Ljava/lang/String;
    :cond_64
    const-string v1, "eas+ssl+"

    goto :goto_13

    :cond_67
    const-string v1, "eas"

    goto :goto_13
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 14
    .parameter "account"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 421
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-eqz v10, :cond_1e

    .line 422
    if-nez p1, :cond_19

    .line 423
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mAccId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 424
    .local v0, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 426
    .end local v0           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_19
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v8

    .line 518
    :goto_1d
    return v8

    .line 429
    :cond_1e
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mAccId:Ljava/lang/Long;

    .line 431
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 433
    .local v2, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v2, :cond_2f

    .line 435
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v8

    goto :goto_1d

    .line 438
    :cond_2f
    const/4 v4, 0x0

    .line 440
    .local v4, server:Ljava/lang/String;
    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 441
    .local v7, userName:Ljava/lang/String;
    const-string v1, ""

    .line 443
    .local v1, domain:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v10

    if-eqz v10, :cond_48

    sget-boolean v10, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v10, v8, :cond_48

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v10, :cond_48

    .line 445
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_48
    if-eqz v7, :cond_7b

    .line 452
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_65

    .line 453
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 456
    :cond_65
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_7b
    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v10, :cond_86

    .line 469
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_86
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 473
    .local v3, protocol:Ljava/lang/String;
    if-eqz v3, :cond_92

    const-string v10, "eas"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b1

    .line 474
    :cond_92
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown account type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 477
    :cond_b1
    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v10, :cond_d8

    .line 479
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v10

    if-eqz v10, :cond_10d

    sget-boolean v10, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v10, v8, :cond_10d

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v10, :cond_10d

    .line 481
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v10}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v4

    .line 487
    :goto_c9
    const-string v10, "gmail.com"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_110

    .line 488
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    const-string v11, "m.google.com"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_d8
    :goto_d8
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isSncFlow()Z

    move-result v10

    if-eqz v10, :cond_116

    sget-boolean v10, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    if-ne v10, v8, :cond_116

    sget-object v10, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v10, :cond_116

    .line 500
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeSecureFlag()Z

    move-result v5

    .line 501
    .local v5, ssl:Z
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupConstants;->Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v9}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeVerifyCertFlag()Z

    move-result v6

    .line 507
    .local v6, trustCertificates:Z
    :goto_f2
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 508
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 509
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 512
    :try_start_ff
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedUri:Ljava/net/URI;
    :try_end_105
    .catch Ljava/net/URISyntaxException; {:try_start_ff .. :try_end_105} :catch_129

    .line 517
    :goto_105
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 518
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v8

    goto/16 :goto_1d

    .line 485
    .end local v5           #ssl:Z
    .end local v6           #trustCertificates:Z
    :cond_10d
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_c9

    .line 490
    :cond_110
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d8

    .line 503
    :cond_116
    iget v10, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_125

    move v5, v8

    .line 504
    .restart local v5       #ssl:Z
    :goto_11d
    iget v10, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_127

    move v6, v8

    .restart local v6       #trustCertificates:Z
    :goto_124
    goto :goto_f2

    .end local v5           #ssl:Z
    .end local v6           #trustCertificates:Z
    :cond_125
    move v5, v9

    .line 503
    goto :goto_11d

    .restart local v5       #ssl:Z
    :cond_127
    move v6, v9

    .line 504
    goto :goto_124

    .line 513
    .restart local v6       #trustCertificates:Z
    :catch_129
    move-exception v9

    goto :goto_105
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 693
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 695
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->RETURN_FROM_CERTIFICATE_LIST:I

    if-ne p1, v2, :cond_5f

    .line 696
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3c

    .line 697
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 699
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_3c

    .line 700
    const-string v2, "CERTIFICATE_ALIAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, alias:Ljava/lang/String;
    const-string v2, "AccountSetupExchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertificateManager returns alias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v0, :cond_3c

    .line 703
    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 704
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    .line 712
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #result:Landroid/os/Bundle;
    :cond_3c
    :goto_3c
    const-string v2, "AccountSetupExchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Activity returns result, alias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCbaCertificate(Ljava/lang/String;)V

    .line 717
    :cond_5f
    return-void

    .line 706
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #result:Landroid/os/Bundle;
    :cond_60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCbaCertificateAlias:Ljava/lang/String;

    goto :goto_3c
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 309
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->activity:Landroid/app/Activity;

    .line 310
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    .line 662
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 663
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f100056

    if-ne v0, v3, :cond_e

    .line 555
    invoke-virtual {p0, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 558
    :cond_e
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f10005a

    if-ne v0, v3, :cond_28

    .line 559
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    if-eqz p2, :cond_29

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 560
    if-eqz p2, :cond_28

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    if-eqz p2, :cond_2b

    :goto_25
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 565
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 559
    goto :goto_1c

    :cond_2b
    move v1, v2

    .line 561
    goto :goto_25
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 746
    :goto_c
    :pswitch_c
    return-void

    .line 731
    :pswitch_d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 732
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 733
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c

    .line 735
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_c

    .line 742
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCBA()V

    goto :goto_c

    .line 728
    nop

    :pswitch_data_30
    .packed-switch 0x7f100059
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_2b
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    .local v0, cbaButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1a

    .line 396
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    :cond_1a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    if-eqz p1, :cond_22

    .line 149
    const-string v0, "AccountSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 150
    const-string v0, "AccountSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 151
    const-string v0, "AccountSetupExchangeFragment.accid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mAccId:Ljava/lang/Long;

    .line 154
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setHasOptionsMenu(Z)V

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 167
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v8, :cond_147

    const v4, 0x7f040009

    .line 170
    .local v4, layoutId:I
    :goto_9
    invoke-virtual {p1, v4, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 171
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f100021

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    .line 174
    const v8, 0x7f100022

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    .line 175
    const v8, 0x7f100055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 176
    const v8, 0x7f100056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 178
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-nez v8, :cond_14c

    move v8, v9

    :goto_44
    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 179
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    iget-boolean v11, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-nez v11, :cond_14f

    :goto_4d
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 182
    const v8, 0x7f100057

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityString:Landroid/widget/TextView;

    .line 183
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityString:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    const v8, 0x7f100036

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 189
    const v8, 0x7f100037

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesString:Landroid/widget/TextView;

    .line 191
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesString:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v8, 0x7f10005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    .line 200
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    if-eqz v8, :cond_9e

    .line 201
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCBAButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_9e
    const v8, 0x7f10005a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    .line 208
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    const v8, 0x7f10005b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateStirng:Landroid/widget/TextView;

    .line 214
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateStirng:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V

    .line 230
    .local v6, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, salesCode:Ljava/lang/String;
    if-eqz v5, :cond_157

    const-string v8, "DTM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "MAX"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "TNL"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "TMZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "CRO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "COS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "TRG"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "MBM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    const-string v8, "TMU"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 240
    :cond_127
    const v8, 0x7f10005d

    :try_start_12a
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, deviceIdlabel:Landroid/widget/TextView;
    const v8, 0x7f10005e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, deviceId:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_143
    .catch Ljava/lang/NullPointerException; {:try_start_12a .. :try_end_143} :catch_152

    .line 261
    .end local v1           #deviceId:Landroid/widget/TextView;
    .end local v2           #deviceIdlabel:Landroid/widget/TextView;
    :goto_143
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 283
    return-object v7

    .line 167
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #layoutId:I
    .end local v5           #salesCode:Ljava/lang/String;
    .end local v6           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v7           #view:Landroid/view/View;
    :cond_147
    const v4, 0x7f04001b

    goto/16 :goto_9

    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #layoutId:I
    .restart local v7       #view:Landroid/view/View;
    :cond_14c
    move v8, v10

    .line 178
    goto/16 :goto_44

    :cond_14f
    move v9, v10

    .line 179
    goto/16 :goto_4d

    .line 244
    .restart local v5       #salesCode:Ljava/lang/String;
    .restart local v6       #validationTextWatcher:Landroid/text/TextWatcher;
    :catch_152
    move-exception v3

    .line 245
    .local v3, e:Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_143

    .line 253
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_157
    :try_start_157
    invoke-static {v0}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, deviceId:Ljava/lang/String;
    const v8, 0x7f10005e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_167} :catch_168

    goto :goto_143

    .line 255
    .end local v1           #deviceId:Ljava/lang/String;
    :catch_168
    move-exception v8

    goto :goto_143
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 373
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 868
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDetach()V

    .line 869
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 871
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 872
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 873
    :cond_2b
    return-void
.end method

.method public onNext()V
    .registers 12

    .prologue
    .line 754
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v9

    .line 755
    .local v9, uri:Ljava/net/URI;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 756
    .local v8, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v7

    .line 761
    .local v7, accountType:I
    invoke-virtual {v8, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAccountType(I)V

    .line 764
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_41

    .line 765
    const-string v0, "AccountSetupExchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had to set CBACert in onNext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_41
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_52
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_52} :catch_53

    .line 786
    .end local v7           #accountType:I
    .end local v8           #setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #uri:Ljava/net/URI;
    :goto_52
    return-void

    .line 774
    :catch_53
    move-exception v10

    .line 779
    .local v10, use:Ljava/net/URISyntaxException;
    const-string v0, "AccountSetupExhangeFragment"

    invoke-virtual {v10}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080117

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 782
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->clearButtonBounce()V

    goto :goto_52
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 347
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 348
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 290
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 291
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 292
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 294
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 338
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    .line 339
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    const-string v0, "AccountSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "AccountSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    const-string v0, "AccountSetupExchangeFragment.accid"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mAccId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 386
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 325
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 326
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 359
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 361
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_c0

    :goto_9
    move v0, v1

    .line 862
    :goto_a
    return v0

    .line 794
    :sswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_ce

    goto :goto_9

    .line 796
    :pswitch_13
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 799
    :pswitch_19
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 802
    :pswitch_1f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 805
    :pswitch_25
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 806
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 807
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 808
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 811
    :goto_3c
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto :goto_a

    .line 810
    :cond_40
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3c

    .line 816
    :sswitch_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_da

    goto :goto_9

    .line 818
    :pswitch_4e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 821
    :pswitch_54
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 824
    :pswitch_5a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 827
    :pswitch_60
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 828
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 829
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 830
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 833
    :goto_77
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto :goto_a

    .line 832
    :cond_7b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_77

    .line 839
    :sswitch_81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_e6

    goto :goto_9

    .line 841
    :pswitch_89
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 844
    :pswitch_90
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 847
    :pswitch_97
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_a

    .line 850
    :pswitch_9e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 851
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 852
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 853
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 856
    :goto_b5
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    goto/16 :goto_a

    .line 855
    :cond_ba
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUseClientCertificateView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b5

    .line 792
    :sswitch_data_c0
    .sparse-switch
        0x7f100037 -> :sswitch_46
        0x7f100057 -> :sswitch_b
        0x7f10005b -> :sswitch_81
    .end sparse-switch

    .line 794
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_13
        :pswitch_25
        :pswitch_19
        :pswitch_1f
    .end packed-switch

    .line 816
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_60
        :pswitch_54
        :pswitch_5a
    .end packed-switch

    .line 839
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_89
        :pswitch_9e
        :pswitch_90
        :pswitch_97
    .end packed-switch
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 585
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 586
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 587
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 596
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->hostChanged(J)V

    .line 605
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 606
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .registers 1

    .prologue
    .line 614
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 410
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_e

    .line 411
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 413
    :cond_e
    return-void
.end method

.method public showTrustCertificates(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 568
    if-eqz p1, :cond_20

    const/4 v0, 0x0

    .line 569
    .local v0, mode:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 577
    return-void

    .line 568
    .end local v0           #mode:I
    :cond_20
    const/16 v0, 0x8

    goto :goto_3
.end method
