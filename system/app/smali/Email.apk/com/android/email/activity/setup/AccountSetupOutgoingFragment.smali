.class public Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

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

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method private getPortFromSecurityType()I
    .registers 4

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    .local v1, securityType:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_17

    const/16 v0, 0x1d1

    .line 317
    .local v0, port:I
    :goto_16
    return v0

    .line 316
    .end local v0           #port:I
    :cond_17
    const/16 v0, 0x24b

    goto :goto_16
.end method

.method private loadSettings()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 250
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-eqz v6, :cond_6

    .line 284
    :goto_5
    return-void

    .line 252
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 253
    .local v4, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2d

    .line 254
    iget-object v5, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 255
    .local v5, username:Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 256
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    :cond_24
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 261
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 262
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .end local v2           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    :cond_2d
    iget v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v6, -0x5

    .line 267
    .local v0, flags:I
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 269
    iget-object v1, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 270
    .local v1, hostname:Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 271
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_43
    iget v3, v4, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 275
    .local v3, port:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_59

    .line 276
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_51
    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 282
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 283
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    goto :goto_5

    .line 278
    :cond_59
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    goto :goto_51
.end method

.method private updatePortFromSecurityType()V
    .registers 4

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 322
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method private validateFields()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-nez v3, :cond_7

    .line 301
    :goto_6
    return-void

    .line 291
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move v0, v1

    .line 294
    .local v0, enabled:Z
    :goto_18
    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 295
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_40

    move v0, v1

    .line 298
    :cond_33
    :goto_33
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->enableNextButton(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_6

    .end local v0           #enabled:Z
    :cond_3e
    move v0, v2

    .line 291
    goto :goto_18

    .restart local v0       #enabled:Z
    :cond_40
    move v0, v2

    .line 295
    goto :goto_33
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 164
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 308
    if-eqz p2, :cond_1b

    const/4 v0, 0x0

    .line 309
    .local v0, visibility:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e003d

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 310
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e003e

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 311
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 312
    return-void

    .line 308
    .end local v0           #visibility:I
    :cond_1b
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 78
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_1d

    .line 83
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 85
    :cond_1d
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mBaseScheme:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 91
    sget-boolean v6, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v6, :cond_12

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_12

    .line 92
    const-string v6, "Email"

    const-string v7, "AccountSetupOutgoingFragment onCreateView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_12
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSettingsMode:Z

    if-eqz v6, :cond_110

    const v1, 0x7f040005

    .line 98
    .local v1, layoutId:I
    :goto_19
    invoke-virtual {p1, v1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0e0018

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 102
    const v6, 0x7f0e0012

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 103
    const v6, 0x7f0e0019

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    .line 104
    const v6, 0x7f0e0021

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    .line 105
    const v6, 0x7f0e003c

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 106
    const v6, 0x7f0e0022

    invoke-static {v5, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 107
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    const/4 v6, 0x5

    new-array v2, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800d2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v9

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800d4

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v10

    new-instance v6, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0800d3

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v2, v11

    const/4 v6, 0x3

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800d6

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800d5

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 123
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v3, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 125
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    .line 147
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 158
    return-object v5

    .line 94
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #layoutId:I
    .end local v2           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v4           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v5           #view:Landroid/view/View;
    :cond_110
    const v1, 0x7f040013

    goto/16 :goto_19
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 220
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onNext()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 349
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 350
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 352
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 353
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, userName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, userPassword:Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v6           #userName:Ljava/lang/String;
    .end local v7           #userPassword:Ljava/lang/String;
    :goto_2e
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, serverAddress:Ljava/lang/String;
    :try_start_3c
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_4d} :catch_70

    move-result v5

    .line 368
    .local v5, serverPort:I
    :goto_4e
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 369
    .local v2, securityType:I
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v8, v4, v5, v2}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 370
    iput-object v11, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 372
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v9, 0x2

    invoke-interface {v8, v9, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 373
    return-void

    .line 357
    .end local v2           #securityType:I
    .end local v4           #serverAddress:Ljava/lang/String;
    .end local v5           #serverPort:I
    :cond_6c
    invoke-virtual {v3, v11, v11}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 364
    .restart local v4       #serverAddress:Ljava/lang/String;
    :catch_70
    move-exception v1

    .line 365
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v5

    .line 366
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

    goto :goto_4e
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 197
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 200
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 188
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 191
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 192
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 228
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_f
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 175
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 179
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 180
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 208
    const-string v0, "Email"

    const-string v1, "AccountSetupOutgoingFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_f
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 212
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .registers 5

    .prologue
    .line 331
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 332
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 334
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .registers 1

    .prologue
    .line 342
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 241
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    if-eqz v0, :cond_a

    .line 242
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 244
    :cond_a
    return-void
.end method
