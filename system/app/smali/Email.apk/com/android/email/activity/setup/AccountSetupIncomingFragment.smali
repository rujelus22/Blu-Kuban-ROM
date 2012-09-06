.class public Lcom/android/email/activity/setup/AccountSetupIncomingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupIncomingFragment.java"


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field private mConfigured:Z

.field private mDeletePolicyLabelView:Landroid/widget/TextView;

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
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    return-void
.end method

.method private configureEditor()V
    .registers 8

    .prologue
    const v6, 0x7f0800cf

    const v5, 0x7f0800ce

    const/16 v4, 0x8

    .line 286
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_d

    .line 308
    :goto_c
    return-void

    .line 287
    :cond_d
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 288
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 289
    .local v1, lastView:Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    .line 290
    const-string v2, "pop3"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 291
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 306
    :goto_3c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 307
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    goto :goto_c

    .line 296
    :cond_45
    const-string v2, "imap"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 297
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_3c

    .line 304
    :cond_72
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
    .line 388
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 389
    .local v1, securityType:I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    .line 390
    .local v2, useSsl:Z
    :goto_15
    if-eqz v2, :cond_2a

    const/16 v0, 0x3e1

    .line 391
    .local v0, port:I
    :goto_19
    const-string v3, "pop3"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 392
    if-eqz v2, :cond_2d

    const/16 v0, 0x3e3

    .line 394
    :cond_27
    :goto_27
    return v0

    .line 389
    .end local v0           #port:I
    .end local v2           #useSsl:Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_15

    .line 390
    .restart local v2       #useSsl:Z
    :cond_2a
    const/16 v0, 0x8f

    goto :goto_19

    .line 392
    .restart local v0       #port:I
    :cond_2d
    const/16 v0, 0x6e

    goto :goto_27
.end method

.method private loadSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 314
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-eqz v8, :cond_6

    .line 367
    :goto_5
    return-void

    .line 316
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 317
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 319
    .local v6, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, v6, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 320
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_19

    .line 321
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_19
    iget-object v3, v6, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 324
    .local v3, password:Ljava/lang/String;
    if-eqz v3, :cond_2b

    .line 325
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSettingsMode:Z

    if-eqz v8, :cond_2b

    .line 328
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 332
    :cond_2b
    const-string v8, "imap"

    iget-object v9, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 333
    iget-object v5, v6, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 334
    .local v5, prefix:Ljava/lang/String;
    if-eqz v5, :cond_48

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_48

    .line 335
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .end local v5           #prefix:Ljava/lang/String;
    :cond_48
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    .line 346
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 348
    iget v1, v6, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 349
    .local v1, flags:I
    and-int/lit8 v1, v1, -0x5

    .line 350
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 352
    iget-object v2, v6, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 353
    .local v2, hostname:Ljava/lang/String;
    if-eqz v2, :cond_6f

    .line 354
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_6f
    iget v4, v6, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 358
    .local v4, port:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_aa

    .line 359
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_7d
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 365
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 366
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    goto :goto_5

    .line 337
    .end local v1           #flags:I
    .end local v2           #hostname:Ljava/lang/String;
    .end local v4           #port:I
    :cond_85
    const-string v8, "pop3"

    iget-object v9, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 339
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown account type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 361
    .restart local v1       #flags:I
    .restart local v2       #hostname:Ljava/lang/String;
    .restart local v4       #port:I
    :cond_aa
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    goto :goto_7d
.end method

.method private updatePortFromSecurityType()V
    .registers 4

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 399
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method private validateFields()V
    .registers 5

    .prologue
    .line 373
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-nez v2, :cond_9

    .line 385
    :cond_8
    :goto_8
    return-void

    .line 374
    :cond_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v0, 0x1

    .line 378
    .local v0, enabled:Z
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->enableNextButton(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, userName:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_8

    .line 374
    .end local v0           #enabled:Z
    .end local v1           #userName:Ljava/lang/String;
    :cond_45
    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public haveSettingsChanged()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 478
    const/4 v0, 0x0

    .line 481
    .local v0, deletePolicyChanged:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 482
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 484
    .local v1, newDeletePolicy:I
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    if-eq v2, v1, :cond_2a

    move v0, v3

    .line 487
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

    .line 484
    goto :goto_20
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 197
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 89
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    if-eqz p1, :cond_25

    .line 94
    const-string v0, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 95
    const-string v0, "AccountSetupIncomingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 97
    :cond_25
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    sget-boolean v8, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v8, :cond_f

    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_f

    .line 103
    const-string v8, "Email"

    const-string v9, "AccountSetupIncomingFragment onCreateView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_f
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSettingsMode:Z

    if-eqz v8, :cond_187

    const v3, 0x7f040004

    .line 109
    .local v3, layoutId:I
    :goto_16
    const/4 v8, 0x0

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 110
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f0e0018

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 113
    const v8, 0x7f0e0012

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 114
    const v8, 0x7f0e0020

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 115
    const v8, 0x7f0e0019

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 116
    const v8, 0x7f0e0021

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 117
    const v8, 0x7f0e0022

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 118
    const v8, 0x7f0e0023

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 120
    const v8, 0x7f0e0024

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 121
    const v8, 0x7f0e0025

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 122
    const v8, 0x7f0e0026

    invoke-static {v7, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 125
    const/4 v8, 0x5

    new-array v4, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d2

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d4

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d3

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d6

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d5

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    .line 138
    .local v4, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v8, 0x2

    new-array v1, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d8

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800d9

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    .line 145
    .local v1, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v5, v0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 147
    .local v5, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 148
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, v0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    .local v2, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    .line 176
    .local v6, validationTextWatcher:Landroid/text/TextWatcher;
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSettingsMode:Z

    if-eqz v8, :cond_164

    .line 177
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    const v9, 0x7f08011c

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 180
    :cond_164
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v9, "0123456789"

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 189
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 191
    return-object v7

    .line 105
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v2           #deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v3           #layoutId:I
    .end local v4           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v5           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v6           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v7           #view:Landroid/view/View;
    :cond_187
    const v3, 0x7f04000d

    goto/16 :goto_16
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 253
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 254
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 257
    return-void
.end method

.method public onNext()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 443
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 444
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 448
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 449
    .local v9, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 450
    .local v12, userName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 451
    .local v13, userPassword:Ljava/lang/String;
    invoke-virtual {v9, v12, v13}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, serverAddress:Ljava/lang/String;
    :try_start_4f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_60} :catch_a1

    move-result v11

    .line 461
    .local v11, serverPort:I
    :goto_61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 462
    .local v10, securityType:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v9, v0, v3, v11, v10}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 463
    const-string v0, "imap"

    iget-object v2, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 464
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, prefix:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    move-object v0, v1

    :goto_95
    iput-object v0, v9, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 472
    .end local v8           #prefix:Ljava/lang/String;
    :goto_97
    iget-wide v1, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V

    .line 474
    return-void

    .line 457
    .end local v10           #securityType:I
    .end local v11           #serverPort:I
    :catch_a1
    move-exception v7

    .line 458
    .local v7, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v11

    .line 459
    .restart local v11       #serverPort:I
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-integer server port; using \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 465
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #prefix:Ljava/lang/String;
    .restart local v10       #securityType:I
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 467
    .end local v8           #prefix:Ljava/lang/String;
    :cond_d9
    iput-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    goto :goto_97
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 231
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 234
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 222
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    .line 226
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 262
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 208
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 212
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 213
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 214
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 242
    const-string v0, "Email"

    const-string v1, "AccountSetupIncomingFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 246
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 410
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 411
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 412
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 414
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 415
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .registers 8

    .prologue
    .line 422
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 423
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 424
    .local v2, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 429
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "smtp"

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, hostName:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v4, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget v5, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v6, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 432
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 276
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    if-eqz v0, :cond_d

    .line 277
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 278
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 280
    :cond_d
    return-void
.end method
