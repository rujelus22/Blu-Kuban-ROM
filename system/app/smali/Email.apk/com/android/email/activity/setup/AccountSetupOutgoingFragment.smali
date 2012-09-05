.class public Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static SMTP_PORT_NORMAL:I


# instance fields
.field private bFirstSelected:Z

.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginSettingsView:Landroid/view/View;

.field private mRequireLoginSettingsView2:Landroid/view/View;

.field private mRequireLoginString:Landroid/widget/TextView;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/16 v0, 0x24b

    sput v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method private getPortFromSecurityType()I
    .registers 5

    .prologue
    .line 466
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, salesCode:Ljava/lang/String;
    if-eqz v1, :cond_6c

    const-string v3, "VNZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "TPH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "ORA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "FTM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "AMN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "IDE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "ORG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "ONE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "ORO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "ORS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "OPT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "MST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 475
    :cond_68
    const/16 v3, 0x19

    sput v3, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    .line 477
    :cond_6c
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 478
    .local v2, securityType:I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_83

    const/16 v0, 0x1d1

    .line 479
    .local v0, port:I
    :goto_82
    return v0

    .line 478
    .end local v0           #port:I
    :cond_83
    sget v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    goto :goto_82
.end method

.method private loadSettings()V
    .registers 14

    .prologue
    const/4 v11, 0x1

    .line 343
    iget-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-eqz v9, :cond_6

    .line 411
    :goto_5
    return-void

    .line 346
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 347
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1b

    .line 348
    const-string v9, "Email"

    const-string v10, "AccountSetupOutgoingFragment Account is null "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_5

    .line 353
    :cond_1b
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 354
    .local v6, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_5a

    .line 355
    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 356
    .local v8, username:Ljava/lang/String;
    if-eqz v8, :cond_48

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_48

    .line 357
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 359
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 362
    :cond_48
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 363
    .local v3, password:Ljava/lang/String;
    if-eqz v3, :cond_5a

    .line 364
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 369
    .end local v3           #password:Ljava/lang/String;
    .end local v8           #username:Ljava/lang/String;
    :cond_5a
    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v9, -0x5

    .line 370
    .local v1, flags:I
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 372
    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 373
    .local v2, hostname:Ljava/lang/String;
    if-eqz v2, :cond_7f

    .line 374
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 378
    :cond_7f
    iget v4, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 379
    .local v4, port:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_10c

    .line 380
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 387
    :goto_9c
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_110

    .line 388
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v10, 0x2000006

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 394
    :goto_ac
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 395
    iput-boolean v11, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 398
    const-string v7, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    .line 399
    .local v7, strSalesListOfOrange:Ljava/lang/String;
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, salesCode:Ljava/lang/CharSequence;
    if-eqz v5, :cond_107

    const/4 v9, 0x3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_107

    const-string v9, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_107

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_107

    .line 403
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 405
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 406
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 410
    :cond_107
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    goto/16 :goto_5

    .line 383
    .end local v5           #salesCode:Ljava/lang/CharSequence;
    .end local v7           #strSalesListOfOrange:Ljava/lang/String;
    :cond_10c
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    goto :goto_9c

    .line 390
    :cond_110
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v10, 0x2000005

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_ac
.end method

.method private updatePortFromSecurityType()V
    .registers 4

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 484
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 486
    return-void
.end method

.method private validateFields()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 418
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-nez v3, :cond_7

    .line 439
    :goto_6
    return-void

    .line 420
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_59

    move v0, v1

    .line 423
    .local v0, enabled:Z
    :goto_18
    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 424
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move v0, v1

    .line 428
    :cond_33
    :goto_33
    if-eqz v0, :cond_4e

    .line 429
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 430
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f08031b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 432
    const/4 v0, 0x0

    .line 435
    :cond_4e
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->enableNextButton(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_6

    .end local v0           #enabled:Z
    :cond_59
    move v0, v2

    .line 420
    goto :goto_18

    .restart local v0       #enabled:Z
    :cond_5b
    move v0, v2

    .line 424
    goto :goto_33
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 259
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 446
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    if-eqz p2, :cond_3d

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 448
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz p2, :cond_3f

    :goto_13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_16
    if-nez p2, :cond_41

    .line 451
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v2, 0x2000006

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 456
    :goto_20
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 459
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 462
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_39
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 463
    return-void

    :cond_3d
    move v1, v3

    .line 446
    goto :goto_8

    :cond_3f
    move v2, v3

    .line 448
    goto :goto_13

    .line 454
    :cond_41
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v2, 0x2000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_20
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 553
    :goto_a
    return-void

    .line 546
    :pswitch_b
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 547
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a

    .line 549
    :cond_1a
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a

    .line 544
    nop

    :pswitch_data_22
    .packed-switch 0x7f1000a6
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    if-eqz p1, :cond_e

    .line 122
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 124
    :cond_e
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f1000a6

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 134
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v6, :cond_131

    const v1, 0x7f04000d

    .line 136
    .local v1, layoutId:I
    :goto_d
    invoke-virtual {p1, v1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f100021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 140
    const v6, 0x7f100022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 141
    const v6, 0x7f100055

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    .line 142
    const v6, 0x7f100062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    .line 143
    const v6, 0x7f1000a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 144
    const v6, 0x7f1000a7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    .line 145
    const v6, 0x7f1000ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    .line 146
    const v6, 0x7f100060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 147
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginString:Landroid/widget/TextView;

    .line 158
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginString:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    const/4 v6, 0x5

    new-array v2, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800e6

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v9

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800e8

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v10

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800e7

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v11

    const/4 v6, 0x3

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800ea

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e9

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 176
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v3, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 178
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 179
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    .line 184
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    .line 209
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 218
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 240
    return-object v5

    .line 134
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #layoutId:I
    .end local v2           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v4           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v5           #view:Landroid/view/View;
    :cond_131
    const v1, 0x7f040023

    goto/16 :goto_d
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 315
    return-void
.end method

.method public onNext()V
    .registers 12

    .prologue
    .line 561
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 564
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_15

    .line 565
    const-string v8, "Email"

    const-string v9, "AccountSetupOutgoingFragment onNext Account is null "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    .line 595
    :goto_14
    return-void

    .line 570
    :cond_15
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 572
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v6, 0x0

    .line 573
    .local v6, userName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 575
    .local v7, userPassword:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 576
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 577
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 580
    :cond_3d
    invoke-virtual {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, serverAddress:Ljava/lang/String;
    :try_start_4e
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5f} :catch_7f

    move-result v5

    .line 590
    .local v5, serverPort:I
    :goto_60
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 591
    .local v2, securityType:I
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v8, v4, v5, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 592
    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 594
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v9, 0x2

    invoke-interface {v8, v9, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_14

    .line 586
    .end local v2           #securityType:I
    .end local v5           #serverPort:I
    :catch_7f
    move-exception v1

    .line 587
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v5

    .line 588
    .restart local v5       #serverPort:I
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-integer server port; using \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 292
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 247
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 248
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 249
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 251
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 283
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 284
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 271
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 272
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 304
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 602
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    move v1, v2

    .line 637
    :cond_a
    :goto_a
    return v1

    .line 604
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 607
    :pswitch_11
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 610
    :pswitch_17
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 613
    :pswitch_1d
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 614
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 615
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 618
    :goto_2f
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 621
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_64

    .line 622
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 628
    :goto_44
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 629
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 631
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_a

    .line 617
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5e
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2f

    .line 625
    :cond_64
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_44

    .line 602
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1d
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 494
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 496
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_15

    .line 497
    const-string v1, "Email"

    const-string v2, "AccountSetupOutgoingFragment 2 Account is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 505
    :goto_14
    return-void

    .line 502
    :cond_15
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 504
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    goto :goto_14
.end method

.method public saveSettingsAfterSetup()V
    .registers 1

    .prologue
    .line 513
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 334
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    if-eqz v0, :cond_a

    .line 335
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 337
    :cond_a
    return-void
.end method
