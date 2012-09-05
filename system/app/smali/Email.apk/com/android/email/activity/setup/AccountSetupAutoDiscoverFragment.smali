.class public Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupAutoDiscoverFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCacheLoginCredential:Ljava/lang/String;

.field public mDomainText:Landroid/widget/EditText;

.field public mEmailText:Landroid/widget/EditText;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field mLoaded:Z

.field public mPasswordText:Landroid/widget/EditText;

.field private mStarted:Z

.field private mTrustedCertificates:Landroid/widget/CheckBox;

.field private mTrustedCertificatesString:Landroid/widget/TextView;

.field public mUserNameText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const-class v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private setSmartValues()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 242
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 243
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v4, :cond_c

    .line 267
    :goto_b
    return-void

    .line 245
    :cond_c
    new-instance v1, Ljava/net/URI;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1d} :catch_5e

    .line 251
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 252
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, userInfoParts:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, userName:Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 256
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    :cond_41
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    array-length v4, v2

    if-le v4, v7, :cond_54

    .line 262
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .end local v2           #userInfoParts:[Ljava/lang/String;
    .end local v3           #userName:Ljava/lang/String;
    :cond_54
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 246
    .end local v1           #uri:Ljava/net/URI;
    :catch_5e
    move-exception v0

    .line 247
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v4, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->TAG:Ljava/lang/String;

    const-string v5, "Failed to restore Account store URI"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .registers 4
    .parameter "usernameView"

    .prologue
    .line 386
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

    .line 397
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mLoaded:Z

    if-nez v2, :cond_6

    .line 416
    :goto_5
    return v0

    .line 399
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v0, 0x1

    .line 404
    .local v0, enabled:Z
    :cond_35
    if-eqz v0, :cond_3a

    .line 406
    :try_start_37
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getUri()Ljava/net/URI;
    :try_end_3a
    .catch Ljava/net/URISyntaxException; {:try_start_37 .. :try_end_3a} :catch_45

    .line 411
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->enableNextButton(Z)V

    .line 414
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_5

    .line 407
    :catch_45
    move-exception v1

    .line 408
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_3a
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

    .line 495
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, userName:Ljava/lang/String;
    const-string v1, "\\"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 502
    :cond_1c
    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, email:Ljava/lang/String;
    const/16 v1, 0x40

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 508
    .local v8, amp:I
    if-gez v8, :cond_57

    .line 509
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-direct {v1, v6, v6}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_57
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 514
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+trustallcerts"

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 8
    .parameter "account"

    .prologue
    .line 335
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mLoaded:Z

    if-eqz v3, :cond_9

    .line 336
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->validateFields()Z

    move-result v3

    .line 382
    :goto_8
    return v3

    .line 338
    :cond_9
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 340
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 341
    .local v2, userName:Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 350
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_14
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 354
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_1f
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 358
    .local v1, protocol:Ljava/lang/String;
    if-eqz v1, :cond_2b

    const-string v3, "eas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 359
    :cond_2b
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_4a
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 376
    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getUri()Ljava/net/URI;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedUri:Ljava/net/URI;
    :try_end_54
    .catch Ljava/net/URISyntaxException; {:try_start_4e .. :try_end_54} :catch_5c

    .line 381
    :goto_54
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mLoaded:Z

    .line 382
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->validateFields()Z

    move-result v3

    goto :goto_8

    .line 377
    :catch_5c
    move-exception v3

    goto :goto_54
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    .line 525
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupAutoDiscover;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 526
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_16

    .line 131
    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 132
    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mLoaded:Z

    .line 135
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x200

    .line 144
    const v1, 0x7f040012

    .line 146
    .local v1, layoutId:I
    invoke-virtual {p1, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 147
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, context:Landroid/content/Context;
    new-instance v5, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v5}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 150
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "AutoDiscoverSetupExchange:onCreate"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const v5, 0x7f100036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    .line 154
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, salesCode:Ljava/lang/String;
    const-string v5, "CEL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 162
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    :cond_45
    const v5, 0x7f100037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    .line 168
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;)V

    .line 182
    .local v3, validationTextWatcher:Landroid/text/TextWatcher;
    const v5, 0x7f10002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    .line 183
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 184
    const v5, 0x7f100022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    .line 185
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 187
    const v5, 0x7f100031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mDomainText:Landroid/widget/EditText;

    .line 188
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mDomainText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 189
    const v5, 0x7f100033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    .line 190
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 193
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->setSmartValues()V

    .line 201
    return-object v4
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 304
    return-void
.end method

.method public onNext()V
    .registers 18

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 535
    .local v12, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 536
    .local v10, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 540
    .local v16, userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v13

    .line 544
    .local v13, trustAllCert:Z
    const/4 v14, 0x0

    .line 549
    .local v14, uriString:Ljava/lang/String;
    if-eqz v13, :cond_56

    :try_start_4b
    const-string v2, "eas+ssl+trustallcerts"

    .line 552
    .local v2, scheme:Ljava/lang/String;
    :goto_4d
    const/16 v5, 0x40

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 553
    .local v9, amp:I
    if-gez v9, :cond_59

    .line 581
    .end local v2           #scheme:Ljava/lang/String;
    .end local v9           #amp:I
    :goto_55
    return-void

    .line 549
    :cond_56
    const-string v2, "eas+ssl+"

    goto :goto_4d

    .line 555
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v9       #amp:I
    :cond_59
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, host:Ljava/lang/String;
    const-string v5, "\\"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 558
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 561
    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, userInfo:Ljava/lang/String;
    if-eqz v10, :cond_a2

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 567
    :cond_a2
    new-instance v1, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v1, uriNew:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_ae
    .catch Ljava/net/URISyntaxException; {:try_start_4b .. :try_end_ae} :catch_da

    move-result-object v14

    .line 575
    invoke-static {v10}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AccountSetupAutoDiscover;

    invoke-virtual {v6, v5, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-interface {v5, v6, v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto/16 :goto_55

    .line 569
    .end local v1           #uriNew:Ljava/net/URI;
    .end local v2           #scheme:Ljava/lang/String;
    .end local v3           #userInfo:Ljava/lang/String;
    .end local v4           #host:Ljava/lang/String;
    .end local v9           #amp:I
    :catch_da
    move-exception v15

    .line 570
    .local v15, use:Ljava/net/URISyntaxException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080565

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_55
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 284
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 208
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 209
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 210
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 212
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 275
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->validateFields()Z

    .line 276
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mStarted:Z

    .line 232
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 233
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mStarted:Z

    .line 296
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    move v0, v1

    .line 608
    :goto_a
    return v0

    .line 589
    :pswitch_b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 592
    :pswitch_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 595
    :pswitch_17
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_a

    .line 598
    :pswitch_1d
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 599
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 600
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 601
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 604
    :goto_34
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->validateFields()Z

    goto :goto_a

    .line 603
    :cond_38
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_34

    .line 587
    :pswitch_data_3e
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
    .line 441
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 442
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 443
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 454
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->hostChanged(J)V

    .line 459
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 460
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .registers 1

    .prologue
    .line 468
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 324
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->mStarted:Z

    if-eqz v0, :cond_e

    .line 325
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAutoDiscoverFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 327
    :cond_e
    return-void
.end method
