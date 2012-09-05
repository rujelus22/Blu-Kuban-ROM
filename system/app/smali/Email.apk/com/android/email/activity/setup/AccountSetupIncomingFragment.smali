.class public Lcom/android/email/activity/setup/AccountSetupIncomingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupIncomingFragment.java"


# instance fields
.field private bFirstSelected:Z

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mConfigured:Z

.field private mDeletePolicyLabelView:Landroid/widget/TextView;

.field private mDeletePolicySectionView:Landroid/view/View;

.field private mDeletePolicyView:Landroid/widget/Spinner;

.field private mImapPathPrefixSectionView:Landroid/view/View;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mLoaded:Z

.field private mLoadedDeletePolicy:I

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerLabelView:Landroid/widget/TextView;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    return-void
.end method

.method private configureEditor()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 376
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_7

    .line 401
    :goto_6
    return-void

    .line 378
    :cond_7
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 380
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_11

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_20

    .line 381
    :cond_11
    const-string v2, "Email"

    const-string v3, "AccountSetupIncomingFragment Account is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_6

    .line 386
    :cond_20
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 388
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 389
    .local v1, protocol:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 390
    const-string v2, "pop3"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 391
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 400
    :goto_4f
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    goto :goto_6

    .line 394
    :cond_53
    const-string v2, "imap"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 395
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicySectionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 398
    :cond_6b
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPortFromSecurityType()I
    .registers 6

    .prologue
    .line 527
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 528
    .local v1, securityType:I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    .line 529
    .local v2, useSsl:Z
    :goto_15
    if-eqz v2, :cond_2a

    const/16 v0, 0x3e1

    .line 530
    .local v0, port:I
    :goto_19
    const-string v3, "pop3"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 531
    if-eqz v2, :cond_2d

    const/16 v0, 0x3e3

    .line 533
    :cond_27
    :goto_27
    return v0

    .line 528
    .end local v0           #port:I
    .end local v2           #useSsl:Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_15

    .line 529
    .restart local v2       #useSsl:Z
    :cond_2a
    const/16 v0, 0x8f

    goto :goto_19

    .line 531
    .restart local v0       #port:I
    :cond_2d
    const/16 v0, 0x6e

    goto :goto_27
.end method

.method private loadSettings()V
    .registers 19

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-eqz v14, :cond_7

    .line 501
    :goto_6
    return-void

    .line 411
    :cond_7
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 412
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_1c

    .line 413
    const-string v14, "Email"

    const-string v15, "AccountSetupIncomingFragment 2 Account is null "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_6

    .line 417
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 420
    .local v8, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v11, 0x0

    .line 422
    .local v11, uri:Ljava/net/URI;
    :try_start_25
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/net/URISyntaxException; {:try_start_25 .. :try_end_32} :catch_68

    .end local v11           #uri:Ljava/net/URI;
    .local v12, uri:Ljava/net/URI;
    move-object v11, v12

    .line 426
    .end local v12           #uri:Ljava/net/URI;
    .restart local v11       #uri:Ljava/net/URI;
    :goto_33
    if-eqz v11, :cond_43

    if-eqz v11, :cond_6d

    const-string v14, ""

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6d

    .line 427
    :cond_43
    const-string v14, "Email"

    const-string v15, "AccountSetupIncomingFragment : uri is null "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f0800c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_6

    .line 423
    :catch_68
    move-exception v2

    .line 424
    .local v2, e:Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_33

    .line 434
    .end local v2           #e:Ljava/net/URISyntaxException;
    :cond_6d
    const/4 v13, 0x0

    .line 435
    .local v13, username:Ljava/lang/String;
    const/4 v5, 0x0

    .line 437
    .local v5, password:Ljava/lang/String;
    iget-object v13, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 438
    if-eqz v13, :cond_85

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v14, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 443
    :cond_85
    iget-object v5, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 444
    if-eqz v5, :cond_9b

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 449
    :cond_9b
    const-string v14, "imap"

    iget-object v15, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a8

    .line 450
    iget-object v7, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 451
    .local v7, prefix:Ljava/lang/String;
    if-eqz v7, :cond_ce

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_ce

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    .end local v7           #prefix:Ljava/lang/String;
    :cond_ce
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 468
    iget v3, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 469
    .local v3, flags:I
    and-int/lit8 v3, v3, -0x5

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 472
    iget-object v4, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 473
    .local v4, hostname:Ljava/lang/String;
    if-eqz v4, :cond_112

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v14, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 477
    :cond_112
    iget v6, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 478
    .local v6, port:I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_1d7

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 485
    :goto_135
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 486
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 489
    const-string v10, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    .line 490
    .local v10, strSalesListOfOrange:Ljava/lang/String;
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, salesCode:Ljava/lang/CharSequence;
    if-eqz v9, :cond_1a3

    const/4 v14, 0x3

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ne v14, v15, :cond_1a3

    const-string v14, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1a3

    iget-wide v14, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1a3

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 500
    :cond_1a3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    goto/16 :goto_6

    .line 455
    .end local v3           #flags:I
    .end local v4           #hostname:Ljava/lang/String;
    .end local v6           #port:I
    .end local v9           #salesCode:Ljava/lang/CharSequence;
    .end local v10           #strSalesListOfOrange:Ljava/lang/String;
    :cond_1a8
    const-string v14, "pop3"

    iget-object v15, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ce

    .line 457
    new-instance v14, Ljava/lang/Error;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown account type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v14

    .line 482
    .restart local v3       #flags:I
    .restart local v4       #hostname:Ljava/lang/String;
    .restart local v6       #port:I
    :cond_1d7
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    goto/16 :goto_135
.end method

.method private updatePortFromSecurityType()V
    .registers 4

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 538
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 540
    return-void
.end method

.method private validateFields()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 508
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-nez v2, :cond_a

    .line 524
    :cond_9
    :goto_9
    return-void

    .line 510
    :cond_a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_51

    move v0, v1

    .line 513
    .local v0, enabled:Z
    :goto_2b
    if-eqz v0, :cond_46

    .line 514
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 515
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f08031b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 517
    const/4 v0, 0x0

    .line 520
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->enableNextButton(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_9

    .line 510
    .end local v0           #enabled:Z
    :cond_51
    const/4 v0, 0x0

    goto :goto_2b
.end method


# virtual methods
.method public haveSettingsChanged()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 643
    const/4 v0, 0x0

    .line 647
    .local v0, deletePolicyChanged:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicySectionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 648
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 649
    .local v1, newDeletePolicy:I
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    if-eq v2, v1, :cond_2a

    move v0, v3

    .line 652
    .end local v1           #newDeletePolicy:I
    :cond_20
    :goto_20
    if-nez v0, :cond_28

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    move v4, v3

    :cond_29
    return v4

    .restart local v1       #newDeletePolicy:I
    :cond_2a
    move v0, v4

    .line 649
    goto :goto_20
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    if-eqz p1, :cond_16

    .line 133
    const-string v0, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 134
    const-string v0, "AccountSetupIncomingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 137
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->setHasOptionsMenu(Z)V

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 145
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v8, :cond_187

    const v3, 0x7f04000b

    .line 147
    .local v3, layoutId:I
    :goto_7
    const/4 v8, 0x0

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 148
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f100021

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 151
    const v8, 0x7f100022

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 152
    const v8, 0x7f100054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 153
    const v8, 0x7f100055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 154
    const v8, 0x7f100062

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 155
    const v8, 0x7f100060

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 156
    const v8, 0x7f100063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicySectionView:Landroid/view/View;

    .line 157
    const v8, 0x7f100064

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 158
    const v8, 0x7f100065

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 159
    const v8, 0x7f100066

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 160
    const v8, 0x7f100068

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 162
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-nez v8, :cond_18c

    const/4 v8, 0x1

    :goto_8c
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 164
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v8, :cond_98

    .line 165
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    :cond_98
    const/4 v8, 0x5

    new-array v4, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e6

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e8

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e7

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800ea

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e9

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    .line 183
    .local v4, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v8, 0x2

    new-array v1, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800ec

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800ed

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    .line 192
    .local v1, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v5, v0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 194
    .local v5, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 195
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, v0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 199
    .local v2, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 201
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z

    .line 206
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    .line 232
    .local v6, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v9, "0123456789"

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 241
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 270
    return-object v7

    .line 145
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v2           #deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v3           #layoutId:I
    .end local v4           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v5           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v6           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v7           #view:Landroid/view/View;
    :cond_187
    const v3, 0x7f04001d

    goto/16 :goto_7

    .line 162
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #layoutId:I
    .restart local v7       #view:Landroid/view/View;
    :cond_18c
    const/4 v8, 0x0

    goto/16 :goto_8c
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 346
    return-void
.end method

.method public onNext()V
    .registers 15

    .prologue
    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    .line 612
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 614
    .local v11, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 617
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 618
    .local v8, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 619
    .local v12, userName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 620
    .local v13, userPassword:Ljava/lang/String;
    iput-object v12, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 621
    invoke-virtual {v8, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, serverAddress:Ljava/lang/String;
    :try_start_4b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_5c} :catch_83

    move-result v10

    .line 631
    .local v10, serverPort:I
    :goto_5d
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 632
    .local v9, securityType:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v8, v0, v3, v10, v9}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 633
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 637
    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 639
    return-void

    .line 627
    .end local v9           #securityType:I
    .end local v10           #serverPort:I
    :catch_83
    move-exception v7

    .line 628
    .local v7, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v10

    .line 629
    .restart local v10       #serverPort:I
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-integer server port; using \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 323
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 277
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 278
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 279
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 281
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 314
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    .line 315
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    const-string v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 301
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 302
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 303
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 335
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 550
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 551
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 552
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 554
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 555
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .registers 8

    .prologue
    .line 563
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 565
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 566
    .local v2, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 573
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "smtp"

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, hostName:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v5, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v6, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 576
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 366
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    if-eqz v0, :cond_d

    .line 367
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 368
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 370
    :cond_d
    return-void
.end method
