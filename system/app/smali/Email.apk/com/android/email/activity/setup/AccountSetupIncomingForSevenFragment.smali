.class public Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.super Landroid/app/Fragment;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$4;,
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;
    }
.end annotation


# instance fields
.field private bFirstSelected:Z

.field private connectionTimeOut:Ljava/lang/Runnable;

.field protected handler:Landroid/os/Handler;

.field public mCancelButton:Landroid/widget/Button;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPopupReport:Landroid/app/AlertDialog;

.field private mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

.field public mProceedButton:Landroid/widget/Button;

.field public mProceedButtonPressed:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSevenAccountKey:I

.field private mShowingPopupDialog:Z

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->bFirstSelected:Z

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    .line 378
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showPopUpForConnectionFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private final showPopUpForConnectionFail()V
    .registers 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 390
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080456

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    return-void
.end method

.method private validateFields()V
    .registers 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    .line 338
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v1, :cond_f

    .line 339
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    :cond_f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 344
    return-void
.end method


# virtual methods
.method protected final dismissProgressDialog()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 409
    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 134
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    .line 137
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_e

    .line 138
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 140
    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    .line 372
    :cond_8
    :goto_8
    return-void

    .line 354
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 356
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 357
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 358
    :cond_30
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_8

    .line 361
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_38
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 363
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 364
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 365
    :cond_5f
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    if-nez v1, :cond_8

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    .line 369
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->onNext()V

    goto :goto_8

    .line 352
    :sswitch_data_6a
    .sparse-switch
        0x7f10001e -> :sswitch_38
        0x7f100023 -> :sswitch_9
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0c0177

    .line 311
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 315
    .local v0, cancelButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .local v1, doneButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_22

    .line 319
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    :cond_22
    if-eqz v1, :cond_2e

    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    :cond_2e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    if-eqz p1, :cond_e

    .line 155
    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    .line 157
    :cond_e
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 164
    const v1, 0x7f04000a

    .line 166
    .local v1, layoutId:I
    invoke-virtual {p1, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 168
    .local v5, view:Landroid/view/View;
    const v6, 0x7f100021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    .line 169
    const v6, 0x7f100022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    .line 170
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 171
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    const v7, 0x2000006

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 177
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    .line 189
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    const v6, 0x7f100023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mCancelButton:Landroid/widget/Button;

    .line 194
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v6, 0x7f10001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    .line 197
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    :try_start_65
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 203
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 206
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 208
    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 209
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_a5

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 210
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 214
    :cond_a5
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v6, v6

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_aa} :catch_ae

    .line 222
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    .line 224
    return-object v5

    .line 215
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #password:Ljava/lang/String;
    :catch_ae
    move-exception v3

    .line 219
    .local v3, use:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 295
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 297
    return-void
.end method

.method public onNext()V
    .registers 6

    .prologue
    .line 425
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 427
    .local v1, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v2

    .line 429
    .local v2, zHandler:Lcom/digc/seven/Z7MailHandler;
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    .line 432
    :try_start_13
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 433
    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/digc/seven/Z7MailHandler;->relogin(ILjava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showProgressDialog()V

    .line 435
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->startConnectionTimeOut()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2d} :catch_2e

    .line 443
    :goto_2d
    return-void

    .line 436
    :catch_2e
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/RemoteException;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2d
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 265
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    .line 257
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    .line 245
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 276
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    .line 277
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    .line 279
    return-void
.end method

.method protected final showProgressDialog()V
    .registers 4

    .prologue
    .line 395
    const v1, 0x7f0800d4

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_27

    .line 397
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 398
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 400
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    :cond_27
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 403
    return-void
.end method

.method protected final startConnectionTimeOut()V
    .registers 5

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    return-void
.end method

.method protected final stopConnectionTimeOut()V
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method
